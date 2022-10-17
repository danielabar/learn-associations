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
  # book.destroy will try to delete associated author but fail if author has other books
  # so it will NOT leave orphaned records, but rather, will error out.
  # if associated author has only this one book, then destroy will delete this book and the author
  # belongs_to :author, dependent: :destroy
  belongs_to :author
  before_destroy :one_last_thing
  def one_last_thing
    puts "Book model #{id} will be destroyed"
  end
end
