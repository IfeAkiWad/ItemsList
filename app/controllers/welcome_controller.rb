class WelcomeController < ApplicationController
  def index
    @welcome_message = Welcome.all
  end
end
