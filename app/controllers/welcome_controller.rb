class WelcomeController < ApplicationController

resources :articles do
  resources :comments
end

  def index
  end
end
