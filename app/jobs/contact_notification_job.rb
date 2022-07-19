class ContactNotificationJob < ApplicationJob
  queue_as :default

  def perform(message)
    ContactMailer.submitted(message).deliver_now
  end
end
