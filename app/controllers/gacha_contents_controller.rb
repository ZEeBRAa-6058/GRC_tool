class GachaContentsController < ApplicationController
  before_action :set_gacha_content, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /gacha_contents
  # GET /gacha_contents.json
  def index
    @gacha_contents = GachaContent.all
    @gacha_contents = GachaContent.all.order(sort_column + ' ' + sort_direction)
  end

  # GET /gacha_contents/1
  # GET /gacha_contents/1.json
  def show
  end

  # GET /gacha_contents/new
  def new
    @gacha_content = GachaContent.new
  end

  # GET /gacha_contents/1/edit
  def edit
  end

  # POST /gacha_contents
  # POST /gacha_contents.json
  def create
    @gacha_content = GachaContent.new(gacha_content_params)

      if @gacha_content.save
        redirect_to gacha_contents_path
      else
        flash.now[:alert] = @event.error_message
        render :new
      end
  end

  # PATCH/PUT /gacha_contents/1
  # PATCH/PUT /gacha_contents/1.json
  def update
    respond_to do |format|
      if @gacha_content.update(gacha_content_params)
        format.html { redirect_to @gacha_content, notice: 'Gacha content was successfully updated.' }
        format.json { render :index, status: :ok, location: @gacha_content }
      else
        format.html { render :edit }
        format.json { render json: @gacha_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gacha_contents/1
  # DELETE /gacha_contents/1.json
  def destroy
    @gacha_content.destroy
    respond_to do |format|
      format.html { redirect_to gacha_contents_url, notice: 'Gacha content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gacha_content
      @gacha_content = GachaContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gacha_content_params
      params.require(:gacha_content)
            .permit(:rarity, :mark, :name, :how_many, :lucky_day)
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end

    def sort_column
        GachaContent.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end
end
