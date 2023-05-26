class ClientsController < ApplicationController
    set :default_content_type, 'application/json'

    get '/clients' do 
        clients = Client.all
        client_to_json
    end

    get 'clients/:id' do
        find_client
        client_to_json
    end

    post '/clients' do
        @client = Client.create(params)
        client_to_json
    end

    patch '/clients/:id' do
        find_client
        @client.update(params)
        client_to_json
    end

    delete '/clients/:id' do
        find_client
        @client.destroy
        @client.to_json
    end

    private
        def find_client
            @client = Client.find_by_id(params["id"])
        end

        def client_to_json
            @client.to_json(include: :location)
        end
    end
end