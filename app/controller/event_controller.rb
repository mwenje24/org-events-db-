class EventController < Sinatra::Base

    set :default_content_type, 'application/json'

    get '/events' do
        events = Event.all.order(:date)
        events.to_json
    end

    post '/events' do
        # byebug
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


    patch '/events/:id' do
        event = Event.find(params[:id])
        event.update(
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

    delete '/events/:id' do
        events = Event.find(params[:id])
        events.destroy
        events.to_json
    end
end
