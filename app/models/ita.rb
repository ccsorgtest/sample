class Ita < ActiveRecord::Base
  attr_accessible :ita_id, :title
  validates :title,
  	:presence => true
end
