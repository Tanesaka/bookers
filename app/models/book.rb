class Book < ApplicationRecord
end

class User < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
end
