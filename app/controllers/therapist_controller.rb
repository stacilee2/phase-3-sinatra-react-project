class TherapistController < Sinatra::Base

    get "/therapist" do
        therapists = Therapist.all
        therapists.to_json
    end
    
end