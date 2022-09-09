class EventController < Sinatra::Base
    get '/events' do
        events = Event.all.order(:date)
        events.to_json
    end
end
