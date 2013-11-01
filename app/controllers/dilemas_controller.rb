class DilemasController < ApplicationController

def new
	@post = Post.new
end

def create
	@dilema = Dilema.new(dilema_params)
 	# @dilema.author = current_user.email
  if @dilema.save
  	redirect_to @dilema
  else
  	render 'new'
  end
end

def show
	@dilema = Dilema.find(params[:id])
end

def index
	@dilemas = Dilema.all
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
