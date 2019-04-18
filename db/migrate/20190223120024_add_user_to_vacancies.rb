class AddUserToVacancies < ActiveRecord::Migration[5.2]
  def change
    add_column :vacancies, :user_id, :string, null: false

    #add_reference :vacancies, :user, foreign_key: true, index: true
  end
end
