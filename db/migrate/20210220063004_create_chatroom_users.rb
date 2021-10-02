# frozen_string_literal: true

# This class adds chatroom users to the database.

class CreateChatroomUsers < ActiveRecord::Migration[5.0]
  # Add a chatroom user to the database with the specified user and chatroom to join.
  def change
    create_table :chatroom_users do |t|
      t.references :chatroom, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :admin, default: false
      t.boolean :read, default: true
      t.timestamps
    end
  end
end
