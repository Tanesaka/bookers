class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

# 空欄だと保存されないようにする

class Book < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
end

# ここまで