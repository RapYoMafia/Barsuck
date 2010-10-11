class CheckUpdatesController < ApplicationController
  # GET /check_updates
  # GET /check_updates.xml
  def index
    @check_updates = CheckUpdate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @check_updates }
    end
  end

  # GET /check_updates/1
  # GET /check_updates/1.xml
  def show
    @check_update = CheckUpdate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @check_update }
    end
  end

  # GET /check_updates/new
  # GET /check_updates/new.xml
  def new
    @check_update = CheckUpdate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @check_update }
    end
  end

  # GET /check_updates/1/edit
  def edit
    @check_update = CheckUpdate.find(params[:id])
  end

  # POST /check_updates
  # POST /check_updates.xml
  def create
    @check_update = CheckUpdate.new(params[:check_update])

    respond_to do |format|
      if @check_update.save
        format.html { redirect_to(@check_update, :notice => 'Check update was successfully created.') }
        format.xml  { render :xml => @check_update, :status => :created, :location => @check_update }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @check_update.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /check_updates/1
  # PUT /check_updates/1.xml
  def update
    @check_update = CheckUpdate.find(params[:id])

    respond_to do |format|
      if @check_update.update_attributes(params[:check_update])
        format.html { redirect_to(@check_update, :notice => 'Check update was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @check_update.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /check_updates/1
  # DELETE /check_updates/1.xml
  def destroy
    @check_update = CheckUpdate.find(params[:id])
    @check_update.destroy

    respond_to do |format|
      format.html { redirect_to(check_updates_url) }
      format.xml  { head :ok }
    end
  end
end
