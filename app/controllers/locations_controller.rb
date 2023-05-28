class LocationsController < ApplicationController
    set :default_content_type, 'application/json'

    get '/locations' do
        locations = Location.all
        locations.to_json(include: :clients)
    end

    get '/locations/:id' do
        @location = Location.find_by_id(params["id"])
        @location.to_json(include: :clients)
    end

    post '/locations/:location_id/clients' do
        @location = Location.find_by_id(params["id"])
        @client = Client.create(params)
        @client.to_json
    end

    patch '/locations/:id' do
        @location = Location.find_by_id(params["id"])
        location_to_json
    end

    delete '/locations/:location_id/clients' do
        @location = Location.find_by_id(params["id"])
        @client.destroy
        @client.to_json
    end

end