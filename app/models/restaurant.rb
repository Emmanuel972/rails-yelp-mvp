class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

  validates :phone_number, format: { with: /\A((\+33)|0)[\s-]?[1-9][\s-]?\d{2}[\s-]?\d{2}[\s-]?\d{2}[\s-]?\d{2}\z/,
    allow_blank: true,
    message: "only allows phone number"
  }
end
