class Freebie < ActiveRecord::Base
    belongs_to :company
    belongs_to :dev

    def print_details
       # binding.pry
        " #{Dev.all.find(self.dev_id).name} owns a #{self.item_name} from #{Company.all.find(self.company_id).name}"
    end

end


# 
# 
#      Company -----< Freibe >------Dev
# 
# 
# 