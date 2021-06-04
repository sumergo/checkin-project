class Student < ApplicationRecord
    validates :first_name, :last_name, :graduation_date, presence: true 
end
