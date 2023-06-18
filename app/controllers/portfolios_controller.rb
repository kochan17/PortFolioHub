class PortfoliosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @portfolios = Portfolio.all
  end
end
