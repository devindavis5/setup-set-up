User.destroy_all
Setup.destroy_all
SetupPart.destroy_all
Part.destroy_all
Category.destroy_all

#Users
u1 = User.create(name: "Wesley", password: "yeye12", username: "welly")
u2 = User.create(name: "Devin", password: "555", username: "Dev")
u3 = User.create(name: "Bob", password: "1234", username: "iambob")

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
key = Category.create(name: "Keyboards")

#PARTS - Need One From Each Category
very_high_graphics = Part.create(name: "RTX 2080Ti", cost: 1499.00, rating: 4.4, description: "ASUS GeForce RTX 2080 Ti O11G Dual-fan OC Edition GDDR6 HDMI DP 1.4 USB Type-C graphics card", category_id: gpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/91bG2qFc7TL._AC_SL1500_.jpg", link: "https://www.amazon.com/ASUS-GeForce-Overclocked-Graphics-ROG-STRIX-RTX-2080-O11G/dp/B07GJYS2WM/ref=sr_1_5?dchild=1&keywords=2080%2Bti%2Bgraphics%2Bcard&qid=1601476867&sr=8-5&th=1")
high_graphics = Part.create(name: "GTX 1080Ti", cost: 749.99, rating: 4.3, description: "MSI Gaming GeForce GTX 1080 Ti 11GB GDRR5X DirectX 12 352-bit VR Ready Graphics Card (GTX 1080 TI Duke 11G OC)", category_id: gpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/81gX6P4JtzL._AC_SL1500_.jpg", link: "https://www.amazon.com/MSI-GTX-1080-TI-11G/dp/B07KDL7DSS/ref=sr_1_9?dchild=1&keywords=1080+ti&pd_rd_r=efde87d0-de08-4528-ab38-62307fd60363&pd_rd_w=3MDyt&pd_rd_wg=ogSDu&pf_rd_p=0ec05f25-9534-48fe-9c3e-40b89957230e&pf_rd_r=8FCE42SSP64KC7P4KH62&qid=1601476989&sr=8-9")
mid_graphics = Part.create(name: "GTX 1050Ti", cost: 159.99, rating: 4.5, description: "Gigabyte Geforce GTX 1050 Ti OC Low Profile 4GB GDDR5 128 Bit PCI-E Graphic Card", category_id: gpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/91RlSpgv9SL._AC_SL1500_.jpg", link: "https://www.amazon.com/Gigabyte-Geforce-Profile-Graphic-GV-N105TOC-4GL/dp/B06WWLWWJM/ref=sr_1_1?dchild=1&keywords=1050ti&qid=1601477071&sr=8-1")
low_graphics = Part.create(name: "GT 1030", cost: 88.99, rating: 4.5, description: "Gigabyte GV-N1030OC-2GI Nvidia GeForce GT 1030 OC 2G Graphics Card", category_id: gpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/919lkVdI%2BbL._AC_SL1500_.jpg", link: "https://www.amazon.com/Gigabyte-GV-N1030OC-2GI-Nvidia-GeForce-Graphics/dp/B07646VQ6T/ref=sr_1_3?dchild=1&keywords=1030&qid=1601477219&sr=8-3")

high_video_proces = Part.create(name: "2950X 16-Core", cost: 955.45, rating: 4.7, description: "GAMD Ryzen Threadripper 2950X Processor", category_id: cpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/61DQNLHa6BL._AC_SL1442_.jpg", link: "https://www.amazon.com/gp/product/B07GFN6CVF/ref=ox_sc_act_title_1?smid=A20NV9CRQIRRW5&psc=1")
mid_video_proces = Part.create(name: "3900X 12-Core", cost: 429.99, rating: 4.9, description: "AMD Ryzen 9 3900X 12-core, 24-thread unlocked desktop processor with Wraith Prism LED Cooler", category_id: cpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71uRPWxoAaL._AC_SL1500_.jpg", link: "https://www.amazon.com/AMD-Ryzen-3900X-24-Thread-Processor/dp/B07SXMZLP9/ref=sr_1_4?dchild=1&keywords=2950x&qid=1601478148&s=electronics&sr=1-4")
low_video_proces = Part.create(name: "3600X 6-Core", cost: 199.99, rating: 4.8, description: "AMD Ryzen 5 3600 6-Core, 12-Thread Unlocked Desktop Processor with Wraith Stealth Cooler", category_id: cpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/716hAjT1uUL._AC_SL1500_.jpg", link: "https://www.amazon.com/AMD-Ryzen-3600-12-Thread-Processor/dp/B07STGGQ18/ref=sr_1_4?dchild=1&keywords=ryzen+12-core&qid=1601478320&s=electronics&sr=1-4")

high_design_proces = Part.create(name: "i9-9900K", cost: 349.59, rating: 4.8, description: "Intel Core i9-9900K Desktop Processor 8 Cores up to 5.0 GHz Turbo unlocked LGA1151 300 Series 95Wr", category_id: cpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71zXd0YZKQL._AC_SL1500_.jpg", link: "https://www.amazon.com/Intel-i9-9900K-Desktop-Processor-Unlocked/dp/B005404P9I/ref=sr_1_2?crid=HA35L90SLK9J&dchild=1&keywords=i-9+9900k&qid=1601478520&s=electronics&sprefix=i-9%2Celectronics%2C175&sr=1-2")
mid_design_proces = Part.create(name: "i7-9700F", cost: 259.99, rating: 4.8, description: "Intel Core i7-9700F Desktop Processor 8 Core 3 GHz speed (Up to 4.7 GHz)", category_id: cpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71zXd0YZKQL._AC_SL1500_.jpg", link: "https://www.amazon.com/Intel-i7-9700F-Desktop-Processor-Graphics/dp/B07S8DWXT3/ref=sr_1_4?crid=2S0GDUV2ZIBN4&dchild=1&keywords=intel+core+i7&qid=1601478702&s=electronics&sprefix=intel+core%2Celectronics%2C187&sr=1-4")
low_design_proces = Part.create(name: "i5-9600K", cost: 199.99, rating: 4.8, description: "Intel Core i5-9600K Desktop Processor 6 Cores up to 4.6 GHz Turbo unlocked LGA1151 300 Series 95W", category_id: cpu.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71zXd0YZKQL._AC_SL1500_.jpg", link: "https://www.amazon.com/Intel-i5-9600K-Desktop-Processor-Unlocked/dp/B07HHLX1R8/ref=sr_1_2?dchild=1&keywords=i-5+processor&qid=1601479074&s=electronics&sr=1-2")

motherboard = Part.create(name: "Type A/DDR4/Motherboard", cost: 73.99, rating: 4.4, description: "GIGABYTE B365M DS3H (LGA1151/Intel/Micro ATX/USB 3.1 Gen 1 (USB3.0) Type A/DDR4/Motherboard)", category_id: moth.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71YCgFhISdL._AC_SL1000_.jpg", link: "https://www.amazon.com/Gigabyte-B365M-DS3H-LGA1151-Motherboard/dp/B07T6N8N56/ref=sr_1_3?crid=26C0WV83WIL1Q&dchild=1&keywords=motherboard&qid=1601479260&s=electronics&sprefix=mother%2Celectronics%2C180&sr=1-3")

high_ram = Part.create(name: "32GB", cost: 142.99, rating: 4.8, description: "Corsair Vengeance RGB Pro 32GB (2x16GB) DDR4 3200 (PC4-25600) C16 Desktop Memory - Black", category_id: ram.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/81EEpt-xy0L._AC_SL1500_.jpg", link: "https://www.amazon.com/Corsair-CMW32GX4M2C3200C16-Vengeance-PC4-25600-Desktop/dp/B07GTG2T7L/ref=sxin_9_ac_d_pm?ac_md=8-2-QWJvdmUgJDEyNQ%3D%3D-ac_d_pm&cv_ct_cx=ram&dchild=1&keywords=ram&pd_rd_i=B07GTG2T7L&pd_rd_r=ea9b4de5-f715-4afa-a196-fbd9ff7bfe03&pd_rd_w=NtDOX&pd_rd_wg=dAVWK&pf_rd_p=fe2d64f9-a0d4-4c62-b195-55e240bc5b7e&pf_rd_r=44BRV9YZX0NG23M8PBNG&psc=1&qid=1601479441&s=electronics&sr=1-3-12d4272d-8adb-4121-8624-135149aa9081")
mid_ram = Part.create(name: "16GB", cost: 85.99, rating: 4.8, description: "Corsair Vengeance RGB Pro 16GB (2x8GB) DDR4 3200MHz C16 LED Desktop Memory - Black", category_id: ram.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/81EEpt-xy0L._AC_SL1500_.jpg", link: "https://www.amazon.com/CORSAIR-Vengeance-3200MHz-Desktop-Memory/dp/B07D1XCKWW/ref=sxin_9_ac_d_pm?ac_md=6-0-VW5kZXIgJDEwMA%3D%3D-ac_d_pm&cv_ct_cx=ram&dchild=1&keywords=ram&pd_rd_i=B07D1XCKWW&pd_rd_r=bf9b2ac8-3e0f-4529-b279-4a0386dedef4&pd_rd_w=rsEar&pd_rd_wg=lExB5&pf_rd_p=fe2d64f9-a0d4-4c62-b195-55e240bc5b7e&pf_rd_r=270JVCVDAMFSQ2YKZ7EW&psc=1&qid=1601479657&s=electronics&sr=1-1-12d4272d-8adb-4121-8624-135149aa9081")
low_ram = Part.create(name: "8GB", cost: 32.99, rating: 4.7, description: "Corsair Vengeance LPX 8GB (1 x 8GB) DDR4 DRAM 2400MHz C16 (PC4-19200) Memory Kit - Vengeance LPX Black", category_id: ram.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/61t3ZHqTgbL._AC_SL1500_.jpg", link: "https://www.amazon.com/CORSAIR-Vengeance-2400MHz-PC4-19200-Memory/dp/B01ARHBBPS/ref=sr_1_3?crid=1FWID8RB4TB3L&dchild=1&keywords=ram+8gb&qid=1601479798&s=electronics&sprefix=ram+8%2Celectronics%2C193&sr=1-3")

ssd_storage = 

power_supply =

large_monitor = 
average_monitor = 

colorful_mouse =
black_mouse =

colorful_keyboard =
black_keyboard =

colorful_case = Part.create(name: "Apevia Aura-S-BK Mid Tower", cost: 79.99, rating: 4, description: "Apevia Aura-S-BK Mid Tower Gaming Case with 2 x Full-Size Tempered Glass Panel, Top USB3.0/USB2.0/Audio Ports, 4 x RGB Fans, Black Frame", category_id: kase.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/61AfhzAxJVL._AC_SL1440_.jpg", link: "https://www.amazon.com/Apevia-Aura-S-BK-Full-Size-Tempered-Spectra/dp/B07TZKVZV2/ref=sxin_9_ac_d_rm?ac_md=2-2-cmdiIGNhc2U%3D-ac_d_rm&cv_ct_cx=rgb+pc+case&dchild=1&keywords=rgb+pc+case&pd_rd_i=B07TZKVZV2&pd_rd_r=876f7674-e90b-4075-8264-11890f054670&pd_rd_w=YWg3u&pd_rd_wg=hkM9q&pf_rd_p=fe2d64f9-a0d4-4c62-b195-55e240bc5b7e&pf_rd_r=PEZ73VNFZM8B8S2VF74G&psc=1&qid=1601477814&sr=1-3-12d4272d-8adb-4121-8624-135149aa9081")
black_case = Part.create(name: "NZXT H510", cost: 68.99, rating: 4.7, description: "NZXT H510 - CA-H510B-BR - Compact ATX Mid-Tower PC Gaming Case - Front I/O USB Type-C Port - Tempered Glass Side Panel - Cable Management System - Water-Cooling Ready - Black/Red", category_id: kase.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/71r5XE1rYAL._AC_SL1500_.jpg", link: "https://www.amazon.com/NZXT-H510-Management-Water-Cooling-Construction/dp/B07TC73F6Y/ref=sr_1_4?dchild=1&keywords=black+computer+case&qid=1601477509&sr=8-4" )

colorful_fan = Part.create(name: "ID-COOLING SE-234-ARGB CPU Cooler", cost: 39.99, rating: 4.5, description: "ID-COOLING SE-234-ARGB CPU Cooler AM4 CPU Cooler 5V Addressable RGB Cooler 4 Heatpipes CPU Air Cooler 120mm PWM Fan, Intel/AMD", category_id: fan.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/61uum9KdhkL._AC_SL1000_.jpg", link: "https://www.amazon.com/ID-COOLING-SE-234-ARGB-Cooler-Addressable-Heatpipes/dp/B084G3Y7KZ/ref=sr_1_4?dchild=1&keywords=rgb+cpu+fan&qid=1601477292&sr=8-4" )
black_fan = Part.create(name: "Cooler Master Hyper 212 Black Edition", cost: 39.99, rating: 4, description: "Cooler Master Hyper 212 Black Edition CPU Air Coolor, Silencio FP120 Fan, 4 CDC 2.0 Heatpipes, Anodized Gun-Metal Black, Brushed Nickel Fins for AMD Ryzen/Intel LGA1200/1151", category_id: fan.id, image_url: "https://images-na.ssl-images-amazon.com/images/I/81eWFgRrFZL._AC_SL1500_.jpg", link: "https://www.amazon.com/Cooler-Master-RR-212S-20PK-R1-Contact-Silencio/dp/B07H25DYM3/ref=sr_1_1_sspa?dchild=1&keywords=Cooler+Master+Hyper+212+Black+Edition&qid=1601477246&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyUERWODhMTkdSRFVJJmVuY3J5cHRlZElkPUEwOTI4NzIxMjk5SzJKN1ZXWkY0TSZlbmNyeXB0ZWRBZElkPUEwMTk3NDIwMklaQjFNQUFHSlUzSiZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=")

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


