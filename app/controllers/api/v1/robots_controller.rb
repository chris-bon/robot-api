class Api::V1::RobotsController < ApplicationController
  before_action :set_api_v1_robot, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/robots
  # GET /api/v1/robots.json
  def index
    @api_v1_robots = Api::V1::Robot.all
  end

  # GET /api/v1/robots/1
  # GET /api/v1/robots/1.json
  def show
  end

  # GET /api/v1/robots/new
  def new
    @api_v1_robot = Api::V1::Robot.new
  end

  # GET /api/v1/robots/1/edit
  def edit
  end

  # POST /api/v1/robots
  # POST /api/v1/robots.json
  def create
    @api_v1_robot = Api::V1::Robot.new(api_v1_robot_params)

    respond_to do |format|
      if @api_v1_robot.save
        format.html { redirect_to @api_v1_robot, notice: 'Robot was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_robot }
      else
        format.html { render :new }
        format.json { render json: @api_v1_robot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/robots/1
  # PATCH/PUT /api/v1/robots/1.json
  def update
    respond_to do |format|
      if @api_v1_robot.update(api_v1_robot_params)
        format.html { redirect_to @api_v1_robot, notice: 'Robot was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_robot }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_robot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/robots/1
  # DELETE /api/v1/robots/1.json
  def destroy
    @api_v1_robot.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_robots_url, notice: 'Robot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_robot
      @api_v1_robot = Api::V1::Robot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_robot_params
      params.require(:api_v1_robot).permit(:name, :profession, :image)
    end
end
