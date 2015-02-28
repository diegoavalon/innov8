class ParticipantsController  < ApplicationController

	before_action :authenticate_user!

	def index
		@participants = Participant.all 
	end

	def new
		@participant = Participant.new
	end

	def create
		@participant = Participant.new(participant_params)
		if @participant.save
			flash[:notice] = "Entry Saved Successfully."
			redirect_to participant_path(@participant.id)
		else
			render 'new'
		end
	end

	def show
		@participant = Participant.find(params[:id])
	end

	def edit
	end

	def update
	end


	def destroy
	end

private

	def participant_params
		params.require(:participant).permit(:fname, :lname, :address, :city, :state, :zipcode, :email, :sales_area, :discipline, :participant_type, :age, :gender, :ethnicity, :height_ft, :height_in, :weight, :bra_size, :chest, :waist, :low_hip, :high_hip, :inseam, :thigh, :upper_arm, :sleeve_length, :shoe_size, :lf_width, :lf_heel_to_arch, :lf_heel_to_toe, :rf_width, :rf_heel_to_arch, :rf_heel_to_toe, :lh_palm_width_flat, :lh_palm_width_round, :lh_palm_length, :lh_middle_finger, :rh_palm_width_flat, :rh_palm_width_round, :rh_palm_length, :rh_middle_finger)
	end


end