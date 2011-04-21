class Api::MediaFilesController < ApplicationController  
  # GET /media_files
  # GET /media_files.xml
  def index
    @media_files = MediaFile.all.shuffle

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @media_files }
      format.json  { render :json => @media_files, :methods => [:tag_list, :image_url] }
    end
  end

  # GET /media_files/1
  # GET /media_files/1.xml
  def show
    @media_file = MediaFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @media_file }
    end
  end

  # GET /media_files/new
  # GET /media_files/new.xml
  def new
    @media_file = MediaFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @media_file }
    end
  end

  # GET /media_files/1/edit
  def edit
    @media_file = MediaFile.find(params[:id])
  end

  # POST /media_files
  # POST /media_files.xml
  def create
    @media_file = MediaFile.new(params[:media_file])

    respond_to do |format|
      if @media_file.save
        format.html { redirect_to(@media_file, :notice => 'Media file was successfully created.') }
        format.xml  { render :xml => @media_file, :status => :created, :location => @media_file }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @media_file.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /media_files/1
  # PUT /media_files/1.xml
  def update
    @media_file = MediaFile.find(params[:id])

    respond_to do |format|
      if @media_file.update_attributes(params[:media_file])
        format.html { redirect_to(@media_file, :notice => 'Media file was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @media_file.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /media_files/1
  # DELETE /media_files/1.xml
  def destroy
    @media_file = MediaFile.find(params[:id])
    @media_file.destroy

    respond_to do |format|
      format.html { redirect_to(media_files_url) }
      format.xml  { head :ok }
    end
  end
end
