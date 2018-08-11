class Company < ApplicationRecord
    validates :company_reg, uniqueness: {scope: :country}
    validates_presence_of :company_name, :industry, :country, :company_reg, :contact_person, :contact_num

end
