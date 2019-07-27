class CreateVacancies < ActiveRecord::Migration[5.2]
  def change
    create_table :vacancies do |t|
      t.string :title
      t.string :companyName
      t.text :jobType
      t.string :location
      t.text :description
      t.string :city
      t.string :salary
      t.string :user_id, null: false
      t.integer :status, default: 1
      # t.integer :category, default: 0
      #
      # t.integer :level, default: 0
      # t.text :skills
      # t.string :bonus
      # t.string :contact_email
      # t.string :contact_phone

      t.timestamps
    end
  end
end
