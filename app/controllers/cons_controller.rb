class ConsController < ApplicationController

def create
	@dilema = Dilema.find(params[:dilema_id])
	@con = @dilema.cons.new(params[:con].permit(:name, :value)) 
  @dilema.addCon(@con.value)
  @con.save
	redirect_to dilema_path(@dilema)
end

def destroy
	@dilema = Dilema.find(params[:dilema_id])
	@con = @dilema.cons.find(params[:id])
	@dilema.addCon(@con.value * -1)
	@con.destroy
	redirect_to dilema_path(@dilema)
end

end
