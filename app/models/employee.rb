class Employee < ApplicationRecord
    belongs_to :company
    validates :name, :title, :company, presence: true 
    validates :name, length: { minimum: 5, 
        too_short: "%{count} characters is the minimum length allowed"}
end
