class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies


    def give_freebie (dev, item_name, value)
        # dev = DEV.new(name:)
        new_freebie = Freebie.new(item_name: item_name, value: value, company_id: self.id, dev_id: dev.id)
        new_freebie.save
    end
 
    def self.oldest_company
        self.all.find_by(founding_year: self.all.minimum(:founding_year))
    end



    # t.string "item_name"
    # t.integer "value"
    # t.integer "company_id"
    # t.integer "dev_id"


end


# 
# 
#      Company -----< Freibe >------Dev
# 
# 
# 