class QualityDimensionsController < ApplicationController
  # GET /quality_dimensions
  # GET /quality_dimensions.xml
  def index
    @quality_dimensions = QualityDimension.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quality_dimensions }
    end
  end

  # GET /quality_dimensions/1
  # GET /quality_dimensions/1.xml
  def show
    @quality_dimension = QualityDimension.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quality_dimension }
    end
  end

  # GET /quality_dimensions/new
  # GET /quality_dimensions/new.xml
  def new
    @quality_dimension = QualityDimension.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quality_dimension }
    end
  end

  # GET /quality_dimensions/1/edit
  def edit
    @quality_dimension = QualityDimension.find(params[:id])
  end

  # POST /quality_dimensions
  # POST /quality_dimensions.xml
  def create
    @quality_dimension = QualityDimension.new(params[:quality_dimension])

    respond_to do |format|
      if @quality_dimension.save
        format.html { redirect_to(@quality_dimension, :notice => 'Quality dimension was successfully created.') }
        format.xml  { render :xml => @quality_dimension, :status => :created, :location => @quality_dimension }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quality_dimension.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quality_dimensions/1
  # PUT /quality_dimensions/1.xml
  def update
    @quality_dimension = QualityDimension.find(params[:id])

    respond_to do |format|
      if @quality_dimension.update_attributes(params[:quality_dimension])
        format.html { redirect_to(@quality_dimension, :notice => 'Quality dimension was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quality_dimension.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quality_dimensions/1
  # DELETE /quality_dimensions/1.xml
  def destroy
    @quality_dimension = QualityDimension.find(params[:id])
    @quality_dimension.destroy

    respond_to do |format|
      format.html { redirect_to(quality_dimensions_url) }
      format.xml  { head :ok }
    end
  end
end
