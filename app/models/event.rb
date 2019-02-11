class Event < ApplicationRecord
  
  def multiple_of_5
    if duration % 5 == 0
      return true
    else
      return false
    end
  end

  has_many :attendances
  has_many :users, through: :attendances
  belongs_to :user
  
  validates :description, length: {in: 20..1000}
  validates :price, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 1000}
  validates :location, presence: true
  validates :duration, numericality: {only_integer: true}, if: :multiple_of_5
  validates :start_date, presence: true

 

  def is_started
    self.start_date < Time.now
  end

end
