class MembersController < ApplicationController


	def index
		@members = Member.all.order(reputation: :desc)
	end

	def show
		@member = Member.find(params[:id])
	end

end
