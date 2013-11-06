class ProsController < ApplicationController

def create
	@dilema = Dilema.find(params[:dilema_id])
	@pro = @dilema.pros.new(params[:pro].permit(:name, :value)) 
	@dilema.addPro(@pro.value)
  @pro.save
	redirect_to dilema_path(@dilema)
end

def destroy
	@dilema = Dilema.find(params[:dilema_id])
	@pro = @dilema.pros.find(params[:id])
	@dilema.addPro(@pro.value * -1)
	@pro.destroy
	redirect_to dilema_path(@dilema)
end

end
