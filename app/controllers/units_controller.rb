class UnitsController < ApplicationController
  before_action :set_unit, only: %i(show)
  http_basic_authenticate_with name: Rails.application.secrets.user,
    password: Rails.application.secrets.password, only: :show, if: :need_auth?

  def index
    @units = Unit.all
  end

  def show
  end

  private

  def set_unit
    @unit = Unit.find(params[:id])
  end

  def need_auth?
    @unit.protected?
  end
end
