class Attendance < ApplicationRecord
  after_create :attendee_send

  def attendee_send
   UserMailer.attendee_email(event.user).deliver_now
  end

  belongs_to :user
  belongs_to :event
end
