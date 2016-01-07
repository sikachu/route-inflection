class StaffController < ApplicationController
  before_action :set_staff, only: [:show, :edit, :update, :destroy]

  # GET /staff
  # GET /staff.json
  def index
    @staff = Staff.all
  end

  # GET /staff/1
  # GET /staff/1.json
  def show
  end

  # GET /staff/new
  def new
    @staff = Staff.new
  end

  # GET /staff/1/edit
  def edit
  end

  # POST /staff
  # POST /staff.json
  def create
    @staff = Staff.new(staff_params)

    respond_to do |format|
      if @staff.save
        format.html { redirect_to @staff, notice: 'Staff was successfully created.' }
        format.json { render :show, status: :created, location: @staff }
      else
        format.html { render :new }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff/1
  # PATCH/PUT /staff/1.json
  def update
    respond_to do |format|
      if @staff.update(staff_params)
        format.html { redirect_to @staff, notice: 'Staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @staff }
      else
        format.html { render :edit }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff/1
  # DELETE /staff/1.json
  def destroy
    @staff.destroy
    respond_to do |format|
      format.html { redirect_to staff_index_url, notice: 'Staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = Staff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_params
      params.require(:staff).permit(:name)
    end
end
