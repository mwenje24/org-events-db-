class AttendeesController < Sinatra::Base
    get '/attendees' do
        attendees = Attendee.all.order(:name)
        attendees.to_json
    end

    post '/attendees' do
        attendee = Attendee.create(
          name: params[:name],
          email: params[:email],
          event_id: params[:event_id]
        )
        attendee.to_json
    end

    patch '/attendees/:id' do
        attendee = Attendee.find(params[:id])
        attendee.update(
            name: params[:name],
            email: params[:email],
            event_id: params[:event_id]
        )
        attendee.to_json
    end

    delete '/attendees/:id' do
        attendee = attendee.find(params[:id])
        attendee.destroy
        attendee.to_json
    end

end
