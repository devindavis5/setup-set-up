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
        @budget = budget.to_i
        @use = use
        @size = size
        @color = color
        select_graphics
    end

    def select_graphics
        if @budget == 1000
            graph = Part.find_by(description: "Gigabyte GV-N1030OC-2GI Nvidia GeForce GT 1030 OC 2G Graphics Card")
            SetupPart.create(setup_id: self.id, part_id: graph.id)
        elsif @budget == 1500
            graph = Part.find_by(description: "Gigabyte Geforce GTX 1050 Ti OC Low Profile 4GB GDDR5 128 Bit PCI-E Graphic Card")
            SetupPart.create(setup_id: self.id, part_id: graph.id)
        elsif @budget == 2000
            graph = Part.find_by(description: "MSI Gaming GeForce GTX 1080 Ti 11GB GDRR5X DirectX 12 352-bit VR Ready Graphics Card")
            SetupPart.create(setup_id: self.id, part_id: graph.id)
        else
            graph = Part.find_by(description: "ASUS GeForce RTX 2080 Ti O11G Dual-fan OC Edition GDDR6 HDMI DP 1.4 USB Type-C graphics card")
            SetupPart.create(setup_id: self.id, part_id: graph.id)
        end
        select_processor
    end

    def select_processor
        if @budget == 1000
            if @use == "Video"
                procs = Part.find_by(description: "AMD Ryzen 5 3600 6-Core, 12-Thread Unlocked Desktop Processor with Wraith Stealth Cooler")
                SetupPart.create(setup_id: self.id, part_id: procs.id)
            else
                procs = Part.find_by(description: "Intel Core i5-9600K Desktop Processor 6 Cores up to 4.6 GHz Turbo unlocked LGA1151 300 Series 95W")
                SetupPart.create(setup_id: self.id, part_id: procs.id)
            end
        elsif @budget == 1500 || @budget == 2000
            if @use == "Video"
                procs = Part.find_by(description: "AMD Ryzen 9 3900X 12-core, 24-thread unlocked desktop processor with Wraith Prism LED Cooler")
                SetupPart.create(setup_id: self.id, part_id: procs.id)
            else
                procs = Part.find_by(description: "Intel Core i7-9700F Desktop Processor 8 Core 3 GHz speed (Up to 4.7 GHz)")
                SetupPart.create(setup_id: self.id, part_id: procs.id)
            end
        else
            if @use == "Video"
                procs = Part.find_by(description: "GAMD Ryzen Threadripper 2950X Processor")
                SetupPart.create(setup_id: self.id, part_id: procs.id)
            else
                procs = Part.find_by(description: "Intel Core i9-9900K Desktop Processor 8 Cores up to 5.0 GHz Turbo unlocked LGA1151 300 Series 95Wr")
                SetupPart.create(setup_id: self.id, part_id: procs.id)
            end
        end
        select_ram
    end

    def select_ram
        if @budget == 1000
            ram = Part.find_by(description: "Corsair Vengeance LPX 8GB (1 x 8GB) DDR4 DRAM 2400MHz C16 (PC4-19200) Memory Kit - Vengeance LPX Black")
            SetupPart.create(setup_id: self.id, part_id: ram.id)
        elsif @budget == 1500
            ram = Part.find_by(description: "Corsair Vengeance RGB Pro 16GB (2x8GB) DDR4 3200MHz C16 LED Desktop Memory - Black")
            SetupPart.create(setup_id: self.id, part_id: ram.id)
        else
            ram = Part.find_by(description: "Corsair Vengeance RGB Pro 32GB (2x16GB) DDR4 3200 (PC4-25600) C16 Desktop Memory - Black")
            SetupPart.create(setup_id: self.id, part_id: ram.id)
        end
        select_monitor
    end

    def select_monitor
        if @size == "Large"
            monitor = Part.find_by(description: "Dell 27 LED backlit LCD Monitor SE2719H IPS Full HD 1080p 1920 x 1080 at 60 Hz HDMI VGA,Black")
            SetupPart.create(setup_id: self.id, part_id: monitor.id)
        elsif @size == "Large or Average" && @budget >= 1000 
            monitor = Part.find_by(description: "Dell 27 LED backlit LCD Monitor SE2719H IPS Full HD 1080p 1920 x 1080 at 60 Hz HDMI VGA,Black")
            SetupPart.create(setup_id: self.id, part_id: monitor.id)
        else
            monitor = Part.find_by(description: "Sceptre 20 1600x900 75Hz Ultra Thin LED Monitor 2x HDMI VGA Built-in Speakers, Machine Black Wide Viewing Angle")
            SetupPart.create(setup_id: self.id, part_id: monitor.id)
        end
        select_mouse
    end

    def select_mouse
        if @color == "RGB"
            mouse = Part.find_by(description: "Razer Mamba Elite Wired Gaming Mouse: 16,000 DPI Optical Sensor - Chroma RGB Lighting - 9 Programmable Buttons")
            SetupPart.create(setup_id: self.id, part_id: mouse.id)
        else
            mouse = Part.find_by(description: "TECKNET 6-Button USB Wired Mouse with Side Buttons, Optical Computer Mouse with 1000/2000DPI")
            SetupPart.create(setup_id: self.id, part_id: mouse.id)
        end
        select_keyboard
    end

    def select_keyboard
        if @color == "RGB"
            key = Part.find_by(description: "Redragon K556 RGB LED Backlit Wired Mechanical Gaming Keyboard, Aluminum Base, 104 Standard Keys")
            SetupPart.create(setup_id: self.id, part_id: key.id)
        else
            key = Part.find_by(description: "iKBC CD108 v2 Mechanical Keyboard with Cherry MX Blue Switch for Windows and Mac")
            SetupPart.create(setup_id: self.id, part_id: key.id)
        end
        select_case
    end

    def select_case
        if @color == "RGB"
            kase = Part.find_by(description: "Apevia Aura-S-BK Mid Tower Gaming Case with 2 x Full-Size Tempered Glass Panel, 4 x RGB Fans, Black Frame")
            SetupPart.create(setup_id: self.id, part_id: kase.id)
        else
            kase = Part.find_by(description: "NZXT H510 - CA-H510B-BR - Compact ATX Mid-Tower PC Gaming Case - Front I/O USB Type-C Port")
            SetupPart.create(setup_id: self.id, part_id: kase.id)
        end
        select_fan
    end

    def select_fan
        if @color == "RGB"
            fan = Part.find_by(description: "ID-COOLING SE-234-ARGB CPU Cooler AM4 CPU Cooler 5V Addressable RGB Cooler")
            SetupPart.create(setup_id: self.id, part_id: fan.id)
        else
            fan = Part.find_by(description: "Cooler Master Hyper 212 Black Edition CPU Air Coolor, Silencio FP120 Fan, 4 CDC 2.0 Heatpipes")
            SetupPart.create(setup_id: self.id, part_id: fan.id)
        end
        ssd = Part.find_by(description: "SAMSUNG 860 PRO SSD 512GB - 2.5 Inch SATA III Internal Solid State Drive with MLC V-NAND Technology")
        SetupPart.create(setup_id: self.id, part_id: ssd.id)
        moth = Part.find_by(description: "GIGABYTE B365M DS3H (LGA1151/Intel/Micro ATX/USB 3.1 Gen 1 (USB3.0) Type A/DDR4/Motherboard)")
        SetupPart.create(setup_id: self.id, part_id: moth.id)
        power = Part.find_by(description: "EVGA 500W 80PLUS Certified ATX12V/EPS12V Power Supply 100-W1-0500-KR")
        SetupPart.create(setup_id: self.id, part_id: power.id)
    end

    def total_cost
        results = self.my_parts.map {|p| p.cost}.sum
        resultss = "%.2f" % results
    end

    def graphics_object
        self.my_parts.find {|p| p.name == "Graphics card"}
    end

    def processor_object
        self.my_parts.find {|p| p.name == "CPU"}
    end

    def mother_object
        self.my_parts.find {|p| p.name == "Motherboard"}
    end

    def ram_object
        self.my_parts.find {|p| p.name == "RAM"}
    end

    def ssd_object
        self.my_parts.find {|p| p.name == "SSD"}
    end

    def power_object
        self.my_parts.find {|p| p.name == "Power Supply"}
    end

    def monitor_object
        self.my_parts.find {|p| p.name == "Monitor"}
    end

    def mouse_object
        self.my_parts.find {|p| p.name == "Mouse"}
    end

    def keyboard_object
        self.my_parts.find {|p| p.name == "Keyboard"}
    end

    def tower_object
        self.my_parts.find {|p| p.name == "Tower"}
    end

    def fan_object
        self.my_parts.find {|p| p.name == "CPU Fan"}
    end

    def revise_setup(graphic:, cpu:, mother:, ram:, ssd:, power:, monitor:, mouse:, keyboard:, tower:, fan:)
        old_graphics = self.graphics_object.id
        old_setuppart = SetupPart.find_by(setup_id: self.id, part_id: old_graphics)
        old_setuppart.destroy
        SetupPart.create(setup_id: self.id, part_id: graphic)

        old_cpu = self.processor_object.id
        old_setuppart = SetupPart.find_by(setup_id: self.id, part_id: old_cpu)
        old_setuppart.destroy
        SetupPart.create(setup_id: self.id, part_id: cpu)

        old_mother = self.mother_object.id
        old_setuppart = SetupPart.find_by(setup_id: self.id, part_id: old_mother)
        old_setuppart.destroy
        SetupPart.create(setup_id: self.id, part_id: mother)

        old_ram = self.ram_object.id
        old_setuppart = SetupPart.find_by(setup_id: self.id, part_id: old_ram)
        old_setuppart.destroy
        SetupPart.create(setup_id: self.id, part_id: ram)

        old_ssd = self.ssd_object.id
        old_setuppart = SetupPart.find_by(setup_id: self.id, part_id: old_ssd)
        old_setuppart.destroy
        SetupPart.create(setup_id: self.id, part_id: ssd)

        old_power = self.power_object.id
        old_setuppart = SetupPart.find_by(setup_id: self.id, part_id: old_power)
        old_setuppart.destroy
        SetupPart.create(setup_id: self.id, part_id: power)

        old_monitor = self.monitor_object.id
        old_setuppart = SetupPart.find_by(setup_id: self.id, part_id: old_monitor)
        old_setuppart.destroy
        SetupPart.create(setup_id: self.id, part_id: monitor)

        old_mouse = self.mouse_object.id
        old_setuppart = SetupPart.find_by(setup_id: self.id, part_id: old_mouse)
        old_setuppart.destroy
        SetupPart.create(setup_id: self.id, part_id: mouse)

        old_keyboard = self.keyboard_object.id
        old_setuppart = SetupPart.find_by(setup_id: self.id, part_id: old_keyboard)
        old_setuppart.destroy
        SetupPart.create(setup_id: self.id, part_id: keyboard)

        old_tower = self.tower_object.id
        old_setuppart = SetupPart.find_by(setup_id: self.id, part_id: old_tower)
        old_setuppart.destroy
        SetupPart.create(setup_id: self.id, part_id: tower)

        old_fan = self.fan_object.id
        old_setuppart = SetupPart.find_by(setup_id: self.id, part_id: old_fan)
        old_setuppart.destroy
        SetupPart.create(setup_id: self.id, part_id: fan)
    end

    def all_graphics
        Part.all.select {|p| p.name == "Graphics card"}
    end

    def all_cpus
        Part.all.select {|p| p.name == "CPU"}
    end

    def all_mothers
        Part.all.select {|p| p.name == "Motherboard"}
    end

    def all_rams
        Part.all.select {|p| p.name == "RAM"}
    end

    def all_ssds
        Part.all.select {|p| p.name == "SSD"}
    end

    def all_powers
        Part.all.select {|p| p.name == "Power Supply"}
    end

    def all_monitors
        Part.all.select {|p| p.name == "Monitor"}
    end

    def all_mouses
        Part.all.select {|p| p.name == "Mouse"}
    end

    def all_keyboards
        Part.all.select {|p| p.name == "Keyboard"}
    end

    def all_towers
        Part.all.select {|p| p.name == "Tower"}
    end

    def all_fans
        Part.all.select {|p| p.name == "CPU Fan"}
    end
end
