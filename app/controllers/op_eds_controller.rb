class OpEdsController < ApplicationController
  before_action :set_op_ed, only: [:show, :edit, :update, :destroy]

  # GET /op_eds
  # GET /op_eds.json
  def index
    @op_eds = OpEd.all.order(created_at: :desc)
  end

  # GET /op_eds/1
  # GET /op_eds/1.json
  def show
  end

  # GET /op_eds/new
  def new
    @op_ed = OpEd.new
  end

  # GET /op_eds/1/edit
  def edit
  end

  # POST /op_eds
  # POST /op_eds.json
  def create
    @op_ed = OpEd.new(op_ed_params)

    respond_to do |format|
      if @op_ed.save
        format.html { redirect_to @op_ed, notice: 'Op ed was successfully created.' }
        format.json { render :show, status: :created, location: @op_ed }
      else
        format.html { render :new }
        format.json { render json: @op_ed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /op_eds/1
  # PATCH/PUT /op_eds/1.json
  def update
    respond_to do |format|
      if @op_ed.update(op_ed_params)
        format.html { redirect_to @op_ed, notice: 'Op ed was successfully updated.' }
        format.json { render :show, status: :ok, location: @op_ed }
      else
        format.html { render :edit }
        format.json { render json: @op_ed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /op_eds/1
  # DELETE /op_eds/1.json
  def destroy
    @op_ed.destroy
    respond_to do |format|
      format.html { redirect_to op_eds_url, notice: 'Op ed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_op_ed
      @op_ed = OpEd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def op_ed_params
      params.require(:op_ed).permit(:title, :content, :author)
    end
end
