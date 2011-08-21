class BacklogItemsController < ApplicationController
  # GET /backlog_items
  # GET /backlog_items.xml
  def index
    @backlog_items = BacklogItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @backlog_items }
    end
  end

  # GET /backlog_items/1
  # GET /backlog_items/1.xml
  def show
    @backlog_item = BacklogItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @backlog_item }
    end
  end

  # GET /backlog_items/new
  # GET /backlog_items/new.xml
  def new
    @backlog_item = BacklogItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @backlog_item }
    end
  end

  # GET /backlog_items/1/edit
  def edit
    @backlog_item = BacklogItem.find(params[:id])
  end

  # POST /backlog_items
  # POST /backlog_items.xml
  def create
    @backlog_item = BacklogItem.new(params[:backlog_item])

    respond_to do |format|
      if @backlog_item.save
        format.html { redirect_to(@backlog_item, :notice => 'Backlog item was successfully created.') }
        format.xml  { render :xml => @backlog_item, :status => :created, :location => @backlog_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @backlog_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /backlog_items/1
  # PUT /backlog_items/1.xml
  def update
    @backlog_item = BacklogItem.find(params[:id])

    respond_to do |format|
      if @backlog_item.update_attributes(params[:backlog_item])
        format.html { redirect_to(@backlog_item, :notice => 'Backlog item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @backlog_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /backlog_items/1
  # DELETE /backlog_items/1.xml
  def destroy
    @backlog_item = BacklogItem.find(params[:id])
    @backlog_item.destroy

    respond_to do |format|
      format.html { redirect_to(backlog_items_url) }
      format.xml  { head :ok }
    end
  end
end
