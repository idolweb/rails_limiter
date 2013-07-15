require 'active_support/core_ext/object/blank'

module RailsLimiter::RailsLimiter
  def limit(key, max, expire_in, url)
    valid, ttl  = process_limit(key, max, expire_in)
    
    unless valid
      flash[:error] = "You exceeded your requests limit of #{max}. Try again in #{ttl}s"
      redirect_to url
      return
    end
  end

  private
  def get_connexion
    @connexion  ||= RailsLimiter::Init.configuration.connexion
  end
  
  def process_limit(key, max, expire_in = 1.day.seconds.to_i)
    get_connexion
    
    val = @connexion.get(key)
    
    if val.blank?
      # si connexion ne possède pas de valeur pour la clé, on la créée
      @connexion.set(key, 1)
      @connexion.expire(key, expire_in)
      
      [true, 0]
    elsif val.to_i < max
      # si connexion possède la clé, on incrémente
      @connexion.incr(key)
      [true, 0]
    else
      # sauf si on a atteint la limite
      [false, @connexion.ttl(key)]
    end
  end
end