class Instruction < ApplicationRecord
    has_many :sections
    has_many :sub_sections, through: :sections
    
end
