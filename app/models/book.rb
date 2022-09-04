class Book < ApplicationRecord
 #has_one_attached :image

 validates :title, presence: true #presence（存在）
 validates :body, length: { maximum: 200 }, presence: true

 belongs_to :user
 
end