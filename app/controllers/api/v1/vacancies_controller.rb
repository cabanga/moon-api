class Api::V1::VacanciesController < ApplicationController
    before_action :set_vacancy, only: [:show, :update, :destroy]
    before_action :set_uid, only: [:vacancies_uid]
    # before_action :require_authorization!, only: [:create, :update, :destroy]
    
    # GET /api/v1/vacancies
    def index
        @vacancies = Vacancy.all_vacancies# current_user.vacancies #
        render json: @vacancies
    end
    
    # GET /api/v1/vacancies/1
    def show
        render json: @vacancy
    end

    def vacancies_uid
        @myvacancies = Vacancy.where(user_id: @uid)
        render json: @myvacancies
    end

    def vacancies_lasts
        @myvacancies_lasts = Vacancy.last(3)
        render json: @myvacancies_lasts
    end


    # POST /api/v1/vacancies
    def create
        @vacancy = Vacancy.new(vacancy_params)

        if @vacancy.save
            render json: @vacancy, status: :created
        else
            render json: @vacancy.errors, status: :unprocessable_entity
        end
    end
    
    # PATCH/PUT /api/v1/vacancies/1
    def update
        if @vacancy.update(vacancy_params)
            render json: @vacancy
        else
            render json: @vacancy.errors, status: :unprocessable_entity
        end
    end
    
    # DELETE /api/v1/vacancies/1
    def destroy
        @vacancy.destroy
    end
 
 private
 
   # Use callbacks to share common setup or constraints between actions.
   def set_vacancy
     @vacancy = Vacancy.find(params[:id])
   end

   def set_uid
    @uid = params[:uid]
   end
 
   # Only allow a trusted parameter "white list" through.
   def vacancy_params
     params.require(:vacancy).permit(:title, :category, :level, :skills, :companyName, :status,
                                     :location, :city, :salary, :description , :bonus, :user_id)
   end
 
   def require_authorization!
     unless current_user == @vacancy.user
       render json: {}, status: :forbidden
     end
   end

end

