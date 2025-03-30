class HomesController < ApplicationController
  def index
    # 緯度・経度取得
    @coordinate = Geocoder.search("東京駅").first.coordinates
    @address_name = Geocoder.search(@coordinate).first.address
    @test = Geocoder.search(@coordinate).first
  end
end
