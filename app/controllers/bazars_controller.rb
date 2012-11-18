class BazarsController < ApplicationController
  before_filter :authenticate_user!
  def index
    if(params[:user_id].present?)
     @bazars = Bazar.where("month = ? and year = ? and user_id = ?", params[:month], params[:year], params[:user_id])
    else
      @bazars = current_user.bazars
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bazars }
    end
  end

  # GET /bazars/1
  # GET /bazars/1.json
  def show
    @bazar = Bazar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bazar }
    end
  end

  # GET /bazars/new
  # GET /bazars/new.json
  def new
    @bazar = current_user.bazars.build()
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bazar }
    end
  end

  # GET /bazars/1/edit
  def edit
    @bazar = Bazar.find(params[:id])
  end

  # POST /bazars
  # POST /bazars.json
  def create
    @bazar = current_user.bazars.build(params[:bazar])

    respond_to do |format|
      if @bazar.save
        format.html { redirect_to @bazar, notice: 'Bazar was successfully created.' }
        format.json { render json: @bazar, status: :created, location: @bazar }
      else
        format.html { render action: "new" }
        format.json { render json: @bazar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bazars/1
  # PUT /bazars/1.json
  def update
    @bazar = Bazar.find(params[:id])

    respond_to do |format|
      if @bazar.update_attributes(params[:bazar])
        format.html { redirect_to @bazar, notice: 'Bazar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bazar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bazars/1
  # DELETE /bazars/1.json
  def destroy
    @bazar = Bazar.find(params[:id])
    @bazar.destroy

    respond_to do |format|
      format.html { redirect_to bazars_url }
      format.json { head :no_content }
    end
  end
end
