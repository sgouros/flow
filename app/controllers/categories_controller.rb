class CategoriesController < ApplicationController

  before_filter :authenticate

  def index

    @categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end
  
  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category }
    end
  end
  
	def new
		@category = Category.new
	end

	def create
		@category = Category.new(params[:category])
		if @category.save
			redirect_to categories_path, :notice => t(:category_added)
		else
			render :action => 'new'
		end
	end

	def edit
    @category = Category.find(params[:id])
	end

	def update
    @category = Category.find(params[:id])
    
		if @category.update_attributes(params[:category])
			redirect_to categories_path, :notice => t(:category_updated)
		else
			render :action => 'edit'
		end
	end
	
	 def destroy
    @category = Category.find(params[:id])
  
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_path, notice: t(:category_deleted)}
      format.json { head :ok }
    end
  end



end
