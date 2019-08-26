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


ActiveRecord::Schema.define(version: 2019_08_22_155036) do

ActiveRecord::Schema.define(version: 2019_08_22_132501) do



ActiveRecord::Schema.define(version: 2019_08_23_131750) do




  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "response"
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id"], name: "index_jobs_on_test_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.string "program_sku"
    t.integer "amount_cents", default: 0, null: false
    t.string "amount_currency", default: "EUR", null: false
    t.jsonb "payment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_payments_on_program_id"
  end

  create_table "programs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

    t.bigint "user_id"
    t.bigint "test_id"
    t.integer "job_ids", default: [], array: true
    t.index ["test_id"], name: "index_programs_on_test_id"
    t.index ["user_id"], name: "index_programs_on_user_id"

    t.integer "price_cents", default: 0, null: false
    t.index ["job_id"], name: "index_programs_on_job_id"

  end

  create_table "questions", force: :cascade do |t|
    t.string "q_test"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tech_a"
    t.string "social_a"
    t.string "craft_a"
  end

  create_table "test_to_jobs", force: :cascade do |t|
    t.bigint "test_id"
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_test_to_jobs_on_job_id"
    t.index ["test_id"], name: "index_test_to_jobs_on_test_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "current_field"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

    t.bigint "answer_id"
    t.bigint "user_id"
    t.integer "best_score"
    t.string "Domain"
    t.index ["answer_id"], name: "index_tests_on_answer_id"
    t.index ["user_id"], name: "index_tests_on_user_id"

  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "jobs", "tests"
  add_foreign_key "orders", "users"
  add_foreign_key "payments", "programs"
  add_foreign_key "programs", "tests"
  add_foreign_key "programs", "users"
  add_foreign_key "test_to_jobs", "jobs"
  add_foreign_key "test_to_jobs", "tests"

  add_foreign_key "tests", "answers"
  add_foreign_key "tests", "users"

end
