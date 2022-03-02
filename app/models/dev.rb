class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies


    def received_one?(item_name)
        # return false unless 
        Freebie.all.find_by(dev_id: self.id).item_name == item_name
    end
    
    def give_away(dev, freebie)

        found = Dev.find(freebie.id)
        if(found.id)
            freebie.update(dev_id: dev.id)
        else
            puts "Freebie not belongs to current dev"
        end

    end
    


end


# 
# 
#      Company -----< Freibe >------Dev
# 
# 
# 