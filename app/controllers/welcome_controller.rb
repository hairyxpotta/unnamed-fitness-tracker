# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    render json: { versions: ['v1'] }
  end
end
