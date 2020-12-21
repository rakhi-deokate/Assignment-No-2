class AuthorTabsController < ApplicationController
  before_action :set_author_tab, only: [:show, :edit, :update, :destroy]

  # GET /author_tabs
  # GET /author_tabs.json
  def index
    @author_tabs = AuthorTab.all
  end

  # GET /author_tabs/1
  # GET /author_tabs/1.json
  def show
  end

  # GET /author_tabs/new
  def new
    @author_tab = AuthorTab.new
  end

  # GET /author_tabs/1/edit
  def edit
  end

  # POST /author_tabs
  # POST /author_tabs.json
  def create
    @author_tab = AuthorTab.new(author_tab_params)

    respond_to do |format|
      if @author_tab.save
        format.html { redirect_to @author_tab, notice: 'Author tab was successfully created.' }
        format.json { render :show, status: :created, location: @author_tab }
      else
        format.html { render :new }
        format.json { render json: @author_tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /author_tabs/1
  # PATCH/PUT /author_tabs/1.json
  def update
    respond_to do |format|
      if @author_tab.update(author_tab_params)
        format.html { redirect_to @author_tab, notice: 'Author tab was successfully updated.' }
        format.json { render :show, status: :ok, location: @author_tab }
      else
        format.html { render :edit }
        format.json { render json: @author_tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /author_tabs/1
  # DELETE /author_tabs/1.json
  def destroy
    @author_tab.destroy
    respond_to do |format|
      format.html { redirect_to author_tabs_url, notice: 'Author tab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author_tab
      @author_tab = AuthorTab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def author_tab_params
      params.require(:author_tab).permit(:author_name, :date_of_birth)
    end
end
