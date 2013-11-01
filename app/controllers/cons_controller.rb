class ConsController < ApplicationController

def create
	@dilema = Dilema.find(params[:dilema_id])
	@con = @dilema.con.new(params[:con].permit(:name, :value)) 
    # @comment.commenter = current_user.email
    @con.save
	redirect_to dilema_path(@dilema)
end

def destroy
	@dilema = Dilema.find(params[:dilema_id])
	@con = @dilema.con.find(params[:id])
	@con.destroy
	redirect_to dilema_path(@dilema)
end

end
