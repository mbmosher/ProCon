class ConsController < ApplicationController

def create
	@dilema = Dilema.find(params[:dilema_id])
	@con = @dilema.cons.new(params[:con].permit(:name, :value)) 
  @dilema.con_total = @dilema.con_total + @con.value
  @dilema.save
  @con.save
	redirect_to dilema_path(@dilema)
end

def destroy
	@dilema = Dilema.find(params[:dilema_id])
	@con = @dilema.cons.find(params[:id])
	@dilema.con_total = @dilema.con_total - @con.value
  @dilema.save
	@con.destroy
	redirect_to dilema_path(@dilema)
end

end
