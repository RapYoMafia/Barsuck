class Article < ActiveRecord::Base
 has_many :galleries
 has_many :videos
end
