class CreateVacancies < ActiveRecord::Migration[5.2]
  def change
    create_table :vacancies do |t|
      t.string :title
      t.text :description
      t.integer :typeCompany
      t.string :localization
      t.integer :level
      t.string :typeJob
      t.string :responsabily
      t.string :requeriment
      t.string :otherBenefits
      
      t.timestamps
    end
  end
end
