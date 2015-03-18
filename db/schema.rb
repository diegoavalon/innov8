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

ActiveRecord::Schema.define(version: 20150318161818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.boolean  "developer_mode", default: false
    t.boolean  "reports_only",   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bodies", force: :cascade do |t|
    t.integer "participant_id"
    t.integer "chest"
    t.integer "waist"
    t.integer "low_hip"
    t.integer "high_hip"
    t.integer "inseam"
    t.integer "thigh"
    t.integer "upper_arm"
    t.integer "sleeve_length"
    t.integer "employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "email"
    t.string "password"
    t.string "product_department"
  end

  create_table "foots", force: :cascade do |t|
    t.integer "participant_id"
    t.integer "shoe_size"
    t.integer "lf_width"
    t.integer "lf_heel_to_arch"
    t.integer "lf_heel_to_toe"
    t.integer "rf_width"
    t.integer "rf_heel_to_arch"
    t.integer "rf_heel_to_toe"
    t.integer "employee_id"
  end

  create_table "hands", force: :cascade do |t|
    t.integer "participant_id"
    t.integer "lh_palm_width_flat"
    t.integer "lh_palm_width_round"
    t.integer "lh_palm_length"
    t.integer "lh_middle_finger"
    t.integer "rh_palm_width_flat"
    t.integer "rh_palm_width_round"
    t.integer "rh_palm_length"
    t.integer "rh_middle_finger"
    t.integer "employee_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "email"
    t.string   "area"
    t.string   "discipline"
    t.string   "participant_type"
    t.integer  "age"
    t.string   "gender"
    t.string   "ethnicity"
    t.integer  "height_ft"
    t.integer  "height_in"
    t.integer  "weight"
    t.string   "bra_size"
    t.integer  "body_id"
    t.integer  "hand_id"
    t.integer  "foot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "chest"
    t.string   "natural_waist"
    t.string   "low_hip"
    t.string   "high_hip"
    t.string   "inseam"
    t.string   "thigh"
    t.string   "upper_arm"
    t.string   "sleeve_length"
    t.integer  "shoe_size"
    t.string   "lf_width"
    t.float    "lf_heel_to_arch"
    t.float    "lf_heel_to_toe"
    t.string   "rf_width"
    t.float    "rf_heel_to_arch"
    t.float    "rf_heel_to_toe"
    t.float    "lh_palm_width_flat"
    t.float    "lh_palm_width_round"
    t.float    "lh_palm_length"
    t.float    "lh_middle_finger"
    t.float    "rh_palm_width_flat"
    t.float    "rh_palm_width_round"
    t.float    "rh_palm_length"
    t.float    "rh_middle_finger"
    t.string   "tops_size"
    t.string   "alpha_bottoms"
    t.integer  "numeric_bottoms"
    t.text     "comments"
    t.string   "phone"
    t.integer  "stated_height_ft"
    t.integer  "stated_height_in"
    t.integer  "stated_pants_waist"
    t.integer  "stated_pants_inseam"
    t.integer  "stated_weight"
    t.float    "stated_shoe_size"
    t.string   "pant_waist"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.boolean  "approved",               default: false, null: false
    t.string   "fname"
    t.string   "lname"
    t.boolean  "apparel"
    t.boolean  "footwear"
    t.boolean  "gloves"
  end

  add_index "users", ["approved"], name: "index_users_on_approved", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
