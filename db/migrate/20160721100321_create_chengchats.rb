class CreateChengchats < ActiveRecord::Migration
  def change
    create_table :chengchats do |t|
      t.string :openid
      t.string :content
      t.string :to_user_name
      t.string :msg_type
      t.string :from_user_name
      t.string :content
      t.string :reply

      t.timestamps null: false
    end
  end
end
