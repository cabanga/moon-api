class Api::V1::ProfilesController < ApplicationController
  before_action :set_vacancy, only: [:show, :update, :destroy]

  # GET /api/v1/profiles
  def index
    @profiles = Profile.all# current_user.profiles #
    render json: @profiles
  end

  # GET /api/v1/profiles/1
  def show
    render json: @profile
  end

  # POST /api/v1/profiles
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      render json: @profile, status: :created
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/profiles/1
  def update
    if @profile.update(vacancy_params)
      render json: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/profiles/1
  def destroy
    @profile.destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def set_uid
      @uid = params[:uid]
    end

    # Only allow a trusted parameter "white list" through.
    def profile_params
      params.require(:profile).permit()
    end



end
