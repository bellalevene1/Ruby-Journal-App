class DreamDestinationsController < ApplicationController
  before_action :set_dream_destination, only: %i[ show edit update destroy ]

  # GET /dream_destinations 
  def index
    @dream_destinations = DreamDestination.all
  end

  # GET /dream_destinations/1
  def show
  end

  # GET /dream_destinations/new
  def new
    @dream_destination = DreamDestination.new
  end

  # GET /dream_destinations/1/edit
  def edit
  end

  # POST /dream_destinations
  def create
    @dream_destination = DreamDestination.new(dream_destination_params)

    respond_to do |format|
      if @dream_destination.save
        format.html { redirect_to @dream_destination, notice: "Dream destination was successfully created." }
        format.json { render :show, status: :created, location: @dream_destination }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dream_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @dream_destination.update(dream_destination_params)
        format.html { redirect_to @dream_destination, notice: "Dream destination was successfully updated." }
        format.json { render :show, status: :ok, location: @dream_destination }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dream_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dream_destination.destroy!

    respond_to do |format|
      format.html { redirect_to dream_destinations_path, status: :see_other, notice: "Dream destination was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_dream_destination
      @dream_destination = DreamDestination.find(params[:id])
    end

    def dream_destination_params
      params.require(:dream_destination).permit(:location, :reason, :goal, :status)
    end
end
