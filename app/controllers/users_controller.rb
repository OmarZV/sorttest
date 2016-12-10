class UsersController < ApplicationController
before_action :authenticate_user!
before_action :set_user, only: [:show, :edit, :update, :destroy]
	
	def index
	@items = Item.all	
	Items.order('likes_count')
	end

	def show
	@items = Item.find(params[:id])
	end

	
	private
	
	def set_user
		@item = Item.find(params[:id])
	end
end
