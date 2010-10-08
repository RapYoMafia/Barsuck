class Gallery < ActiveRecord::Base
 belongs_to :article
 has_many :gallery_items
end
