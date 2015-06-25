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

ActiveRecord::Schema.define(version: 20150625222707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "album_name"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlisttracks", force: :cascade do |t|
    t.integer  "playlist_id"
    t.integer  "track_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "playlisttracks", ["playlist_id"], name: "index_playlisttracks_on_playlist_id", using: :btree
  add_index "playlisttracks", ["track_id"], name: "index_playlisttracks_on_track_id", using: :btree

  create_table "playlistusers", force: :cascade do |t|
    t.integer  "playlist_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "playlistusers", ["playlist_id"], name: "index_playlistusers_on_playlist_id", using: :btree
  add_index "playlistusers", ["user_id"], name: "index_playlistusers_on_user_id", using: :btree

  create_table "tracks", force: :cascade do |t|
    t.string   "track_uri"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "display_nameuser_uri"
    t.string   "token"
    t.string   "refresh_token"
    t.string   "image_url"
    t.string   "spotify_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_foreign_key "playlisttracks", "playlists"
  add_foreign_key "playlisttracks", "tracks"
  add_foreign_key "playlistusers", "playlists"
  add_foreign_key "playlistusers", "users"
end
