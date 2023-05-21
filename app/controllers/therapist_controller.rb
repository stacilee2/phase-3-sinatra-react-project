class TherapistController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get "/therapist" do
        therapists = Therapist.all
        therapists.to_json
    end

end