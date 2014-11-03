class Restaurant < ActiveRecord::Base
 belongs_to :city
 has_many :reviews
end
