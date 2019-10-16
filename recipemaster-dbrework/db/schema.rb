# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_14_210910) do

  create_table "interactions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "original_recipe_id"
    t.text "date"
    t.integer "rating"
    t.text "review"
    t.integer "rec"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "recipe_id"
    t.index ["recipe_id"], name: "index_interactions_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.text "name"
    t.integer "original_recipe_id"
    t.integer "minutes"
    t.integer "user_id"
    t.text "submitted"
    t.text "tags"
    t.text "nutrition"
    t.integer "n_steps"
    t.text "steps"
    t.text "description"
    t.text "ingredients"
    t.integer "n_ingredients"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "interactions", "recipes"
end
