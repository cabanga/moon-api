class Api::V1::CandidatesController < ApplicationController
    before_action :set_candidate, only: [:show, :update, :destroy]
    
    # GET /api/v1/candidates
    def index
        @candidates = Candidate.all
        render json: @candidates
    end
    
    # GET /api/v1/candidates/1
    def show
        render json: @candidate
    end

    # POST /api/v1/candidates
    def create
        @candidate = Candidate.new(candidate_params)

        if @candidate.save
            render json: @candidate, status: :created
        else
            render json: @candidate.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /api/v1/candidates/1
    def update
        if @candidate.update(candidate_params)
            render json: @candidate
        else
            render json: @candidate.errors, status: :unprocessable_entity
        end
    end
    
    # DELETE /api/v1/candidates/1
    def destroy
        @candidate.destroy
    end
 
    private
 
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate
      @candidate = Candidate.find(params[:id])
    end
 
       # Only allow a trusted parameter "white list" through.
   def candidate_params
    params.require(:vacancy).permit(:vacancy_id, :user_id)
  end

end
