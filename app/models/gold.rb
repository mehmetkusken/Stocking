class Gold < ApplicationRecord

    def self.goldprice
        url = URI("https://api.collectapi.com/economy/goldPrice")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["content-type"] = 'application/json'
    request["authorization"] = 'apikey 0841HbLiKSHzAkDv77WhZ5:44PRCBq0lIWyFu71yWWbM1'

    response = http.request(request)
    json = JSON.parse(response.body)
    data = json['result']
    data.each do |g|
        altin = Gold.create()
        altin.name = g["name"]
        altin.buy = g["buyingstr"]
        altin.sell = g["sellingstr"]
        altin.save
    end

    end
end
