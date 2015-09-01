class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true        # проверка заполненно поле
  validates :price, numericality: {greater_than_or_equal_to: 0.01}  # проверка отрицательных чисел
  validates :title, uniqueness: true                                # проверка унакальности имен
  validates :image_url, allow_blank: true, format: {                # проверка расширения в URL
                          with: %r{\.(gif|jpg|png)\Z}i,
                          message: 'URL должен указывать на изображение формата GIF, JPG или PNG.'
                      }
end
