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
  belongs_to :author, dependent: :destroy
  # belongs_to :author, dependent: :delete
  before_destroy :one_last_thing
  def one_last_thing
    Rails.logger.warn("  Book model #{id} will be destroyed")
  end
end
