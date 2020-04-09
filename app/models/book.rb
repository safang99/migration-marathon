class Book < ActiveRecord::Base
    validates :title, presence: true
    validates :author, presence: true
    # validates :favorite, inclusion: { in:[true, false] }
    validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }, allow_nil: true

    has_many :checkouts
    has_many :categorizations
    has_many :categories, through: :categorizations
end
