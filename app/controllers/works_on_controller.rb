class WorksOnController < ApplicationController
  def index
      @works_ons = WorksOn.all
  end
 
  def show
       @works_on = WorksOn.find(params[:id])
  end
  
  def create
      @works_on = WorksOn.new(works_on_params)
      if @works_on.save
          redirect_to @works_on
      else
          render 'new'
      end
      end
 
      def update
          @works_on = WorksOn.find(params[:id])
    if @works_on.update(works_on_params)
          redirect_to @works_on
      else 
        render 'edit'
    end 
end
 
  def edit
      @works_on = WorksOn.find(params[:id])
  end
 
  def new
      @works_on = WorksOn.new
  end
def destroy
    @works_on = WorksOn.find(params[:id])
    @works_on.destroy
    redirect_to works_ons_path
end
 
private
  def works_on_params
      params.require(:works_on).permit(:Essn, :Pnumber, :Hours)
  end
end
 
 
