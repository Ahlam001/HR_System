class DevisionsController < ApplicationController
  before_action :set_devision, only: %i[ show edit update destroy ]

  # GET /devisions or /devisions.json
  def index
    @devisions = Devision.all
  end

  # GET /devisions/1 or /devisions/1.json
  def show
  end

  # GET /devisions/new
  def new
    @devision = Devision.new
  end

  # GET /devisions/1/edit
  def edit
  end

  # POST /devisions or /devisions.json
  def create

    devision_teams = devision_params["teams"].map{|team| Team.find(team.to_i)}
    d_p = devision_params
    d_p["teams"] = devision_teams




    @devision = Devision.new(d_p)

    respond_to do |format|
      if @devision.save
        format.html { redirect_to devision_url(@devision), notice: "Devision was successfully created." }
        format.json { render :show, status: :created, location: @devision }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @devision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devisions/1 or /devisions/1.json
  def update
    devision_teams = devision_params["teams"].map{|team| Team.find(team.to_i)}
    d_p = devision_params
    d_p["teams"] = devision_teams


    respond_to do |format|
      if @devision.update(d_p)
        format.html { redirect_to devision_url(@devision), notice: "Devision was successfully updated." }
        format.json { render :show, status: :ok, location: @devision }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @devision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devisions/1 or /devisions/1.json
  def destroy
    @devision.destroy

    respond_to do |format|
      format.html { redirect_to devisions_url, notice: "Devision was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devision
      @devision = Devision.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def devision_params
      params.require(:devision).permit(:name, :description, :manager,:teams => [])
    end
end
