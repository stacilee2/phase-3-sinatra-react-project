class ClientsController < ApplicationController
    set :default_content_type, 'application/json'

    get '/clients' do 
        clients = Client.all
        clients.to_json(include: :location)
    end

    get '/clients/:id' do
        client = Client.find(params[:id])
        client.to_json
    end

    post '/locations/:location_id/clients' do
        client = Client.create(
            name: params[:name],
            age: params[:age],
            eligibility: params[:eligibility],
            minutes: params[:minutes],
            location_id: params[:location_id]
        )
        client.to_json
    end

    patch '/clients/:id' do
        client = Client.find(params[:id])
        client.update(params)
        client.to_json
    end

    delete '/clients/:id' do
        client = Client.find_by_id(params["id"])
        client.destroy
        client.to_json
    end

end

