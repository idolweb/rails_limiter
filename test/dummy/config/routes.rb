Dummy::Application.routes.draw do
  resources :test do
    collection do
      get :redirect
    end
  end
end
