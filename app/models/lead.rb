class Lead < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates :email, email: true
  validates :postal_code, presence: true
  validates :postal_code, zipcode: { country_code: :us }

  has_one :phone_number, dependent: :destroy
  accepts_nested_attributes_for :phone_number

end
