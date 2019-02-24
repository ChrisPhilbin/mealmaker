# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 3) do

  create_table "ingridents", force: :cascade do |t|
    t.string "ingrident_name"
  end

  create_table "meals", force: :cascade do |t|
    t.string "meal_name"
  end

  create_table "meals_ingridents", id: false, force: :cascade do |t|
    t.integer "meals_id"
    t.integer "ingridents_id"
  end

  add_index "meals_ingridents", ["ingridents_id"], name: "index_meals_ingridents_on_ingridents_id"
  add_index "meals_ingridents", ["meals_id"], name: "index_meals_ingridents_on_meals_id"

end
