class AuthorTable1sController < ApplicationController
  before_action :set_author_table1, only: [:show, :edit, :update, :destroy]

  # GET /author_table1s
  # GET /author_table1s.json
  def index
    @author_table1s = AuthorTable1.all
  end

  # GET /author_table1s/1
  # GET /author_table1s/1.json
  def show
  end

  # GET /author_table1s/new
  def new
    @author_table1 = AuthorTable1.new
  end

  # GET /author_table1s/1/edit
  def edit
  end

  # POST /author_table1s
  # POST /author_table1s.json
  def create
    @author_table1 = AuthorTable1.new(author_table1_params)

    respond_to do |format|
      if @author_table1.save
        format.html { redirect_to @author_table1, notice: 'Author table1 was successfully created.' }
        format.json { render :show, status: :created, location: @author_table1 }
      else
        format.html { render :new }
        format.json { render json: @author_table1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /author_table1s/1
  # PATCH/PUT /author_table1s/1.json
  def update
    respond_to do |format|
      if @author_table1.update(author_table1_params)
        format.html { redirect_to @author_table1, notice: 'Author table1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @author_table1 }
      else
        format.html { render :edit }
        format.json { render json: @author_table1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /author_table1s/1
  # DELETE /author_table1s/1.json
  def destroy
    @author_table1.destroy
    respond_to do |format|
      format.html { redirect_to author_table1s_url, notice: 'Author table1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author_table1
      @author_table1 = AuthorTable1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def author_table1_params
      params.require(:author_table1).permit(:author_name, :date_of_birth)
    end
end
