class CreateEventsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string(:title)
      t.string(:category)
      t.string(:location)
      t.string(:time)
      t.integer(:event_owner_id)
      t.string(:description)
      t.integer(:fee)
    end
  end
end
