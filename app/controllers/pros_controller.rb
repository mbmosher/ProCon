class ProsController < ApplicationController

class ConsController < ApplicationController

def create
	@dilema = Dilema.find(params[:dilema_id])
	@pro = @dilema.pro.new(params[:pro].permit(:name, :value)) 
    # @comment.commenter = current_user.email
    @con.save
	redirect_to dilema_path(@dilema)
end

def destroy
	@dilema = Dilema.find(params[:dilema_id])
	@pro = @dilema.pro.find(params[:id])
	@pro.destroy
	redirect_to dilema_path(@dilema)
end

end

end
