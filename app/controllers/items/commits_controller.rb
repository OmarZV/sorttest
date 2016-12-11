class Items::CommitsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_book
	
	def create
		
		@item.commits.where(user_id: current_user.id).first_or_create
		
				
		respond_to do |format|
			format.html {redirect_to @item}
			format.js
		end
	end

	
	def destroy
		@item.commits.where(user_id: current_user.id).destroy_all
		
		respond_to do |format|
			format.html {redirect_to @item}
			format.js
		end
	end

private
	
	def set_book
		@item = Item.find(params[:item_id])
	end
end