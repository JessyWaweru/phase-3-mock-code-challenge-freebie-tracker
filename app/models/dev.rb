class Dev < ActiveRecord::Base
has_many :freebies
has_many :companies, through: :freebies


def freebies
    super
end

def companies
    super
end
def received_one?(item_name)
    freebies.exists?(item_name: item_name)
end

def give_away(dev,freebie)
    freebie.update(dev:dev) if freebie.dev == self
end
end
