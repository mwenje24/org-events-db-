class CreateOrganizersTable < ActiveRecord::Migration[7.0]
  def change
    create_table :organizers do |t|
      t.string(:organizer_name)
      t.string(:organizer_email)
      t.string(:password)
    end
  end
end
