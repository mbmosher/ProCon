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
 	@dilema.result = '???'
  if @dilema.save
  	redirect_to @dilema
  else
  	render 'index'
  end
end

def show
	@dilema = Dilema.find(params[:id])
	result = @dilema.pro_total - @dilema.con_total
	if result > 0
	  @dilema.result = "PRO " + result.to_s
  end
  if result < 0
    @dilema.result = "CON " + result.abs.to_s
  end
  if result == 0
    @dilema.result = "??? 0"
  end
  @dilema.save
end

def index
	@dilemas = Dilema.where(user_id: current_user.id)
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
