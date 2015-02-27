class ParticipantsController  < ApplicationController

	before_action :authenticate_user!

	def index
	end

	def new
		@participant = Participant.new
	end

	def create
	end

	def edit
	end

	def update
	end


	def destroy
	end



end