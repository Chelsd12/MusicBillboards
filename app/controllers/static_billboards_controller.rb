class StaticBillboardsController < ApplicationController
  def home
    @songs = Song.all
  end
end
