class Note < ApplicationRecord
  belongs_to :notable, polymorphic: true

  validates :body, presence: true

  enum status: { created: 0, in_progress: 1, complete: 2 }
end
