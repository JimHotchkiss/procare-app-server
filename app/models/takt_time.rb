class TaktTime < ApplicationRecord
    belongs_to :repair
    has_many :cycle_times
end
