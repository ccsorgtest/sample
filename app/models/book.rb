class Book < ActiveRecord::Base
  attr_accessible :price, :publish, :title
end
