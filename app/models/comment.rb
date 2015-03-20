class Comment < ActiveRecord::Base
  belongs_to :post
  validates :body, :name, :presence => true

end
