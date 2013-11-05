class ProsController < ApplicationController

def create
	@dilema = Dilema.find(params[:dilema_id])
	@pro = @dilema.pros.new(params[:pro].permit(:name, :value)) 
	@dilema.pro_total = @dilema.pro_total + @pro.value
  @dilema.save
  @pro.save
	redirect_to dilema_path(@dilema)
end

def destroy
	@dilema = Dilema.find(params[:dilema_id])
	@pro = @dilema.pros.find(params[:id])
	@dilema.pro_total = @dilema.pro_total - @pro.value
	@dilema.save
	@pro.destroy
	redirect_to dilema_path(@dilema)
end

end
