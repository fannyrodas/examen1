class MedicinasController < ApplicationController
  before_action :set_medicina, only: [:show, :edit, :update, :destroy]

  # GET /medicinas
  # GET /medicinas.json
  def index
    @medicinas = Medicina.all
  end

  # GET /medicinas/1
  # GET /medicinas/1.json
  def show
  end

  # GET /medicinas/new
  def new
    @medicina = Medicina.new
  end

  # GET /medicinas/1/edit
  def edit
  end

  # POST /medicinas
  # POST /medicinas.json
  def create
    @medicina = Medicina.new(medicina_params)
    @medicina.my_file = params[:file]

    respond_to do |format|
      if @medicina.save
        format.html { redirect_to @medicina, notice: 'Medicina was successfully created.' }
        format.json { render :show, status: :created, location: @medicina }
      else
        format.html { render :new }
        format.json { render json: @medicina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicinas/1
  # PATCH/PUT /medicinas/1.json
  def update
    respond_to do |format|
      if @medicina.update(medicina_params)
        format.html { redirect_to @medicina, notice: 'Medicina was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicina }
      else
        format.html { render :edit }
        format.json { render json: @medicina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicinas/1
  # DELETE /medicinas/1.json
  def destroy
    @medicina.destroy
    respond_to do |format|
      format.html { redirect_to medicinas_url, notice: 'Medicina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicina
      @medicina = Medicina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medicina_params
      params.require(:medicina).permit(:my_file)
    end
end
