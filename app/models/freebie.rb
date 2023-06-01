class Freebie < ActiveRecord::Base
belongs_to :company
belongs_to :dev

def dev
    Dev.find(dev_id)
end

def company
 Company.find(company_id)
end

def print_details
    "#{dev.name} owns a #{item_name} from #{company.name}"
end

end
