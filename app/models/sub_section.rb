class SubSection < ApplicationRecord
    belongs_to :section
    has_many :sub_sub_sections
   
end
