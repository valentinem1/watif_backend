require 'rest-client'
require 'dotenv'
Dotenv.load

# Item.destroy_all

# API_KEY = ENV['ETSY_API_KEY']
# # # fetch data from API.
# etsy_data = RestClient.get("https://openapi.etsy.com/v2/listings/active?api_key=#{API_KEY}")
# # parse it to be able to read it in ruby.
# item_array = JSON.parse(etsy_data)["results"]
# # iterate over the api data to assign it and save it in the database.
# item_array.each do |item|
#     Item.create(
#         title: item["title"],
#         description: item["description"],
#         price: item["price"],
#         quantity: item["quantity"],
#         url: item["url"],
#         image: ""
#     )
# end

########## API doesn't provide image. Then add to manually assigned images to items one by one.
item_one = Item.find_by(id: 1)
item_one.image = 'https://i.etsystatic.com/15727192/r/il/e609ee/1775442377/il_794xN.1775442377_lep7.jpg'
item_one.save

item_two = Item.find_by(id: 2)
item_two.image = 'https://i.etsystatic.com/21299399/r/il/8b4f8a/2225134260/il_794xN.2225134260_ssgq.jpg'
item_two.save

item_three = Item.find_by(id: 3)
item_three.image = 'https://i.etsystatic.com/11568757/r/il/6f2ab9/1154653305/il_794xN.1154653305_g9os.jpg'
item_three.save

item_four = Item.find_by(id: 4)
item_four.image = 'https://i.etsystatic.com/7048183/r/il/1922b5/800976858/il_794xN.800976858_riqx.jpg'
item_four.save

item_five = Item.find_by(id: 5)
item_five.image = 'https://i.etsystatic.com/11662755/r/il/9a748d/2286655529/il_794xN.2286655529_211a.jpg'
item_five.save

item_six = Item.find_by(id: 6)
item_six.image = 'https://i.etsystatic.com/8350687/r/il/a18efd/1025673411/il_794xN.1025673411_qrtp.jpg'
item_six.save

item_seven = Item.find_by(id: 7)
item_seven.image = 'https://i.etsystatic.com/5160700/r/il/84b66e/2345752710/il_794xN.2345752710_jg5i.jpg'
item_seven.save

item_eight = Item.find_by(id: 8)
item_eight.image = 'https://i.etsystatic.com/20143510/r/il/62d5d5/1889968802/il_794xN.1889968802_1kwu.jpg'
item_eight.save

item_nine = Item.find_by(id: 9)
item_nine.image = 'https://i.etsystatic.com/6783376/r/il/e31af0/2261176631/il_794xN.2261176631_gup5.jpg'
item_nine.save

item_ten = Item.find_by(id: 10)
item_ten.image = 'https://i.etsystatic.com/13838801/r/il/f8901a/2310681194/il_794xN.2310681194_nwag.jpg'
item_ten.save

item_eleven = Item.find_by(id:11)
item_eleven.image = 'https://i.etsystatic.com/10142731/r/il/7ddafd/1164664706/il_794xN.1164664706_tmov.jpg'
item_eleven.save

item_twelve = Item.find_by(id: 12)
item_twelve.image = 'https://i.etsystatic.com/13470984/r/il/ad754c/2345749400/il_794xN.2345749400_av7u.jpg'
item_twelve.save

item_thirteen = Item.find_by(id: 13)
item_thirteen.image = 'https://i.etsystatic.com/15948864/r/il/530ebf/1413004387/il_794xN.1413004387_3bvv.jpg'
item_thirteen.save

item_fourteen = Item.find_by(id: 14)
item_fourteen.image = 'https://i.etsystatic.com/6596910/r/il/e92e33/934578658/il_794xN.934578658_7jm5.jpg'
item_fourteen.save

item_fifteen = Item.find_by(id: 15)
item_fifteen.image = 'https://i.etsystatic.com/23310979/r/il/9fb4b6/2376375339/il_794xN.2376375339_t81z.jpg'
item_fifteen.save

item_sixteen = Item.find_by(id: 16)
item_sixteen.image = 'https://i.etsystatic.com/6873562/r/il/7593cf/899937465/il_794xN.899937465_g0a0.jpg'
item_sixteen.save

item_seventeen = Item.find_by(id: 17)
item_seventeen.image = 'https://i.etsystatic.com/22778526/r/il/fcb2ad/2270248132/il_794xN.2270248132_4k0p.jpg'
item_seventeen.save

item_eighteen = Item.find_by(id: 18)
item_eighteen.image = 'https://i.etsystatic.com/19083284/r/il/fbac45/2248239281/il_794xN.2248239281_sm0o.jpg'
item_eighteen.save

item_nineteen = Item.find_by(id: 19)
item_nineteen.image = 'https://i.etsystatic.com/7759309/r/il/df8911/1630966965/il_794xN.1630966965_e8ht.jpg'
item_nineteen.save

item_twenty = Item.find_by(id: 20)
item_twenty.image = 'https://i.etsystatic.com/22257376/r/il/5233c0/2345762286/il_794xN.2345762286_bkio.jpg'
item_twenty.price = 2
item_twenty.save

item_twenty_one = Item.find_by(id: 21)
item_twenty_one.image = 'https://i.etsystatic.com/6186069/r/il/18cc93/1781482338/il_794xN.1781482338_2qmx.jpg'
item_twenty_one.save

item_twenty_two = Item.find_by(id: 22)
item_twenty_two.image = 'https://i.etsystatic.com/19372861/r/il/e248c2/2213321096/il_794xN.2213321096_okz7.jpg'
item_twenty_two.save

item_twenty_three = Item.find_by(id: 23)
item_twenty_three.image = 'https://i.etsystatic.com/7528359/r/il/dacf0f/2345760012/il_794xN.2345760012_m9av.jpg'
item_twenty_three.save

item_twenty_four = Item.find_by(id: 24)
item_twenty_four.image = 'https://i.etsystatic.com/12263490/r/il/bef73b/1572878085/il_794xN.1572878085_2wot.jpg'
item_twenty_four.save

item_twenty_five = Item.find_by(id: 25)
item_twenty_five.image = 'https://i.etsystatic.com/6963562/r/il/211520/2345016258/il_794xN.2345016258_61l8.jpg'
item_twenty_five.save