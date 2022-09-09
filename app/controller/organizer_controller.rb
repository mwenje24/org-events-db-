class OrganizerController < Sinatra::Base

    set :default_content_type, 'application/json'

    get '/organizers' do
        organizers = Organizer.all.order(:organizer_name)
        organizers.to_json
    end


    # get '/organizers/:id' do
    #     # look up the game in the database using its ID
    #     # send a JSON-formatted response of the game data
    # end
end
