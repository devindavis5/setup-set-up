User.destroy_all
Setup.destroy_all
SetupPart.destroy_all
Part.destroy_all
Category.destroy_all

#Users
u1 = User.create(name: "Wesley", password: "yeye12", username: "welly")
u2 = User.create(name: "Devin", password: "555555", username: "Dev")
u3 = User.create(name: "Bob", password: "123456", username: "iambob")

#Setups
# s1 = Setup.create(name: "Gaming Setup", user_id: u1.id, budget: )
# s2 = Setup.create(name: "Coding Setup", user_id: u1.id)
# s3 = Setup.create(name: "Photoshop Setup", user_id: u2.id)
# s4 = Setup.create(name: "Multitasking Setup", user_id: u2.id)
# s5 = Setup.create(name: "Setup 1", user_id: u3.id)
# s6 = Setup.create(name: "Setup 2", user_id: u3.id)

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
key = Category.create(name: "Keyboards")

#PARTS - Need One From Each Category
very_high_graphics = Part.create(name: "Graphics card", cost: 1499.00, rating: 4.4, description: "ASUS GeForce RTX 2080 Ti O11G Dual-fan OC Edition GDDR6 HDMI DP 1.4 USB Type-C graphics card", category_id: gpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/91bG2qFc7TL._AC_SL1500_.jpg", link: "https://www.amazon.com/ASUS-GeForce-Overclocked-Graphics-ROG-STRIX-RTX-2080-O11G/dp/B07GJYS2WM/ref=sr_1_5?dchild=1&keywords=2080%2Bti%2Bgraphics%2Bcard&qid=1601476867&sr=8-5&th=1")
high_graphics = Part.create(name: "Graphics card", cost: 749.99, rating: 4.3, description: "MSI Gaming GeForce GTX 1080 Ti 11GB GDRR5X DirectX 12 352-bit VR Ready Graphics Card", category_id: gpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/81gX6P4JtzL._AC_SL1500_.jpg", link: "https://www.amazon.com/MSI-GTX-1080-TI-11G/dp/B07KDL7DSS/ref=sr_1_9?dchild=1&keywords=1080+ti&pd_rd_r=efde87d0-de08-4528-ab38-62307fd60363&pd_rd_w=3MDyt&pd_rd_wg=ogSDu&pf_rd_p=0ec05f25-9534-48fe-9c3e-40b89957230e&pf_rd_r=8FCE42SSP64KC7P4KH62&qid=1601476989&sr=8-9")
med_graphics = Part.create(name: "Graphics card", cost: 309.99, rating: 4.7, description: "GeForce RTX 2060 KO Gaming, 6GB GDDR6, Dual Fans", category_id: gpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71rG9HIpGSL._AC_SL1500_.jpg", link: "https://www.amazon.com/EVGA-06G-P4-2066-KR-GeForce-Gaming-Backplate/dp/B083GH7LXW/ref=sr_1_1?dchild=1&keywords=2060&qid=1601662090&s=electronics&sr=1-1")
mid_graphics = Part.create(name: "Graphics card", cost: 159.99, rating: 4.5, description: "Gigabyte Geforce GTX 1050 Ti OC Low Profile 4GB GDDR5 128 Bit PCI-E Graphic Card", category_id: gpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/91RlSpgv9SL._AC_SL1500_.jpg", link: "https://www.amazon.com/Gigabyte-Geforce-Profile-Graphic-GV-N105TOC-4GL/dp/B06WWLWWJM/ref=sr_1_1?dchild=1&keywords=1050ti&qid=1601477071&sr=8-1")
low_graphics = Part.create(name: "Graphics card", cost: 88.99, rating: 4.5, description: "Gigabyte GV-N1030OC-2GI Nvidia GeForce GT 1030 OC 2G Graphics Card", category_id: gpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/919lkVdI%2BbL._AC_SL1500_.jpg", link: "https://www.amazon.com/Gigabyte-GV-N1030OC-2GI-Nvidia-GeForce-Graphics/dp/B07646VQ6T/ref=sr_1_3?dchild=1&keywords=1030&qid=1601477219&sr=8-3")


high_video_proces = Part.create(name: "CPU", cost: 955.45, rating: 4.7, description: "GAMD Ryzen Threadripper 2950X Processor", category_id: cpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/61DQNLHa6BL._AC_SL1442_.jpg", link: "https://www.amazon.com/gp/product/B07GFN6CVF/ref=ox_sc_act_title_1?smid=A20NV9CRQIRRW5&psc=1")
mid_video_proces = Part.create(name: "CPU", cost: 429.99, rating: 4.9, description: "AMD Ryzen 9 3900X 12-core, 24-thread unlocked desktop processor with Wraith Prism LED Cooler", category_id: cpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71uRPWxoAaL._AC_SL1500_.jpg", link: "https://www.amazon.com/AMD-Ryzen-3900X-24-Thread-Processor/dp/B07SXMZLP9/ref=sr_1_4?dchild=1&keywords=2950x&qid=1601478148&s=electronics&sr=1-4")
low_video_proces = Part.create(name: "CPU", cost: 199.99, rating: 4.8, description: "AMD Ryzen 5 3600 6-Core, 12-Thread Unlocked Desktop Processor with Wraith Stealth Cooler", category_id: cpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/716hAjT1uUL._AC_SL1500_.jpg", link: "https://www.amazon.com/AMD-Ryzen-3600-12-Thread-Processor/dp/B07STGGQ18/ref=sr_1_4?dchild=1&keywords=ryzen+12-core&qid=1601478320&s=electronics&sr=1-4")
high_design_proces = Part.create(name: "CPU", cost: 349.59, rating: 4.8, description: "Intel Core i9-9900K Desktop Processor 8 Cores up to 5.0 GHz Turbo unlocked LGA1151 300 Series 95Wr", category_id: cpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71zXd0YZKQL._AC_SL1500_.jpg", link: "https://www.amazon.com/Intel-i9-9900K-Desktop-Processor-Unlocked/dp/B005404P9I/ref=sr_1_2?crid=HA35L90SLK9J&dchild=1&keywords=i-9+9900k&qid=1601478520&s=electronics&sprefix=i-9%2Celectronics%2C175&sr=1-2")
mid_design_proces = Part.create(name: "CPU", cost: 259.99, rating: 4.8, description: "Intel Core i7-9700F Desktop Processor 8 Core 3 GHz speed (Up to 4.7 GHz)", category_id: cpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71zXd0YZKQL._AC_SL1500_.jpg", link: "https://www.amazon.com/Intel-i7-9700F-Desktop-Processor-Graphics/dp/B07S8DWXT3/ref=sr_1_4?crid=2S0GDUV2ZIBN4&dchild=1&keywords=intel+core+i7&qid=1601478702&s=electronics&sprefix=intel+core%2Celectronics%2C187&sr=1-4")
low_design_proces = Part.create(name: "CPU", cost: 199.99, rating: 4.8, description: "Intel Core i5-9600K Desktop Processor 6 Cores up to 4.6 GHz Turbo unlocked LGA1151 300 Series 95W", category_id: cpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71zXd0YZKQL._AC_SL1500_.jpg", link: "https://www.amazon.com/Intel-i5-9600K-Desktop-Processor-Unlocked/dp/B07HHLX1R8/ref=sr_1_2?dchild=1&keywords=i-5+processor&qid=1601479074&s=electronics&sr=1-2")

motherboard = Part.create(name: "Motherboard", cost: 73.99, rating: 4.4, description: "GIGABYTE B365M DS3H (LGA1151/Intel/Micro ATX/USB 3.1 Gen 1 (USB3.0) Type A/DDR4/Motherboard)", category_id: moth.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71YCgFhISdL._AC_SL1000_.jpg", link: "https://www.amazon.com/Gigabyte-B365M-DS3H-LGA1151-Motherboard/dp/B07T6N8N56/ref=sr_1_3?crid=26C0WV83WIL1Q&dchild=1&keywords=motherboard&qid=1601479260&s=electronics&sprefix=mother%2Celectronics%2C180&sr=1-3")
motherboard2 = Part.create(name: "Motherboard", cost: 114.99, rating: 4.5, description: "AM4 DDR4 DVI HDMI Onboard Graphics CFX ATX Motherboard", category_id: moth.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/9100J1%2B9oKL._AC_SL1500_.jpg", link: "https://www.amazon.com/MSI-Performance-Graphics-Motherboard-X470GPLMAX/dp/B07Y468HV3/ref=sr_1_3?dchild=1&keywords=motherboard+msi&qid=1601661197&sr=8-3")

high_ram = Part.create(name: "RAM", cost: 142.99, rating: 4.8, description: "Corsair Vengeance RGB Pro 32GB (2x16GB) DDR4 3200 (PC4-25600) C16 Desktop Memory - Black", category_id: ram.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/81EEpt-xy0L._AC_SL1500_.jpg", link: "https://www.amazon.com/Corsair-CMW32GX4M2C3200C16-Vengeance-PC4-25600-Desktop/dp/B07GTG2T7L/ref=sxin_9_ac_d_pm?ac_md=8-2-QWJvdmUgJDEyNQ%3D%3D-ac_d_pm&cv_ct_cx=ram&dchild=1&keywords=ram&pd_rd_i=B07GTG2T7L&pd_rd_r=ea9b4de5-f715-4afa-a196-fbd9ff7bfe03&pd_rd_w=NtDOX&pd_rd_wg=dAVWK&pf_rd_p=fe2d64f9-a0d4-4c62-b195-55e240bc5b7e&pf_rd_r=44BRV9YZX0NG23M8PBNG&psc=1&qid=1601479441&s=electronics&sr=1-3-12d4272d-8adb-4121-8624-135149aa9081")
mid_ram = Part.create(name: "RAM", cost: 85.99, rating: 4.8, description: "Corsair Vengeance RGB Pro 16GB (2x8GB) DDR4 3200MHz C16 LED Desktop Memory - Black", category_id: ram.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/81EEpt-xy0L._AC_SL1500_.jpg", link: "https://www.amazon.com/CORSAIR-Vengeance-3200MHz-Desktop-Memory/dp/B07D1XCKWW/ref=sxin_9_ac_d_pm?ac_md=6-0-VW5kZXIgJDEwMA%3D%3D-ac_d_pm&cv_ct_cx=ram&dchild=1&keywords=ram&pd_rd_i=B07D1XCKWW&pd_rd_r=bf9b2ac8-3e0f-4529-b279-4a0386dedef4&pd_rd_w=rsEar&pd_rd_wg=lExB5&pf_rd_p=fe2d64f9-a0d4-4c62-b195-55e240bc5b7e&pf_rd_r=270JVCVDAMFSQ2YKZ7EW&psc=1&qid=1601479657&s=electronics&sr=1-1-12d4272d-8adb-4121-8624-135149aa9081")
low_ram = Part.create(name: "RAM", cost: 32.99, rating: 4.7, description: "Corsair Vengeance LPX 8GB (1 x 8GB) DDR4 DRAM 2400MHz C16 (PC4-19200) Memory Kit - Vengeance LPX Black", category_id: ram.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/61t3ZHqTgbL._AC_SL1500_.jpg", link: "https://www.amazon.com/CORSAIR-Vengeance-2400MHz-PC4-19200-Memory/dp/B01ARHBBPS/ref=sr_1_3?crid=1FWID8RB4TB3L&dchild=1&keywords=ram+8gb&qid=1601479798&s=electronics&sprefix=ram+8%2Celectronics%2C193&sr=1-3")

ssd_storage = Part.create(name: "SSD", cost: 129.99, rating: 4.8, description: "SAMSUNG 860 PRO SSD 512GB - 2.5 Inch SATA III Internal Solid State Drive with MLC V-NAND Technology", category_id: stor.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/51MT5JCgjjL._AC_SL1000_.jpg", link: "https://www.amazon.com/Samsung-512GB-V-NAND-Solid-MZ-76P512BW/dp/B07836C6YV/ref=sr_1_16?dchild=1&keywords=ssd&qid=1601483658&sr=8-16")
ssd_storage2 = Part.create(name: "SSD", cost: 27.99, rating: 4.7, description: "Kingston 240GB A400 SATA 3 2.5 Inch Internal SSD SA400S37/240G - HDD", category_id: stor.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/91RL%2BMhTWbL._AC_SL1500_.jpg", link: "https://www.amazon.com/Kingston-240GB-Solid-SA400S37-240G/dp/B01N5IB20Q/ref=sr_1_3?dchild=1&keywords=ssd&qid=1601661411&sr=8-3")

power_supply = Part.create(name: "Power Supply", cost: 46.99, rating: 4.6, description: "EVGA 500W 80PLUS Certified ATX12V/EPS12V Power Supply 100-W1-0500-KR", category_id: power.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71Q%2Bm2q9smL._AC_SL1200_.jpg", link: "https://www.amazon.com/EVGA-WHITE-Warranty-Supply-100-W1-0500-KR/dp/B00H33SFJU/ref=sr_1_11?dchild=1&keywords=power+supply&qid=1601483483&sr=8-11")
power_supply2 = Part.create(name: "Power Supply", cost: 54.99, rating: 4.6, description: "600W ATX 12V V2.3/EPS 12V 80 PLUS Certified Active PFC Power Supply", category_id: power.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/81laVd5%2BqFL._AC_SL1500_.jpg", link: "https://www.amazon.com/Thermaltake-Certified-Continuous-Active-PS-SPD-0600NPCWUS-W/dp/B014W3EMAO/ref=psdc_1161760_t1_B00H33SFJU")

large_monitor = Part.create(name: "Monitor", cost: 179.10, rating: 4.7, description: "Dell 27 LED backlit LCD Monitor SE2719H IPS Full HD 1080p 1920 x 1080 at 60 Hz HDMI VGA,Black", category_id: mon.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/81nSaeP3AvL._AC_SL1500_.jpg", link: "https://www.amazon.com/Dell-backlit-Monitor-SE2719H-1080p/dp/B07KW6HFD1/ref=sr_1_4?crid=2YRUKU31269B2&dchild=1&keywords=computer+monitor+27+inch&qid=1601483314&sprefix=computer+monitor+%2Caps%2C181&sr=8-4")
very_good_monitor = Part.create(name: "Monitor", cost: 149.99, rating: 4.4, description: "VIOTEK GFV24C 24-Inch Ultra-Thin 144Hz Gaming Monitor | 1080P 4ms (OD)", category_id: mon.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/61%2BcPCzQIeL._AC_SL1500_.jpg", link: "https://www.amazon.com/Viotek-109013NH-Ultra-Thin-G-Sync-Compatible-Zero-Tolerance/dp/B07XD6HJPP/ref=sr_1_2_sspa?crid=1I9CXTQPE0L3Q&dchild=1&keywords=144+hz+computer+monitor+gaming&qid=1601662156&sprefix=144+h%2Caps%2C206&sr=8-2-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFLNEhFUUdQTDNZQUkmZW5jcnlwdGVkSWQ9QTAxNTIxMDIxSUFNNUVYQVlRNjdEJmVuY3J5cHRlZEFkSWQ9QTAyNzk4MDdXVVdSMTk2TVdBR0kmd2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl")
average_monitor = Part.create(name: "Monitor", cost: 74.97, rating: 4.4, description: "Sceptre 20 1600x900 75Hz Ultra Thin LED Monitor 2x HDMI VGA Built-in Speakers, Machine Black Wide Viewing Angle", category_id: mon.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/617S7xFO58L._AC_SL1080_.jpg", link: "https://www.amazon.com/Sceptre-E205W-16003R-Frameless-Speakers-Metallic/dp/B07743412C/ref=sr_1_4?dchild=1&keywords=computer+monitor&qid=1601483097&sr=8-4")

colorful_mouse = Part.create(name: "Mouse", cost: 59.99, rating: 4.6, description: "Razer Mamba Elite Wired Gaming Mouse: 16,000 DPI Optical Sensor - Chroma RGB Lighting - 9 Programmable Buttons", category_id: mice.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/61pz6N01NJL._AC_SL1422_.jpg", link: "https://www.amazon.com/Razer-Mamba-Elite-Programmable-Ergonomic/dp/B07F816PH9/ref=sr_1_13?dchild=1&keywords=wired+mouse+for+pc+rgb&qid=1601482711&sr=8-13")
black_mouse = Part.create(name: "Mouse", cost: 10.99, rating: 4.5, description: "TECKNET 6-Button USB Wired Mouse with Side Buttons, Optical Computer Mouse with 1000/2000DPI", category_id: mice.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/61xKGue3oiL._AC_SL1500_.jpg", link: "https://www.amazon.com/TECKNET-6-Button-Ergonomic-Chromebook-Notebook-Grey/dp/B01BC4TXXC/ref=sr_1_3?crid=3M8ETL9T6AYRZ&dchild=1&keywords=wired+mouse+for+pc&qid=1601482207&sprefix=wired+mouse+%2Caps%2C201&sr=8-3")
white_mouse = Part.create(name: "Mouse", cost: 49.99, rating: 4.6, description: "Razer DeathAdder Essential Gaming Mouse: 6400 DPI Optical Sensor", category_id: mice.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/61FAKFPrHEL._AC_SL1500_.jpg", link: "https://www.amazon.com/Razer-DeathAdder-Essential-Gaming-Mouse/dp/B07Y693ND1/ref=sr_1_3?dchild=1&keywords=gaming+mouse&qid=1601662710&sr=8-3")

colorful_keyboard = Part.create(name: "Keyboard", cost: 64.99, rating: 4.6, description: "Redragon K556 RGB LED Backlit Wired Mechanical Gaming Keyboard, Aluminum Base, 104 Standard Keys", category_id: key.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71lDpm1GOJL._AC_SL1500_.jpg", link: "https://www.amazon.com/Redragon-K556-Mechanical-Keyboard-Aluminum/dp/B01NAI2TXC/ref=sr_1_3?dchild=1&keywords=rgb+mechanical+keyboard&qid=1601482004&sr=8-3")
black_keyboard = Part.create(name: "Keyboard", cost: 81.99, rating: 4.4, description: "iKBC CD108 v2 Mechanical Keyboard with Cherry MX Blue Switch for Windows and Mac", category_id: key.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71njiA8jmYL._AC_SL1500_.jpg", link: "https://www.amazon.com/Mechanical-Keyboard-Windows-Ergonomic-Keycaps/dp/B0875XN7TG/ref=sr_1_13?crid=14TRBQ534UABI&dchild=1&keywords=mechanical+keyboard&qid=1601481815&sprefix=mechanical+%2Caps%2C176&sr=8-13")

glass_case = Part.create(name: "Tower", cost: 129.99, rating: 4.7, description: "Thermaltake Core P3 ATX Tempered Glass Gaming Computer Case Chassis", category_id: kase.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/512AtyxUh8L._AC_.jpg", link: "https://www.amazon.com/Thermaltake-Tempered-Panoramic-Wall-Mount-CA-1G4-00M1WN-06/dp/B07BFGB8Z6/ref=sr_1_4?dchild=1&keywords=computer+case+glass&qid=1601662510&s=electronics&sr=1-4" )
colorful_case = Part.create(name: "Tower", cost: 79.99, rating: 4, description: "Apevia Aura-S-BK Mid Tower Gaming Case with 2 x Full-Size Tempered Glass Panel, 4 x RGB Fans, Black Frame", category_id: kase.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/61AfhzAxJVL._AC_SL1440_.jpg", link: "https://www.amazon.com/Apevia-Aura-S-BK-Full-Size-Tempered-Spectra/dp/B07TZKVZV2/ref=sxin_9_ac_d_rm?ac_md=2-2-cmdiIGNhc2U%3D-ac_d_rm&cv_ct_cx=rgb+pc+case&dchild=1&keywords=rgb+pc+case&pd_rd_i=B07TZKVZV2&pd_rd_r=876f7674-e90b-4075-8264-11890f054670&pd_rd_w=YWg3u&pd_rd_wg=hkM9q&pf_rd_p=fe2d64f9-a0d4-4c62-b195-55e240bc5b7e&pf_rd_r=PEZ73VNFZM8B8S2VF74G&psc=1&qid=1601477814&sr=1-3-12d4272d-8adb-4121-8624-135149aa9081")
black_case = Part.create(name: "Tower", cost: 68.99, rating: 4.7, description: "NZXT H510 - CA-H510B-BR - Compact ATX Mid-Tower PC Gaming Case - Front I/O USB Type-C Port", category_id: kase.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71r5XE1rYAL._AC_SL1500_.jpg", link: "https://www.amazon.com/NZXT-H510-Management-Water-Cooling-Construction/dp/B07TC73F6Y/ref=sr_1_4?dchild=1&keywords=black+computer+case&qid=1601477509&sr=8-4" )

colorful_fan = Part.create(name: "CPU Fan", cost: 39.99, rating: 4.5, description: "ID-COOLING SE-234-ARGB CPU Cooler AM4 CPU Cooler 5V Addressable RGB Cooler", category_id: fan.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/61uum9KdhkL._AC_SL1000_.jpg", link: "https://www.amazon.com/ID-COOLING-SE-234-ARGB-Cooler-Addressable-Heatpipes/dp/B084G3Y7KZ/ref=sr_1_4?dchild=1&keywords=rgb+cpu+fan&qid=1601477292&sr=8-4" )
black_fan = Part.create(name: "CPU Fan", cost: 39.99, rating: 4, description: "Cooler Master Hyper 212 Black Edition CPU Air Coolor, Silencio FP120 Fan, 4 CDC 2.0 Heatpipes", category_id: fan.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/81eWFgRrFZL._AC_SL1500_.jpg", link: "https://www.amazon.com/Cooler-Master-RR-212S-20PK-R1-Contact-Silencio/dp/B07H25DYM3/ref=sr_1_1_sspa?dchild=1&keywords=Cooler+Master+Hyper+212+Black+Edition&qid=1601477246&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyUERWODhMTkdSRFVJJmVuY3J5cHRlZElkPUEwOTI4NzIxMjk5SzJKN1ZXWkY0TSZlbmNyeXB0ZWRBZElkPUEwMTk3NDIwMklaQjFNQUFHSlUzSiZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=")

#Setup_Parts
# sp1 = SetupPart.create(setup_id: s1.id, part_id: p1.id)
# sp2 = SetupPart.create(setup_id: s1.id, part_id: p2.id)
# sp3 = SetupPart.create(setup_id: s1.id, part_id: p3.id)
# sp4 = SetupPart.create(setup_id: s1.id, part_id: p4.id)
# sp5 = SetupPart.create(setup_id: s1.id, part_id: p5.id)
# sp6 = SetupPart.create(setup_id: s1.id, part_id: p6.id)
# sp7 = SetupPart.create(setup_id: s1.id, part_id: p7.id)
# sp8 = SetupPart.create(setup_id: s1.id, part_id: p8.id)
# sp9 = SetupPart.create(setup_id: s1.id, part_id: p9.id)
# sp10 = SetupPart.create(setup_id: s1.id, part_id: p10.id)
# sp11 = SetupPart.create(setup_id: s2.id, part_id: p10.id)


