class PhoneNumber < ApplicationRecord
  belongs_to :lead

  validates_format_of :number,
      :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/,
      :message => "- must be in xxx-xxx-xxxx format."
end
