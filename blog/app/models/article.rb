class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy       #dependent: :destroy - все коментарии к статье
  validates :title, presence: true,
            length: { minimum: 5 }
end
