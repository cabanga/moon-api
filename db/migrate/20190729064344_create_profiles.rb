class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :user_id, null: false, unique: true
      t.string :name
      t.string :avatar
      t.string :position
      t.string :email, null: false, unique: true
      t.string :cell_phone, null: false, unique: true

      t.timestamps
    end
  end
end
