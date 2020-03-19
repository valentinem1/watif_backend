require 'rest-client'
require 'dotenv'
Dotenv.load

# Item.destroy_all

# API_KEY = ENV['ETSY_API_KEY']

# etsy_data = RestClient.get("https://openapi.etsy.com/v2/listings/active?api_key=#{API_KEY}")

# item_array = JSON.parse(etsy_data)["results"]

# item_array.each do |item|
#     Item.create(
#         title: item["title"],
#         description: item["description"],
#         price: item["price"],
#         quantity: item["quantity"],
#         url: item["url"]
#     )
# end

item_one = Item.find_by(id: 1)
item_one.image = 'https://i.etsystatic.com/10854006/r/il/284d7c/2148918968/il_794xN.2148918968_7fkp.jpg'
item_one.save

item_two = Item.find_by(id: 2)
item_two.image = 'https://i.etsystatic.com/15974085/r/il/7db91f/1499208593/il_794xN.1499208593_3geb.jpg'
item_two.save

item_three = Item.find_by(id: 3)
item_three.image = 'https://i.etsystatic.com/21519361/r/il/4ed2af/2076267784/il_794xN.2076267784_fiac.jpg'
item_three.save

item_four = Item.find_by(id: 4)
item_four.image = 'https://i.etsystatic.com/6204645/r/il/dfa153/827446058/il_794xN.827446058_2ugh.jpg'
item_four.save

item_five = Item.find_by(id: 5)
item_five.image = 'https://i.etsystatic.com/7671613/r/il/31c489/454239962/il_794xN.454239962_i3n3.jpg'
item_five.save

item_six = Item.find_by(id: 6)
item_six.image = 'https://i.etsystatic.com/15116611/r/il/3ef5ee/2092054644/il_794xN.2092054644_i6nh.jpg'
item_six.save

item_seven = Item.find_by(id: 7)
item_seven.image = 'https://i.etsystatic.com/16291461/r/il/e3d71b/1943737832/il_794xN.1943737832_8e03.jpg'
item_seven.save

item_eight = Item.find_by(id: 8)
item_eight.image = 'https://i.etsystatic.com/14721792/r/il/b20024/1897288285/il_794xN.1897288285_r1kd.jpg'
item_eight.save

item_nine = Item.find_by(id: 9)
item_nine.image = 'https://i.etsystatic.com/14376484/r/il/593601/1919151618/il_794xN.1919151618_kcam.jpg'
item_nine.save

item_ten = Item.find_by(id: 10)
item_ten.image = 'https://i.etsystatic.com/18983017/r/il/787519/2058281827/il_794xN.2058281827_efpd.jpg'
item_ten.save

item_eleven = Item.find_by(id:11)
item_eleven.image = 'https://i.etsystatic.com/9866808/r/il/0bd883/2095691025/il_794xN.2095691025_xvjp.jpg'
item_eleven.save

item_twelve = Item.find_by(id: 12)
item_twelve.image = 'https://i.etsystatic.com/5944669/r/il/5d3a38/2237968847/il_794xN.2237968847_8qry.jpg'
item_twelve.save

item_thirteen = Item.find_by(id: 13)
item_thirteen.image = 'https://i.etsystatic.com/12067094/r/il/d46324/1501239918/il_794xN.1501239918_i194.jpg'
item_thirteen.save

item_fourteen = Item.find_by(id: 14)
item_fourteen.image = 'https://www.vivaveltoro.com/wp-content/uploads/2016/05/Kids-Chore-Chart-Full-Size.png'
item_fourteen.save

item_fifteen = Item.find_by(id: 15)
item_fifteen.image = 'https://i.etsystatic.com/21237219/r/il/e390e5/2158711801/il_794xN.2158711801_iwkx.jpg'
item_fifteen.save

item_sixteen = Item.find_by(id: 16)
item_sixteen.image = 'https://i.etsystatic.com/12047041/r/il/a612e8/2163410823/il_794xN.2163410823_1h4e.jpg'
item_sixteen.save

item_seventeen = Item.find_by(id: 17)
item_seventeen.image = 'https://i.etsystatic.com/21698666/r/il/5965e2/2244862621/il_794xN.2244862621_k5ta.jpg'
item_seventeen.save

item_eighteen = Item.find_by(id: 18)
item_eighteen.image = 'https://i.etsystatic.com/9866808/r/il/70e0e8/1878395440/il_794xN.1878395440_c53d.jpg'
item_eighteen.save

item_nineteen = Item.find_by(id: 19)
item_nineteen.image = 'https://i.etsystatic.com/15619922/r/il/4f7abe/1613514613/il_794xN.1613514613_s2d7.jpg'
item_nineteen.save

item_twenty = Item.find_by(id: 20)
item_twenty.image = 'https://i.etsystatic.com/9916275/r/il/dac3a6/2085578243/il_794xN.2085578243_n74f.jpg'
item_twenty.price = 2
item_twenty.save

item_twenty_one = Item.find_by(id: 21)
item_twenty_one.image = 'https://i.etsystatic.com/5277818/r/il/839c60/2097530568/il_794xN.2097530568_ou7a.jpg'
item_twenty_one.save

item_twenty_two = Item.find_by(id: 22)
item_twenty_two.image = 'https://i.etsystatic.com/15491797/r/il/af36d5/1922230368/il_794xN.1922230368_sbvk.jpg'
item_twenty_two.save

item_twenty_three = Item.find_by(id: 23)
item_twenty_three.image = 'https://i.etsystatic.com/6553141/r/il/c7cc54/2221818301/il_794xN.2221818301_bgks.jpg'
item_twenty_three.save

item_twenty_four = Item.find_by(id: 24)
item_twenty_four.image = 'https://i.etsystatic.com/19367631/r/il/9277f5/1989421140/il_794xN.1989421140_knfu.jpg'
item_twenty_four.save

item_twenty_five = Item.find_by(id: 25)
item_twenty_five.image = 'https://i.etsystatic.com/9582552/r/il/f4e022/2017718374/il_794xN.2017718374_fcno.jpg'
item_twenty_five.save