class Friendship < ActiveRecord::Base
  belongs_to :user
  #We don't have a friend class, so we need to specify that the class is 'User'
  belongs_to :friend, :class_name => 'User'
end
