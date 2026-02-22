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

ActiveRecord::Schema[7.0].define(version: 2026_02_22_222044) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "postal_code"
    t.string "city"
    t.string "state"
    t.string "coordinates"
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_addresses_on_country_id"
  end

  create_table "booking_participants", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.bigint "participant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_participants_on_booking_id"
    t.index ["participant_id"], name: "index_booking_participants_on_participant_id"
  end

  create_table "booking_posts", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_posts_on_booking_id"
    t.index ["post_id"], name: "index_booking_posts_on_post_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "edition_id", null: false
    t.bigint "location_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "contact_first_name"
    t.string "contact_last_name"
    t.string "contact_phone_code"
    t.string "contact_phone_number"
    t.integer "price_adult"
    t.integer "price_child"
    t.integer "price_total"
    t.string "external_url"
    t.text "notes"
    t.boolean "is_visible"
    t.boolean "is_scheduled"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["edition_id"], name: "index_bookings_on_edition_id"
    t.index ["location_id"], name: "index_bookings_on_location_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.text "body"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "alpha_2_code"
    t.string "alpha_3_code"
    t.string "phone_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "edition_items", force: :cascade do |t|
    t.bigint "edition_id", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amount"
    t.text "notes"
    t.index ["edition_id"], name: "index_edition_items_on_edition_id"
    t.index ["item_id"], name: "index_edition_items_on_item_id"
  end

  create_table "edition_posts", force: :cascade do |t|
    t.bigint "edition_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["edition_id"], name: "index_edition_posts_on_edition_id"
    t.index ["post_id"], name: "index_edition_posts_on_post_id"
  end

  create_table "editions", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.string "name"
    t.text "description"
    t.integer "budget"
    t.string "slug"
    t.bigint "meeting_location_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_editions_on_event_id"
    t.index ["meeting_location_id"], name: "index_editions_on_meeting_location_id"
    t.index ["user_id"], name: "index_editions_on_user_id"
  end

  create_table "event_posts", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_posts_on_event_id"
    t.index ["post_id"], name: "index_event_posts_on_post_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "budget"
    t.integer "recurrence"
    t.string "slug"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "filiations", force: :cascade do |t|
    t.bigint "parent_person_id", null: false
    t.bigint "child_person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_person_id"], name: "index_filiations_on_child_person_id"
    t.index ["parent_person_id"], name: "index_filiations_on_parent_person_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_sub_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "location_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_category_id"], name: "index_location_sub_categories_on_location_category_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "location_category_id", null: false
    t.bigint "location_sub_category_id", null: false
    t.bigint "address_id", null: false
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_locations_on_address_id"
    t.index ["location_category_id"], name: "index_locations_on_location_category_id"
    t.index ["location_sub_category_id"], name: "index_locations_on_location_sub_category_id"
  end

  create_table "participants", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "edition_id", null: false
    t.integer "role"
    t.integer "status"
    t.boolean "is_visible"
    t.integer "payment_due"
    t.boolean "has_paid"
    t.text "notes"
    t.datetime "invitation_date"
    t.datetime "response_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["edition_id"], name: "index_participants_on_edition_id"
    t.index ["person_id"], name: "index_participants_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "birth_date"
    t.bigint "partner_person_id"
    t.string "phone_code"
    t.string "phone_number"
    t.string "email"
    t.bigint "address_id"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_people_on_address_id"
    t.index ["partner_person_id"], name: "index_people_on_partner_person_id"
  end

  create_table "personal_restrictions", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "restriction_id", null: false
    t.integer "severity"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_personal_restrictions_on_person_id"
    t.index ["restriction_id"], name: "index_personal_restrictions_on_restriction_id"
  end

  create_table "poll_answers", force: :cascade do |t|
    t.text "body"
    t.bigint "poll_question_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poll_question_id"], name: "index_poll_answers_on_poll_question_id"
    t.index ["user_id"], name: "index_poll_answers_on_user_id"
  end

  create_table "poll_questions", force: :cascade do |t|
    t.text "body"
    t.bigint "poll_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poll_id"], name: "index_poll_questions_on_poll_id"
  end

  create_table "polls", force: :cascade do |t|
    t.datetime "closing_date"
    t.bigint "edition_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["edition_id"], name: "index_polls_on_edition_id"
    t.index ["user_id"], name: "index_polls_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "slug"
    t.string "external_url"
    t.integer "category"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "reactions", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "comment_id", null: false
    t.string "emoji"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_reactions_on_comment_id"
    t.index ["post_id"], name: "index_reactions_on_post_id"
    t.index ["user_id"], name: "index_reactions_on_user_id"
  end

  create_table "restrictions", force: :cascade do |t|
    t.integer "category"
    t.text "avoidances"
    t.text "treatments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ride_participants", force: :cascade do |t|
    t.bigint "ride_id", null: false
    t.bigint "participant_id", null: false
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["participant_id"], name: "index_ride_participants_on_participant_id"
    t.index ["ride_id"], name: "index_ride_participants_on_ride_id"
  end

  create_table "rides", force: :cascade do |t|
    t.bigint "edition_id", null: false
    t.bigint "vehicle_id", null: false
    t.integer "fuel_price"
    t.integer "distance"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["edition_id"], name: "index_rides_on_edition_id"
    t.index ["vehicle_id"], name: "index_rides_on_vehicle_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "role"
    t.integer "status"
    t.bigint "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.string "email", null: false
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["person_id"], name: "index_users_on_person_id"
  end

  create_table "vehicle_brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_fuels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_models", force: :cascade do |t|
    t.string "name"
    t.bigint "vehicle_brand_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_brand_id"], name: "index_vehicle_models_on_vehicle_brand_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "seats_available"
    t.string "license_plate"
    t.integer "fuel_consumption"
    t.bigint "vehicle_category_id", null: false
    t.bigint "vehicle_brand_id", null: false
    t.bigint "vehicle_model_id", null: false
    t.bigint "vehicle_fuel_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_brand_id"], name: "index_vehicles_on_vehicle_brand_id"
    t.index ["vehicle_category_id"], name: "index_vehicles_on_vehicle_category_id"
    t.index ["vehicle_fuel_id"], name: "index_vehicles_on_vehicle_fuel_id"
    t.index ["vehicle_model_id"], name: "index_vehicles_on_vehicle_model_id"
  end

  add_foreign_key "addresses", "countries"
  add_foreign_key "booking_participants", "bookings"
  add_foreign_key "booking_participants", "participants"
  add_foreign_key "booking_posts", "bookings"
  add_foreign_key "booking_posts", "posts"
  add_foreign_key "bookings", "editions"
  add_foreign_key "bookings", "locations"
  add_foreign_key "bookings", "users"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "edition_items", "editions"
  add_foreign_key "edition_items", "items"
  add_foreign_key "edition_posts", "editions"
  add_foreign_key "edition_posts", "posts"
  add_foreign_key "editions", "events"
  add_foreign_key "editions", "locations", column: "meeting_location_id"
  add_foreign_key "editions", "users"
  add_foreign_key "event_posts", "events"
  add_foreign_key "event_posts", "posts"
  add_foreign_key "events", "users"
  add_foreign_key "filiations", "people", column: "child_person_id"
  add_foreign_key "filiations", "people", column: "parent_person_id"
  add_foreign_key "location_sub_categories", "location_categories"
  add_foreign_key "locations", "addresses"
  add_foreign_key "locations", "location_categories"
  add_foreign_key "locations", "location_sub_categories"
  add_foreign_key "participants", "editions"
  add_foreign_key "participants", "people"
  add_foreign_key "people", "addresses"
  add_foreign_key "people", "people", column: "partner_person_id"
  add_foreign_key "personal_restrictions", "people"
  add_foreign_key "personal_restrictions", "restrictions"
  add_foreign_key "poll_answers", "poll_questions"
  add_foreign_key "poll_answers", "users"
  add_foreign_key "poll_questions", "polls"
  add_foreign_key "polls", "editions"
  add_foreign_key "polls", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "reactions", "comments"
  add_foreign_key "reactions", "posts"
  add_foreign_key "reactions", "users"
  add_foreign_key "ride_participants", "participants"
  add_foreign_key "ride_participants", "rides"
  add_foreign_key "rides", "editions"
  add_foreign_key "rides", "vehicles"
  add_foreign_key "users", "people"
  add_foreign_key "vehicle_models", "vehicle_brands"
  add_foreign_key "vehicles", "vehicle_brands"
  add_foreign_key "vehicles", "vehicle_categories"
  add_foreign_key "vehicles", "vehicle_fuels"
  add_foreign_key "vehicles", "vehicle_models"
end
