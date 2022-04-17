class Instruction < ApplicationRecord
    has_many :sections
    has_many :repairs
    has_many :step, through: :repairs
end
