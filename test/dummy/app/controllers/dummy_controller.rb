class DummyController < ApplicationController
  def new
    @dummy_model = db[:dummy_model] || DummyModel.new
    @dummy       = db[:dummy]
  end

  def create
    db[:dummy_model] = DummyModel.new(params[:dummy_model])
    db[:dummy] = params[:dummy] || db[:dummy]
    redirect_to "/"
  end

  private

  def db
    @@db ||= {}
  end
end
