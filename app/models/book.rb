class Book < ApplicationRecord
 # has_one_attached :image
 
 validates :title, presence: true #presence（存在）
 validates :body, presence: true

 belongs_to :user



end