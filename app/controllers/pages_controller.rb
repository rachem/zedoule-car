class PagesController < ApplicationController

  def home
    FlickRaw.api_key="4ec00bf0d3aa10fed5a6be617c3622bd"
    FlickRaw.shared_secret="ae88401ebcf9bed5"

      id = flickr.people.findByUsername(:username => "Zédoule").id
      puts id
      @photos = flickr.people.getPhotos(:user_id => id, :extras => "url_o").to_json


  end
end
