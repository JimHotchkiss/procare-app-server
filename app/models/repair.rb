class Repair < ApplicationRecord
    has_many :steps
    has_one :takt_time
end
