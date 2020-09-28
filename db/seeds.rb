User.destroy_all
Setup.destroy_all
Setup_Part.destroy_all
Part.destroy_all
Category.destroy_all

#Users
u1 = User.create(name: "Wesley", password_digest: "yeye12", username: "welly")
u2 = User.create(name: "Devin", password_digest: "555", username: "Dev")
u3 = User.create(name: "Bob", password_digest: "1234", username: "iambob")

#Setups
s1 = Setup.create(name: "Gaming Setup", user_id: u1.id)
s2 = Setup.create(name: "Coding Setup", user_id: u1.id)
s3 = Setup.create(name: "Photoshop Setup", user_id: u2.id)
s4 = Setup.create(name: "Multitasking Setup", user_id: u2.id)
s5 = Setup.create(name: "Setup 1", user_id: u3.id)
s6 = Setup.create(name: "Setup 2", user_id: u3.id)

#Categories
mon = Category.create(name: "Monitors")
cpu = Category.create(name: "CPU's")
gpu = Category.create(name: "GPU's")
moth = Category.create(name: "Motherboards")
stor = Category.create(name: "Storages")
mice = Category.create(name: "Mice")
kase = Category.create(name: "Cases")
ram = Category.create(name: "Rams")
power = Category.create(name: "Power Supplies")
fan = Category.create(name: "Fans")

#Parts
p1 = Part.create(name: "BenQ 24in", cost: 120, rating: 5, description: "24 inch monitor for gaming.", category_id: mon.id)
p2 = Part.create(name: "Intel i5 8400", cost: 200, rating: 4, description: "Intel Core i5-8400 Desktop Processor 6 Cores up to 4.0 GHz LGA 1151 300 Series 65W", category_id: cpu.id)
p3 = Part.create(name: "B360M Pro4", cost: 75, rating: 3, description: "ASRock B360M PRO4 LGA1151/Intel B360/DDR4/Quad CrossFireX/SATA3&USB3.1/M.2/GbE/MicroATX Motherboard", category_id: moth.id)
p4 = Part.create(name: "GTX 1050Ti", cost: 160, rating: 5, description: "Gigabyte Geforce GTX 1050 Ti OC 4GB GDDR5 128 Bit PCI-E Graphic Card (GV-N105TOC-4GD)", category_id: gpu.id)
p5 = Part.create(name: "860 EVO", cost: 100, rating: 5, description: "Samsung 860 EVO MZ-76E500E 500 GB Solid State Drive - SATA (SATA/600) - 2.5' Drive", category_id: stor.id)
p6 = Part.create(name: "BenQ Zowie", cost: 70, rating: 5, description: "BenQ Zowie EC2 Ergonomic Gaming Mouse for Esports | Professional Grade Performance | Driverless | FPS Matte Black Non-Slip Coating | Medium Size", category_id: mice.id)
p7 = Part.create(name: "Thermaltake 7 blade", cost: 20, rating: 2, description: "Thermaltake 7-bladed 92mm 4-Pins PWM Aluminum Extrusion CPU Cooling Fan for Intel Core i7/i5/i3 CLP0556-B", category_id: fan.id)
p8 = Part.create(name: "Corsair Vengeance LPX 16GB", cost: 70, rating: 5, description: "Corsair Vengeance LPX 16GB (2 X 8GB) DDR4 3600 (PC4-28800) C18 1.35V Desktop Memory - Black", category_id: ram.id)
p9 = Part.create(name: "Cooler Master MasterBox", cost: 50, rating: 3, description: "Cooler Master MasterBox Q300L Micro-ATX Tower with Magnetic Design Dust Filter, Transparent Acrylic Side Panel, Adjustable I/O & Fully Ventilated Airflow, Black (MCB-Q300L-KANN-S00)", category_id: kase.id)
p10 = Part.create(name: "Cooler Master 750", cost: 110, rating: 4, description: "Cooler Master MPY-7501-AFAAG-US MWE 750 Gold Full Modular, 80+ Gold Certified 750W Power Supply, 5 Year Warranty", category_id: power.id)

#Setup_Parts
sp1 = Setup_Part.create(setup_id: s1.id, part_id: p1.id)
sp2 = Setup_Part.create(setup_id: s1.id, part_id: p2.id)
sp3 = Setup_Part.create(setup_id: s1.id, part_id: p3.id)
sp4 = Setup_Part.create(setup_id: s1.id, part_id: p4.id)
sp5 = Setup_Part.create(setup_id: s1.id, part_id: p5.id)
sp6 = Setup_Part.create(setup_id: s1.id, part_id: p6.id)
sp7 = Setup_Part.create(setup_id: s1.id, part_id: p7.id)
sp8 = Setup_Part.create(setup_id: s1.id, part_id: p8.id)
sp9 = Setup_Part.create(setup_id: s1.id, part_id: p9.id)
sp10 = Setup_Part.create(setup_id: s1.id, part_id: p10.id)
sp11 = Setup_Part.create(setup_id: s2.id, part_id: p10.id)


