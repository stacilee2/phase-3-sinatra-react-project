class LocationsController < ApplicationController
    set :default_content_type, 'application/json'

    get '/locations' do
        locations = Location.all
        location_to_json
    end

    get '/locations/:id' do
        find_location
        location_to_json
    end

    post '/locations' do
        @location = Location.create(params)
        location_to_json
    end

    patch '/locations/:id' do
        find_location
        location_to_json
    end

    delete '/locations/:id' do
        find_location
        @location.destroy
        @location.to_json
    end

    private
        def find_location
            @location = Location.find_by_id(params["id"])
        end

        def location_to_json
            @location.to_json(include: :clients)
        end
    end

end