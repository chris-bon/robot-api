class Api::V1::RobotsController < ApplicationController
  before_action :set_robot, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/robots(.json)
  def index
    @robots = Robot.all
  end

  # GET /api/v1/robots/1(.json)
  def show
  end

  # GET /api/v1/robots/new
  def new
    @robot = Robot.new
  end

  # GET /api/v1/robots/1/edit
  def edit
  end

  # POST /api/v1/robots(.json)
  def create
    @robot = Robot.new robot_params

    respond_to do |format|
      if @robot.save
        format.html { redirect_to @robot, 
                      notice: 'Robot was successfully created.' }
        format.json { render :show, status: :created, location: @robot }
      else
        format.html { render :new }
        format.json { render json: @robot.errors, 
                               status: :unprocessable_entity }
      end
    end
  end

  # PATCH /api/v1/robots/1(.json)
  def update
    respond_to do |format|
      if @robot.update robot_params
        format.html { redirect_to @robot, 
                      notice: 'Robot was successfully updated.' }
        format.json { render :show, status: :ok, 
                                      location: @robot }
      else
        format.html { render :edit }
        format.json { render json: @robot.errors, 
                               status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/robots/1(.json)
  def destroy
    @robot.destroy
    respond_to do |format|
      format.html { redirect_to robots_url, 
                    notice: 'Robot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_robot
    @robot = Robot.find params[:id]
  end

  def robot_params
    params.require(:robot).permit :name, :profession, :image
  end
end
