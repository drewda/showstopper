class QualityMeasuresController < ApplicationController
  # GET /quality_measures
  # GET /quality_measures.xml
  def index
    @quality_measures = QualityMeasure.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quality_measures }
    end
  end

  # GET /quality_measures/1
  # GET /quality_measures/1.xml
  def show
    @quality_measure = QualityMeasure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quality_measure }
    end
  end

  # GET /quality_measures/new
  # GET /quality_measures/new.xml
  def new
    @quality_measure = QualityMeasure.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quality_measure }
    end
  end

  # GET /quality_measures/1/edit
  def edit
    @quality_measure = QualityMeasure.find(params[:id])
  end

  # POST /quality_measures
  # POST /quality_measures.xml
  def create
    @quality_measure = QualityMeasure.new(params[:quality_measure])

    respond_to do |format|
      if @quality_measure.save
        format.html { redirect_to(@quality_measure, :notice => 'Quality measure was successfully created.') }
        format.xml  { render :xml => @quality_measure, :status => :created, :location => @quality_measure }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quality_measure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quality_measures/1
  # PUT /quality_measures/1.xml
  def update
    @quality_measure = QualityMeasure.find(params[:id])

    respond_to do |format|
      if @quality_measure.update_attributes(params[:quality_measure])
        format.html { redirect_to(@quality_measure, :notice => 'Quality measure was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quality_measure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quality_measures/1
  # DELETE /quality_measures/1.xml
  def destroy
    @quality_measure = QualityMeasure.find(params[:id])
    @quality_measure.destroy

    respond_to do |format|
      format.html { redirect_to(quality_measures_url) }
      format.xml  { head :ok }
    end
  end
end
