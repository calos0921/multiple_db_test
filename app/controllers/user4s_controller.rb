class User4sController < ApplicationController
  before_action :set_user4, only: [:show, :edit, :update, :destroy]

  # GET /user4s
  # GET /user4s.json
  def index
    @user4s = User4.all
  end

  # GET /user4s/1
  # GET /user4s/1.json
  def show
  end

  # GET /user4s/new
  def new
    @user4 = User4.new
  end

  # GET /user4s/1/edit
  def edit
  end

  # POST /user4s
  # POST /user4s.json
  def create
    @user4 = User4.new(user4_params)

    respond_to do |format|
      if @user4.save
        format.html { redirect_to @user4, notice: 'User4 was successfully created.' }
        format.json { render :show, status: :created, location: @user4 }
      else
        format.html { render :new }
        format.json { render json: @user4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user4s/1
  # PATCH/PUT /user4s/1.json
  def update
    respond_to do |format|
      if @user4.update(user4_params)
        format.html { redirect_to @user4, notice: 'User4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @user4 }
      else
        format.html { render :edit }
        format.json { render json: @user4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user4s/1
  # DELETE /user4s/1.json
  def destroy
    @user4.destroy
    respond_to do |format|
      format.html { redirect_to user4s_url, notice: 'User4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user4
      @user4 = User4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user4_params
      params.require(:user4).permit(:name, :email, :tel)
    end
end
