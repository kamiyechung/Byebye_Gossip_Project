class User < ApplicationRecord
 after_create :welcome_send

 def welcome_send
  UserMailer.welcome_email(self).deliver_now
 end

  validates :email, 
  presence: true,
  uniqueness: true,
  format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Adresse email s'il vous plait."}
  validates :password, length: {in: 6..20}
  validates :description, length: {maximum: 200}
  has_many :attendances
  has_many :events, through: :attendances
  has_many :events

end
