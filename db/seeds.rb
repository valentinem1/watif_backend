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
item_twenty_five = Item.find_by(id: 1)
item_twenty_five.image = 'https://i.etsystatic.com/12327841/r/il/5cff49/1902331493/il_794xN.1902331493_rysb.jpg'
item_twenty_five.save

item_six = Item.find_by(id: 2)
item_six.image = 'https://i.etsystatic.com/20241401/r/il/3df3de/2251191352/il_794xN.2251191352_begs.jpg'
item_six.save

item_seven = Item.find_by(id: 3)
item_seven.image = 'https://i.etsystatic.com/18025212/r/il/ed951e/1701385665/il_794xN.1701385665_mf8s.jpg'
item_seven.save

item_eleven = Item.find_by(id:4)
item_eleven.image = 'https://i.etsystatic.com/21151524/r/il/444d03/2322715318/il_794xN.2322715318_qtnn.jpg'
item_eleven.save

item_twelve = Item.find_by(id: 5)
item_twelve.image = 'https://i.etsystatic.com/6824112/r/il/581eb0/2339235494/il_794xN.2339235494_insf.jpg'
item_twelve.save

item_one = Item.find_by(id: 6)
item_one.image = 'https://i.etsystatic.com/15727192/r/il/e609ee/1775442377/il_794xN.1775442377_lep7.jpg'
item_one.save

item_thirteen = Item.find_by(id: 7)
item_thirteen.image = 'https://i.etsystatic.com/17625707/r/il/f36345/1496009624/il_794xN.1496009624_62qg.jpg'
item_thirteen.save

item_fourteen = Item.find_by(id: 8)
item_fourteen.image = 'https://i.etsystatic.com/10125287/r/il/98e143/2372547139/il_794xN.2372547139_hyp7.jpg'
item_fourteen.save

item_fifteen = Item.find_by(id: 9)
item_fifteen.image = 'https://i.etsystatic.com/17637190/r/il/cbdd26/2132113624/il_794xN.2132113624_7vyg.jpg'
item_fifteen.save

item_sixteen = Item.find_by(id: 10)
item_sixteen.image = 'https://i.etsystatic.com/17871092/r/il/d33efc/2010739104/il_794xN.2010739104_33ti.jpg'
item_sixteen.save

item_seventeen = Item.find_by(id: 11)
item_seventeen.image = 'https://i.etsystatic.com/22662070/r/il/2799e3/2281809671/il_794xN.2281809671_a0ax.jpg'
item_seventeen.save

item_eighteen = Item.find_by(id: 12)
item_eighteen.image = 'https://i.etsystatic.com/14723086/r/il/8bfaa1/2338196872/il_794xN.2338196872_i0i7.jpg'
item_eighteen.save

item_nineteen = Item.find_by(id: 13)
item_nineteen.image = 'https://i.etsystatic.com/5312822/r/il/55ce52/1441337812/il_794xN.1441337812_hpy0.jpg'
item_nineteen.save

item_twenty = Item.find_by(id: 14)
item_twenty.image = 'https://i.etsystatic.com/15720224/r/il/512592/1727717690/il_794xN.1727717690_5f4o.jpg'
item_twenty.price = 2
item_twenty.save

item_twenty_one = Item.find_by(id: 15)
item_twenty_one.image = 'https://i.etsystatic.com/17637190/r/il/b2d7d3/2151309062/il_794xN.2151309062_1bhw.jpg'
item_twenty_one.save

item_twenty_two = Item.find_by(id: 16)
item_twenty_two.image = 'https://i.etsystatic.com/18174973/r/il/34d990/1847581571/il_794xN.1847581571_d02z.jpg'
item_twenty_two.save

item_twenty_three = Item.find_by(id: 17)
item_twenty_three.image = 'https://i.etsystatic.com/19440013/r/il/973327/1947942736/il_794xN.1947942736_cl7a.jpg'
item_twenty_three.save

item_two = Item.find_by(id: 18)
item_two.image = 'https://i.etsystatic.com/12834251/r/il/1cad8f/1722432242/il_794xN.1722432242_2tk2.jpg'
item_two.save

item_three = Item.find_by(id: 19)
item_three.image = 'https://i.etsystatic.com/5214475/r/il/b01054/2240193561/il_794xN.2240193561_t8n5.jpg'
item_three.save

item_four = Item.find_by(id: 20)
item_four.image = 'https://i.etsystatic.com/7103882/r/il/6fe4a9/2335460328/il_794xN.2335460328_qeg8.jpg'
item_four.save

item_five = Item.find_by(id: 21)
item_five.image = 'https://i.etsystatic.com/15539323/r/il/fbb1be/2393526809/il_794xN.2393526809_k054.jpg'
item_five.save

item_twenty_four = Item.find_by(id: 22)
item_twenty_four.image = 'https://i.etsystatic.com/7979419/r/il/35b80c/1937958083/il_794xN.1937958083_8na2.jpg'
item_twenty_four.save

item_eight = Item.find_by(id: 23)
item_eight.image = 'https://i.etsystatic.com/23270395/r/il/fa4bd1/2356772305/il_794xN.2356772305_ipbk.jpg'
item_eight.save

item_nine = Item.find_by(id: 24)
item_nine.image = 'https://i.etsystatic.com/20357600/r/il/23da47/2393577879/il_794xN.2393577879_had9.jpg'
item_nine.save

item_ten = Item.find_by(id: 25)
item_ten.image = 'https://i.etsystatic.com/20064299/r/il/4021e7/2357378111/il_794xN.2357378111_dbwn.jpg'
item_ten.save


