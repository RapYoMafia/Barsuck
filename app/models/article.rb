class Article < ActiveRecord::Base
 has_many :galleries
 has_many :videos
 belongs_to :article_category
end
