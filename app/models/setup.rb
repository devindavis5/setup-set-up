class Setup < ApplicationRecord
    belongs_to :user
    has_many :setup_parts

    validates(:name, {presence: true})
    validates(:budget, {presence: true})
    validates(:use, {presence: true})
    validates(:size, {presence: true})
    validates(:color, {presence: true})

    def my_parts
        self.setup_parts.map do |sp|
            sp.part
        end
    end

    def select_parts(name:, user_id:, budget:, use:, size:, color:)
        @budget = budget
        @use = use
        @size = size
        @color = color

        ssd = Part.find_by(description: "SAMSUNG 860 PRO SSD 512GB - 2.5 Inch SATA III Internal Solid State Drive with MLC V-NAND Technology (MZ-76P512BW)")
        SetupPart.create(setup_id: self.id, part_id: ssd.id)
        moth = Part.find_by(description: "GIGABYTE B365M DS3H (LGA1151/Intel/Micro ATX/USB 3.1 Gen 1 (USB3.0) Type A/DDR4/Motherboard)")
        SetupPart.create(setup_id: self.id, part_id: moth.id)
        power = Part.find_by(description: "EVGA 500W 80PLUS Certified ATX12V/EPS12V Power Supply 100-W1-0500-KR")
        SetupPart.create(setup_id: self.id, part_id: power.id)
        select_graphics
    end

    def select_graphics
        select_processor
    end

    def select_processor
        select_ram
    end

    def select_ram
        select_monitor
    end

    def select_monitor
        select_mouse
    end

    def select_mouse
        select_keyboard
    end

    def select_keyboard
        select_case
    end

    def select_case
        select_fan
    end

    def select_fan
        if @color == "RGB"
            fan = Part.find_by(description: "ID-COOLING SE-234-ARGB CPU Cooler AM4 CPU Cooler 5V Addressable RGB Cooler 4 Heatpipes CPU Air Cooler 120mm PWM Fan, Intel/AMD")
            SetupPart.create(setup_id: self.id, part_id: fan.id)
        else
            fan = Part.find_by(description: "Cooler Master Hyper 212 Black Edition CPU Air Coolor, Silencio FP120 Fan, 4 CDC 2.0 Heatpipes, Anodized Gun-Metal Black, Brushed Nickel Fins for AMD Ryzen/Intel LGA1200/1151")
            SetupPart.create(setup_id: self.id, part_id: fan.id)
        end
    end
end
