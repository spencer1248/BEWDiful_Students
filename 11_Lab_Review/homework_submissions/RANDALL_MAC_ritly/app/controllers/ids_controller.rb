class IdsController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update, :destroy]

  # GET /ids
  # GET /ids.json
  def index
    @ids = Id.all
  end

  # GET /ids/1
  # GET /ids/1.json
  def show
  end

  # GET /ids/new
  def new
    @id = Id.new
  end

  # GET /ids/1/edit
  def edit
  end

  # POST /ids
  # POST /ids.json
  def create
    @id = Id.new(id_params)

    respond_to do |format|
      if @id.save
        format.html { redirect_to @id, notice: 'Id was successfully created.' }
        format.json { render action: 'show', status: :created, location: @id }
      else
        format.html { render action: 'new' }
        format.json { render json: @id.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ids/1
  # PATCH/PUT /ids/1.json
  def update
    respond_to do |format|
      if @id.update(id_params)
        format.html { redirect_to @id, notice: 'Id was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @id.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ids/1
  # DELETE /ids/1.json
  def destroy
    @id.destroy
    respond_to do |format|
      format.html { redirect_to ids_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_id
      @id = Id.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def id_params
      params.require(:id).permit(:url, :hashcode, :created, :updated)
    end
end
