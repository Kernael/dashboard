class UnitsController < ApplicationController
  before_action :set_unit, only: %i(show)

  def index
    @units = Unit.all
  end

  def show
  end

  private

  def set_unit
    @unit = Unit.find(params[:id])
  end
end
