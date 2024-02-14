class Api::V1::GreetingsController < ApplicationController
  def random_greeting
    @greetings = Greeting.all
    random_number = rand(@greetings.size)
    @random_greeting = @greetings[random_number]

    render json: @random_greeting
  end
end
