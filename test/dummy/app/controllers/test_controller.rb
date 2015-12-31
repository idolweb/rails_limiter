class TestController < ApplicationController
  before_action :only => :index do
    limit(
      "extract",
      2,
      60,
      redirect_test_index_url
    )
  end
end
