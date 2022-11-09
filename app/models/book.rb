# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  published_at :date
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  author_id    :integer          not null
#
# Indexes
#
#  index_books_on_author_id  (author_id)
#
# Foreign Keys
#
#  author_id  (author_id => authors.id)
#
class Book < ApplicationRecord
  # belongs_to :author
  belongs_to :author, dependent: :destroy # when the object is destroyed, destroy will be called on its associated objects
  # belongs_to :author, dependent: :delete # when the object is destroyed, all its associated objects will be deleted directly from the database
  before_destroy :one_last_thing
  def one_last_thing
    Rails.logger.warn("  Book model #{id} will be destroyed")
  end
end
