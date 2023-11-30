class Stock < ApplicationRecord



def self.hissesenedi
    url = URI("https://api.collectapi.com/economy/hisseSenedi")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["content-type"] = 'application/json'
    request["authorization"] = 'apikey 0841HbLiKSHzAkDv77WhZ5:44PRCBq0lIWyFu71yWWbM1'

    response = http.request(request)
    json = JSON.parse(response.body)
    data = json['result']
    
    data.each do |d|
        hisse = Stock.create()
        hisse.name = d["text"]
        hisse.hisse = d["code"]
        hisse.hacimstr = d["hacimstr"]
        hisse.hacim = d["hacim"]
        hisse.lastpricestr = d["lastpricestr"]
        hisse.lastprice = d["lastprice"]
        hisse.rate = d["rate"]
        hisse.save
    end       
end
end
