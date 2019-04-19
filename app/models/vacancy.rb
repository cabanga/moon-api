class Vacancy < ApplicationRecord
  #belongs_to :user
  #belongs_to :user, optional: true
  
  def self.all_vacancies
    Vacancy.where(status: 1)
  end

  def self.vacancies_lasts
    Vacancy.where(status: 1).last(3)
  end

  def close_vacancy
    if self.status == 1
        self.update_attributes(:status => 0)            
    else
        self.update_attributes(:status => 1)
    end  
  end

end
