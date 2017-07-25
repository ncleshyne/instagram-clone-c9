class PicasController < ApplicationController
  before_action :set_pica, only: [:show, :edit, :update, :destroy]

  # GET /picas
  # GET /picas.json
  def index
    @picas = Pica.all
  end

  # GET /picas/1
  # GET /picas/1.json
  def show
  end

  # GET /picas/new
  def new
    @pica = Pica.new
  end

  # GET /picas/1/edit
  def edit
  end

  # POST /picas
  # POST /picas.json
  def create
    @pica = Pica.new(pica_params)

    respond_to do |format|
      if @pica.save
        format.html { redirect_to @pica, notice: 'Pica was successfully created.' }
        format.json { render :show, status: :created, location: @pica }
      else
        format.html { render :new }
        format.json { render json: @pica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picas/1
  # PATCH/PUT /picas/1.json
  def update
    respond_to do |format|
      if @pica.update(pica_params)
        format.html { redirect_to @pica, notice: 'Pica was successfully updated.' }
        format.json { render :show, status: :ok, location: @pica }
      else
        format.html { render :edit }
        format.json { render json: @pica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picas/1
  # DELETE /picas/1.json
  def destroy
    @pica.destroy
    respond_to do |format|
      format.html { redirect_to picas_url, notice: 'Pica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pica
      @pica = Pica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pica_params
      params.require(:pica).permit(:name, :description, :picture)
    end
end
