class User < ActiveRecord::Base
  #attr_accessor :password, :password_confirmation
  has_secure_password
  #validates_presence_of :password, :on => :create
  has_many :reviews
  has_many :products, :through => :reviews
  validates_presence_of :name
end


#in-class
# has_many :reviews
# has_many :products, :through => :reviews
# validates_presence_of :name
