class UsersController < ApplicationController

	before_filter :authenticate
	before_filter :authenticate_admin, :except => [:show, :edit, :update, :index]
  def index

    @users = User.order.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
  
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @applicant }
    end
  end
  
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		if @user.save
			redirect_to users_path, :notice => t(:user_added)
		else
			render :action => 'new'
		end
	end

	def edit
		 if admin?
      @user = User.find(params[:id])
    else
      @user = current_user
    end
	end

	def update
    params[:user][:department_ids] ||= [] # το βάζουμε για όταν ξετσεκάρουμε τελείως τα departments http://railscasts.com/episodes/17-habtm-checkboxes?view=asciicast
		
    if admin?
      @user = User.find(params[:id])
    else
      @user = current_user
    end
    
		if @user.update_attributes(params[:user])
			redirect_to :root, :notice => t(:user_updated)
		else
			render :action => 'edit'
		end
	end
	
	 def destroy
    @user = User.find(params[:id])
  
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_path, notice: t(:user_deleted)}
      format.json { head :ok }
    end
  end

end
