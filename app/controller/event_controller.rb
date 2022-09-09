class EventController < Sinatra::Base
    get '/events' do
        events = Event.all.order(:date)
        events.to_json
    end

    post '/events' do
        event = Event.create(
          title: params[:title],
          category: params[:category],
          location: params[:location],
          time: params[:time],
          event_owner_id: params[:event_owner_id],
          description: params[:description],
          fee: params[:fee],
          date: params[:date],
          image: params[:image]
        )
        event.to_json
    end
end
