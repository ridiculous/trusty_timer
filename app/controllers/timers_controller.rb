class TimersController < ApplicationController
  before_action :authenticate_user
  before_action :set_timer, only: [:show, :edit, :update, :destroy]

  # GET /timers
  # GET /timers.json
  def index
    @timers = Timer.all
    @title = 'Timers'
  end

  # GET /timers/1
  # GET /timers/1.json
  def show
  end

  # GET /timers/new
  def new
    @timer = Timer.new
  end

  # GET /timers/1/edit
  def edit
  end

  # POST /timers
  # POST /timers.json
  def create
    @timer = Timer.new(timer_params)

    respond_to do |format|
      if @timer.save
        format.html { redirect_to @timer, notice: 'Timer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @timer }
      else
        format.html { render action: 'new' }
        format.json { render json: @timer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timers/1
  # PATCH/PUT /timers/1.json
  def update
    respond_to do |format|
      if @timer.update(timer_params)
        format.html { redirect_to @timer, notice: 'Timer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @timer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timers/1
  # DELETE /timers/1.json
  def destroy
    @timer.destroy
    respond_to do |format|
      format.html { redirect_to timers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timer
      @timer = Timer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timer_params
      params.require(:timer).permit(:start_time, :stop_time, :person_id, :notes, :created_by, :updated_by)
    end
end
