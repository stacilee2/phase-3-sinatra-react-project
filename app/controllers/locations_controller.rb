class LocationsController < ApplicationController
    set :default_content_type, 'application/json'

    get '/locations' do
        locations = Location.all
        locations.to_json(include: :clients)
    end

    post '/locations/:location_id/clients' do
        location = Location.find_by_id(params["id"])
        client = Client.create(params)
        client.to_json
    end

    post '/locations' do
        location = Location.create(params)
        location.to_json(include: clients)
    end

    delete '/locations/:id' do
        location = Location.find_by_id(params["id"])
        location.destroy
    end

end

