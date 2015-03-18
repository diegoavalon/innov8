class ParticipantsController  < ApplicationController

	before_action :authenticate_user!

	def index
		@search = Participant.search(params[:q])
		@participants = @search.result.page(params[:page])  
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
		@xxs = "7–7.4"
		@xs = "7.5–7.8"
		@s = "7.9–8.2"
		@m = "8.3–8.6" 
		@l = "8.7–9.0" 
		@xl = "9.1–9.2" 
		@xxl = "9.5–9.8" 
		@xxxl = "9.9–10.3"

		@participant = Participant.find(params[:id])
	end

	def edit
		@xxs = "7–7.4"
		@xs = "7.5–7.8"
		@s = "7.9–8.2"
		@m = "8.3–8.6" 
		@l = "8.7–9.0" 
		@xl = "9.1–9.2" 
		@xxl = "9.5–9.8" 
		@xxxl = "9.9–10.3"
		
		@participant = Participant.find(params[:id])
	end

	def update
		@participant = Participant.find(params[:id])
		if @participant.update(participant_params)
			flash[:notice] = "Participant Updated Successfully"
			redirect_to participant_path(@participant.id)
		else
			render 'edit'
		end
	end


	def destroy
		@participant = Participant.find(params[:id])
		@participant.destroy
		flash[:notice] = "Participant Successfully Deleted."
		redirect_to new_participant_path
	end

private

	def participant_params
		params.require(:participant).permit(:fname, :lname, :address, :city, :state, :zipcode, :email, :sales_area, :discipline, :participant_type, :age, :gender, :ethnicity, :height_ft, :height_in, :weight, :bra_size, :chest, :natural_waist, :low_hip, :high_hip, :inseam, :thigh, :upper_arm, :sleeve_length, :shoe_size, :lf_width, :lf_heel_to_arch, :lf_heel_to_toe, :rf_width, :rf_heel_to_arch, :rf_heel_to_toe, :lh_palm_width_flat, :lh_palm_width_round, :lh_palm_length, :lh_middle_finger, :rh_palm_width_flat, :rh_palm_width_round, :rh_palm_length, :rh_middle_finger, :tops_size, :alpha_bottoms, :numeric_bottoms, :comments, :phone, :stated_shoe_size, :stated_height_ft, :stated_height_in, :stated_pants_waist, :stated_pants_inseam, :stated_weight, :pant_waist)
	end


end