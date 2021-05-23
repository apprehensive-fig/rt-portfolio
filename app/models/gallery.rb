class Gallery < ApplicationRecord
  has_many :items, dependent: :destroy
end
