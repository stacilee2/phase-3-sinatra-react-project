class ClientController < Sinatra::Base
    set :default_content_type, 'application/json'

    get "/client" do 
        clients = Client.all
        clients.to_json
    end

    post '/client' do
        new_client = Client.create(params)
        new_client.to_json
    end

    patch '/client/:id' do
        patch_client = Client.find(params[:id])
        patch_client.update(params)
        patch_client.to_json
    end

    delete '/client/:id' do
        client = Client.find(params[:id])
        client.destroy
        client.to_json
    end

end