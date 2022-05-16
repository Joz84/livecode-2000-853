require "open-uri"

class FlatsController < ApplicationController
    URL="https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    before_action :set_flats, only: [:show, :index]

    def index
    end

    def show
        id = params[:id].to_i
        @flat = @flats.find do |flat|
            flat["id"] == id
        end
    end

    private

    def set_flats
        @flats = JSON.parse(URI.open(URL).read)
    end
end

