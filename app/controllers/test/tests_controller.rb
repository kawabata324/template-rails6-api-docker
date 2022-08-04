class Test::TestsController < ApplicationController
  def index
    render json: {test: 'test', status: 200}
  end
end
