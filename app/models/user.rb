class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :admin, :inclusion => {:in => [true, false]}

  has_many :admins


  def is_admin?
  	self.admin == true
  end

  # def active_for_authentication? 
  #   super && approved? 
  # end 

  # def inactive_message 
  #   if !approved? 
  #     :not_approved 
  #   else 
  #     super :approved # Use whatever other message 
  #   end 
  # end

end
