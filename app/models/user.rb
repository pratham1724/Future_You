class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  
  # enum role: [:trainer, :client]
  # enum role: { trainer: 0, client: 1 }
  # validates :role, inclusion: { in: ["trainer", "client"] }

  # after_initialize do
  #   if self.new_record?
  #     self.role ||= :client
  #   end
  # end
end

# class Trainer < User
#   has_many :appointments, foreign_key: 'trainer_id'
#   has_many :clients, through: :appointments
# end

# class Client < User
#   has_many :appointments, foreign_key: 'client_id'
#   has_many :trainers, through: :appointments
# end
