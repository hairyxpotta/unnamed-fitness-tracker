# frozen_string_literal: true

RSpec.describe 'Uploading Workouts', type: :request do
  it 'saves the workout data to the database' do
    post '/workouts', params: { data: { benchpress: 123 } }
    expect(Workout.last.data).to eq('benchpress' => '123')
  end
end
