module Helpers
  def show_model_counts
    original_author_count = 3
    original_book_count = 4
    Rails.logger.info("  NUMBER AUTHORS DELETED: #{original_author_count - Author.count}; NUMBER BOOKS DELETED: #{original_book_count - Book.count}")
  end
end
