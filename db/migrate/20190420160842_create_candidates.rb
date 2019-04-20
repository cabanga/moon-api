class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :user_id
      t.references :vacancy, foreign_key: true, index: true

      t.timestamps
    end
  end
end
