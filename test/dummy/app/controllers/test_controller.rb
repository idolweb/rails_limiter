class TestController < ApplicationController
  before_filter :only => :index do
    limit(
      "extract",
      2,
      60,
      redirect_test_index_url
    )
  end
end
