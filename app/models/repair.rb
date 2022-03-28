class Repair < ApplicationRecord
    has_one :takt_time
   

    def self.current_takt_time(repair_id)
        Repair.find_by(repair_id).takt_time
    end 
end
