class Section < ApplicationRecord
    belongs_to :instruction
    has_many :sub_sections
   

end
