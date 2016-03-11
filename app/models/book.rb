class Book < ActiveRecord::Base
  belongs_to :author

  validates :title, :price, :author, presence: true
end
