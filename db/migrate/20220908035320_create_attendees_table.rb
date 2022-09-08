class CreateAttendeesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :attendees do |t|
      t.string(:name)
      t.string(:email)
      t.string(:event_id)
    end
  end
end
