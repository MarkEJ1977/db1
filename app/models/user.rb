class User < ActiveRecord::Base
  attr_accessible :date_joined, :email, :name
end
