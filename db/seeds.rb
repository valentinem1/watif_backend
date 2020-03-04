require 'rest-client'
require 'dotenv'
Dotenv.load

Item.destroy_all

API_KEY = ENV['ETSY_API_KEY']

etsy_data = RestClient.get("https://openapi.etsy.com/v2/listings/active?api_key=#{API_KEY}")

item_array = JSON.parse(etsy_data)["results"]

item_array.each do |item|
    Item.create(
        title: item["title"],
        description: item["description"],
        price: item["price"],
        quantity: item["quantity"]
    )
end
