class Company < ActiveRecord::Base
has_many :freebies
has_many :devs, through: :freebies
def freebies
    super
end

def devs
    super
end
def give_freebie(dev,item_name,value)
    Freebie.create(dev: dev,company: self, item_name: item_name,value:value)
end

def oldest_company
    Company.order(:founding_year).first
end
end
