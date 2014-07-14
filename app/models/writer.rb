class Writer < ActiveRecord::Base
  validates_presence_of :name,:email
end
