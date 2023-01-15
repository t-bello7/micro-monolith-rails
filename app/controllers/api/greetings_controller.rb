module Api
  class GreetingsController < ApplicationController
    def index
      @greeting = Greeting.all.sample

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @greeting }
      end
    end
  end
end
