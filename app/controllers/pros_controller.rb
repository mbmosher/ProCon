class ProsController < ApplicationController

def create
	@dilema = Dilema.find(params[:dilema_id])
	@pro = @dilema.pros.new(params[:pro].permit(:name, :value)) 
    # @comment.commenter = current_user.email
    @pro.save
	redirect_to dilema_path(@dilema)
end

def destroy
	@dilema = Dilema.find(params[:dilema_id])
	@pro = @dilema.pros.find(params[:id])
	@pro.destroy
	redirect_to dilema_path(@dilema)
end

end
