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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170815221859) do
=======
ActiveRecord::Schema.define(version: 20170816000053) do
>>>>>>> d0e4ad8485fef9d3e139764419705d35db517a6f

  create_table "binnacles", force: :cascade do |t|
    t.integer "user_id"
    t.integer "farming_id"
    t.string "fecha"
    t.string "temperatura"
    t.string "nroriegos"
    t.text "observaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "foto1_file_name"
    t.string "foto1_content_type"
    t.integer "foto1_file_size"
    t.datetime "foto1_updated_at"
    t.string "foto2_file_name"
    t.string "foto2_content_type"
    t.integer "foto2_file_size"
    t.datetime "foto2_updated_at"
    t.string "foto3_file_name"
    t.string "foto3_content_type"
    t.integer "foto3_file_size"
    t.datetime "foto3_updated_at"
    t.index ["farming_id"], name: "index_binnacles_on_farming_id"
    t.index ["user_id"], name: "index_binnacles_on_user_id"
  end

  create_table "farming_students", force: :cascade do |t|
    t.integer "user_id"
    t.integer "farming_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farming_id"], name: "index_farming_students_on_farming_id"
    t.index ["user_id"], name: "index_farming_students_on_user_id"
  end

  create_table "farmings", force: :cascade do |t|
    t.integer "user_id"
    t.string "semilla"
    t.text "recomendaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "est_inscritos"
    t.index ["user_id"], name: "index_farmings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "nombre"
    t.string "rol"
    t.string "carrera"
    t.string "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cultivo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
