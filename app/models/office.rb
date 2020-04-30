class Office < ApplicationRecord
    # Office = "join table" between Building and Company
    # keeps track of No. of Floors a company has in a Building
    # ie. Flatiron has 5 floors in WeWork Seattle == 5 offices

    belongs_to :building
    belongs_to :company
    validates :floor, numericality: { only_integer: true} 
    validates :building, :company, :floor, presence: true
end
