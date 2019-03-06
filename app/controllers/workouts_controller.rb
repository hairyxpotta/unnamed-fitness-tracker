# frozen_string_literal: true

class WorkoutsController < ApplicationController
  def create
    Workout.create(
      data: params[:data]
    )
  end
end
