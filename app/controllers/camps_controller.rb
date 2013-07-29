class CampsController < ApplicationController
	def new
	end

def create
  @camp = Camp.new(params[:camps].permit(:title, :description))
 
  @camp.save
  redirect_to @camp
end

def show
	@camp = Camp.find(params[:id])
end

def index
	@camps = Camp.all
end

end
