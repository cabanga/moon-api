Rails.application.routes.draw do
  # devise_for :users

  namespace :api do
    namespace :v1 do
      resources :candidates
      resources :vacancies
      get '/vacancies_uid/:uid', to: 'vacancies#vacancies_uid', as: 'vacancies_uid'
      get '/vacancies_lasts', to: 'vacancies#vacancies_lasts', as: 'vacancies_lasts'
      get '/vacancies/getCandidates/:id', to: 'vacancies#getCandidates', as: 'getCandidates'

      patch '/vacancies/close_vacancy/:id', to: 'vacancies#close_vacancy', as: 'close_vacancy'
      get '/candidates/already_applied/:user_id', to: 'candidates#already_applied', as: 'already_applied'
      
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
