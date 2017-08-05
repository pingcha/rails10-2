class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :content, presence: true
  validates :heading, presence: true

  scope :recent, -> { order("created_at DESC")}

    STATUS = ["draft", "public", "private"]
    validates_inclusion_of :status, :in => STATUS
end
