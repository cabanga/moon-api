class Vacancy < ApplicationRecord
  #belongs_to :user
  #belongs_to :user, optional: true
  
  def self.all_vacancies
    Vacancy.where(status: 1)
  end
end
