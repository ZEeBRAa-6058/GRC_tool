# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  # before_action :set_gacha_contents, only: :show
  helper_method :sort_column, :sort_direction

  # GET /users
  # GET /users.json
  def index
    @users = User.all.page(params[:page])
  end

  # GET /users/1
  # GET /users/1.json
  def show
    # @gacha_contents = GachaContent.find_by(user_id: @user)
    @gacha_contents = GachaContent.order(lucky_day: 'DESC').page(params[:page]).where(user_id: @user).order(sort_column + ' ' + sort_direction)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit; end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to gacha_contents_path
    else
      @user.valid?
      flash.now[:alert] = @user.errors.full_messages
      render :new
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path, notice: 'ユーザーの更新に成功しました' }
        format.json { render :index, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:user_name, :string)
  end

  # def set_gacha_contents
  #   @gacha_contents = GachaContent.find_by(user_id: @user)
  # end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end

  def sort_column
    GachaContent.column_names.include?(params[:sort]) ? params[:sort] : 'lucky_day'
  end
end
