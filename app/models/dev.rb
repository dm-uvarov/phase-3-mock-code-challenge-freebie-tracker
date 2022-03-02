class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies


    def received_one?(item_name)
        # return false unless 
        #Freebies.all.where(item_name: item_name)
    end
 
    # def self.freebies
    #      # binding.pry
    #       self.freebies.all
    # end
    

    def give_away(dev, freebie)
        # dev = Dev.first
        # freebie = Freebie.first



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