class CreateVacancies < ActiveRecord::Migration[5.2]
  def change
    create_table :vacancies do |t|

      t.string :title
      t.integer :category, default: 1
      t.integer :level, default: 1
      t.text :skills
      t.string :companyName 
      t.string :location 
      t.string :city
      t.string :salary
      t.text :description
      t.text :responsibilities
      t.text :requirements
      t.string :bonus
      
      t.timestamps
    end
  end
end

