class Appointment < ApplicationRecord
  # belongs_to :trainer, calss: :User
  # belongs_to :client, class: :User
  belongs_to :trainer
  belongs_to :client
end
