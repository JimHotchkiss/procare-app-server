class Instruction < ApplicationRecord
    has_many :sections
    has_many :repairs
    has_many :steps, through: :repairs
end
