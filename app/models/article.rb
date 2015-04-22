class Article < ActiveRecord::Base

    belongs_to :category

    validates_prescence_of :content, :title

    scope :alphabetical, -> { order(:name) }
    scope :active, -> { where(active: true) }
end
