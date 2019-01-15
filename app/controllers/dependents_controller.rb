class DependentsController < ApplicationController
  def index
      @dependents = Dependent.all
  end
 
  def show
      @dependent = Dependent.find(params[:id])
  end
  
  def create
      @dependent = Dependent.new(dependent_params)
      if @dependent.save
          redirect_to @dependent
      else
          render 'new'
      end
      end
 
      def update
          @dependent = Dependent.find(params[:id])
    if @dependent.update(dependent_params)
          redirect_to @dependent
      else 
        render 'edit'
    end 
end
 
  def edit
      @dependent = Dependent.find(params[:id])
  end
 
  def new
      @dependent = Dependent.new
  end
def destroy
    @dependent = Dependent.find(params[:id])
    @dependent.destroy
    redirect_to dependents_path
end
 
private
  def dependent_params
      params.require(:dependent).permit(:Essn, :Dependent_name, :Sex, :Bdate)
  end
end
