class Group < ActiveRecord::Base
  has_many :notifiers
  has_many :users
end
