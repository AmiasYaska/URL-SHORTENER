class Link < ApplicationRecord
    scope :take_first, -> {order(created_at: :desc)}
    validates :url, presence: true
end
