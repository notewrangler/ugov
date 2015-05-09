class PunditsController < ApplicationController

	def index
		@pundits = Pundit.all.order(reputation: :desc)
	end

	def show
		@pundit = Pundit.find(params[:id])
	end


end
