class Owner < ActiveRecord::Base
  validates :first_name, presence: true, uniqueness: false, length: {maximum: 255}
  validates :last_name, presence: true, uniqueness: false, length: {maximum: 255}
  validates :email, presence: true, uniqueness: true, length: {maximum: 255}, format: /@/


  before_save :normalize_phone_number

  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number
  end

end
