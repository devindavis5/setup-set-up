class Category < ApplicationRecord
    has_many :parts

    # def find_parts
    #     if self.name == "Monitors"
    #         monitors
    #     elsif self.name == "CPU's"
    #         cpus
    #     elsif self.name == "GPU's"
    #         gpus
    #     elsif self.name == "Motherboards"
    #         motherboards
    #     elsif self.name == "Storages"
    #         storages
    #     elsif self.name == "Mice"
    #         mice
    #     elsif self.name == "Cases"
    #         kases
    #     elsif self.name == "Rams"
    #         ram
    #     elsif self.name == "Power Supplies"
    #         power_supplies
    #     elsif self.name == "Fans"
    #         fans
    #     else
    #         keyboards
    #     end
    # end

    
    
end




