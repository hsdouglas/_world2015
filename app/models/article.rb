class Article < ActiveRecord::Base
    belongs_to :category

    validates, :title, :content, presence: true

    scope :alphabetical, -> { order(:title) }
    scope :active, -> { where(active: true) }
end
