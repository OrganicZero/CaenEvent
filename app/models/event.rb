class Event < ApplicationRecord
	belongs_to :user
	has_many :attendances 
	has_many :users, through: :attendances
	validate :expiration_date_cannot_be_in_the_past
	validate :modulo_duration
	validates :title,presence: true,length: { minimum: 5, maximum: 140 }
	validates :description,presence: true,length: { minimum: 20, maximum: 1000 }
	validates :price,presence: true,numericality: { only_integer: true, greater_than: 1 , less_than_or_equal_to: 1000 }
	validates :location,presence: true 
  def expiration_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end
     def modulo_duration
    if duration.present? && duration % 5 !=0 && duration >= 0
      errors.add(:start_date, "can't be in the past")
    end
  end
  def modulo_price
    if duration.present? && duration % 5 !=0 && duration >= 0
      errors.add(:start_date, "can't be in the past")
    end
  end
end
