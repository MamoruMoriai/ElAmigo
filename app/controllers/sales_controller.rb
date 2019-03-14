class SalesController < ApplicationController
  def index
    gon.data = []
    5.times do
      gon.data << rand(100.0)
    end
  end
end
