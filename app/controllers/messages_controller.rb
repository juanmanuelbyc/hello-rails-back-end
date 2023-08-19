class MessagesController < ApplicationController
    def index
      random_greeting = Greeting.order('RANDOM()').first
      render json: { greeting: random_greeting&.message }
    end
  end
  