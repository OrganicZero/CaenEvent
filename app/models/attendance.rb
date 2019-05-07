class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :user
    after_create :eventmail_send

  def eventmail_send
    EventmailerMailer.eventmail(self).deliver_now
  end
end
