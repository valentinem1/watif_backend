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
item_one.image = 'https://i.etsystatic.com/19528625/r/il/874228/2065623134/il_794xN.2065623134_ivun.jpg'
item_one.save

item_two = Item.find_by(id: 2)
item_two.image = 'https://i.etsystatic.com/6310968/r/il/8b945c/2069362462/il_794xN.2069362462_pwcf.jpg'
item_two.save

item_three = Item.find_by(id: 3)
item_three.image = 'https://i.etsystatic.com/6596999/r/il/e9f6b4/2213452100/il_794xN.2213452100_my7d.jpg'
item_three.save

item_four = Item.find_by(id: 4)
item_four.image = 'https://i.etsystatic.com/13622716/r/il/ab9833/1940940477/il_794xN.1940940477_9p5u.jpg'
item_four.save

item_five = Item.find_by(id: 5)
item_five.image = 'https://i.etsystatic.com/15322483/r/il/7638f4/2212105356/il_794xN.2212105356_hdj2.jpg'
item_five.save

item_six = Item.find_by(id: 6)
item_six.image = 'https://i.etsystatic.com/17011573/r/il/56f0e5/2121967443/il_794xN.2121967443_edhn.jpg'
item_six.save

item_seven = Item.find_by(id: 7)
item_seven.image = 'https://i.etsystatic.com/17150406/r/il/96d032/2132999253/il_794xN.2132999253_oip2.jpg'
item_seven.save

item_eight = Item.find_by(id: 8)
item_eight.image = 'https://i.etsystatic.com/7618524/r/il/367f66/1914885013/il_794xN.1914885013_ddqf.jpg'
item_eight.save

item_nine = Item.find_by(id: 9)
item_nine.image = 'https://i.etsystatic.com/9768771/r/il/d96470/1323287752/il_794xN.1323287752_p4bm.jpg'
item_nine.save

item_ten = Item.find_by(id: 10)
item_ten.image = 'https://i.etsystatic.com/12094190/r/il/0ace02/1901665392/il_794xN.1901665392_gwgg.jpg'
item_ten.save

item_eleven = Item.find_by(id:11)
item_eleven.image = 'https://i.etsystatic.com/7434889/r/il/a76615/772986354/il_794xN.772986354_4h9d.jpg'
item_eleven.save

item_twelve = Item.find_by(id: 12)
item_twelve.image = 'https://i.etsystatic.com/22324481/r/il/7a9f42/2201101488/il_794xN.2201101488_nxhk.jpg'
item_twelve.save

item_thirteen = Item.find_by(id: 13)
item_thirteen.image = 'https://i.etsystatic.com/17444910/r/il/72b51d/1611587148/il_794xN.1611587148_leck.jpg'
item_thirteen.save

item_fourteen = Item.find_by(id: 14)
item_fourteen.image = 'https://i.etsystatic.com/20569169/r/il/32d63f/2024850397/il_794xN.2024850397_saa2.jpg'
item_fourteen.save

item_fifteen = Item.find_by(id: 15)
item_fifteen.image = 'https://i.etsystatic.com/18691352/r/il/5e74e0/2169103230/il_794xN.2169103230_nb65.jpg'
item_fifteen.save

item_sixteen = Item.find_by(id: 16)
item_sixteen.image = 'https://i.etsystatic.com/20569169/r/il/9fade4/1976362091/il_794xN.1976362091_mt9l.jpg'
item_sixteen.save

item_seventeen = Item.find_by(id: 17)
item_seventeen.image = 'https://i.etsystatic.com/20569169/r/il/c57197/2177712533/il_794xN.2177712533_92ia.jpg'
item_seventeen.save

item_eighteen = Item.find_by(id: 18)
item_eighteen.image = 'https://i.etsystatic.com/10409400/r/il/cd89f9/1668116605/il_794xN.1668116605_fwmn.jpg'
item_eighteen.save

item_nineteen = Item.find_by(id: 19)
item_nineteen.image = 'https://i.etsystatic.com/14778278/r/il/f5987a/1587261635/il_794xN.1587261635_d655.jpg'
item_nineteen.save

item_twenty = Item.find_by(id: 20)
item_twenty.image = 'https://i.etsystatic.com/14189996/r/il/f5ebff/2146764606/il_794xN.2146764606_5qp2.jpg'
item_twenty.save

item_twenty_one = Item.find_by(id: 21)
item_twenty_one.image = 'https://i.etsystatic.com/7826478/r/il/b4f46c/1549137731/il_794xN.1549137731_ium9.jpg'
item_twenty_one.save

item_twenty_two = Item.find_by(id: 22)
item_twenty_two.image = 'https://i.etsystatic.com/12713577/r/il/6ddd3c/1732703352/il_794xN.1732703352_syfn.jpg'
item_twenty_two.save

item_twenty_three = Item.find_by(id: 23)
item_twenty_three.image = 'https://i.etsystatic.com/17848774/r/il/96b6fc/2213420822/il_794xN.2213420822_8xw0.jpg'
item_twenty_three.save

item_twenty_four = Item.find_by(id: 24)
item_twenty_four.image = 'https://i.etsystatic.com/6148043/r/il/3e9b4f/1409943181/il_794xN.1409943181_ttjd.jpg'
item_twenty_four.save

item_twenty_five = Item.find_by(id: 25)
item_twenty_five.image = 'https://i.etsystatic.com/9665944/r/il/1d3402/687866575/il_794xN.687866575_g7ac.jpg'
item_twenty_five.save