class Booking < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :start_time,
    :uniqueness => {:message => "Cette plage horaire n'est pas disponible. Veuillez SVP en choisir une autre."}

  validate :start_date_in_future, on: :create

  def start_date_in_future
    if start_time < Date.current
      errors.add(:start_time, "Vous avez choisi une date antérieure. Veuillez SVP en choisir une autre.")
    end
  end


end
