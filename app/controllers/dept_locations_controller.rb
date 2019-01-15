class DeptLocationsController < ApplicationController
  def index
      @dept_locations = DeptLocation.all
  end
 
  def show
       @dept_location = DeptLocation.find(params[:id])
  end
  
  def create
      @dept_location = DeptLocation.new(dept_location_params)
      if @dept_location.save
          redirect_to @dept_location
      else
          render 'new'
      end
      end
 
      def update
          @dept_location = DeptLocation.find(params[:id])
    if @dept_location.update(dept_location_params)
          redirect_to @dept_location
      else 
        render 'edit'
    end 
end
 
  def edit
      @dept_location = DeptLocation.find(params[:id])
  end
 
  def new
      @dept_location = DeptLocation.new
  end
def destroy
    @dept_location = DeptLocation.find(params[:id])
    @dept_location.destroy
    redirect_to dept_locations_path
end
 
private
  def dept_location_params
      params.require(:dept_location).permit(:Dnumber, :Dlocation)
  end
end
 
 
 
