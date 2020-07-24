class Company < ApplicationRecord
    has_many :employees
    has_many :offices
    has_many :buildings, through: :offices
    validates :name, presence: true 

    # ie. Flatiron has 5 floors in WeWork Seattle ($20/fl.) => 5 offices * 20 = $100
    # ie. Flatiron has 3 floors in WeWork NYC ($50/fl.) => 3 offices * 50 = $150
    # Flatiron's total rent = $250
    
    # No. of offices * buildings' rent_per_floor
    # sum together all office totals
    def total_rent
        count = 0
        self.offices.map do |office|
            count+= office.building.rent_per_floor
        end
        count
    end
end
