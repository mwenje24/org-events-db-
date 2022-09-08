# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_08_045303) do
  create_table "attendees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "location"
    t.string "time"
    t.integer "event_owner_id"
    t.string "description"
    t.integer "fee"
    t.string "date"
    t.string "image"
  end

  create_table "organizers", force: :cascade do |t|
    t.string "organizer_name"
    t.string "organizer_email"
    t.string "password"
  end

end
