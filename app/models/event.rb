class Event < ActiveRecord::Base
    has_many :attendees
    belongs_to :organizer
end