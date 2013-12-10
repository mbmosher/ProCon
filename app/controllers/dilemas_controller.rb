class DilemasController < ApplicationController

def new
	@dilema = Dilema.new
end

def create
	@dilema = Dilema.new(dilema_params)
 	# @dilema.author = current_user.email
 	@dilema.user_id = current_user.id
 	@dilema.pro_total = 0
 	@dilema.con_total = 0
 	@dilema.result = 0
  if @dilema.save
  	redirect_to @dilema
  else
  	# render 'index'
  	redirect_to dilemas_path
  end
end

def show
	@dilema = Dilema.find(params[:id])
  @resultPrefix = @dilema.resultPrefix
end

def index
	@dilemas = current_user.dilemas
	@dilema = Dilema.new
end

def edit
	@dilema = Dilema.find(params[:id])
end

def update
	@dilema = Dilema.find(params[:id])
	
	if @post.update(dilema_params)
		redirect_to @dilema
	else
		render 'edit'
	end
end

def destroy
	@dilema = Dilema.find(params[:id])
	@dilema.destroy
	redirect_to dilemas_path
end

private

def dilema_params
	params.require(:dilema).permit(:decision)
end

end
