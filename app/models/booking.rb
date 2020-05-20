class Booking < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :start_time,
    :uniqueness => {:message => "Cette plage horaire n'est pas disponible. Veuillez SVP en choisir une autre."}

end
