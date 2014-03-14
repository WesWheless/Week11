class User < ActiveRecord::Base

  has_many :reviews
  has_many :items, :through => :reviews
  has_many :orders
end
