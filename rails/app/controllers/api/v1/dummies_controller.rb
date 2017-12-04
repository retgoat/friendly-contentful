class Api::V1::DummiesController < ApplicationController
  def index
    @dummies = Dummy.all
    render json: { success: true, items: @dummies }, status: :ok
  end
end
