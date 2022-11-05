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
require "rails_helper"

describe Book, type: :model do
  before(:each) do |example|
    Rails.logger.info("\n=== BEGIN TEST #{example.metadata[:full_description]} ===")
  end

  after(:each) do
    show_model_counts
    Rails.logger.info("=== END TEST ===\n")
  end

  describe "#destroy!" do
    it "remove a book from author that only has that book" do
      book = Book.find_by(title: "Computer Programming Crash Course: 7 Books in 1")
      begin
        book.destroy!
      rescue StandardError => e
        Rails.logger.error("#{e.class} - #{e.message}")
      end
    end

    it "remove a book from author that has multiple books" do
      book = Book.find_by(title: "Python Programming for Beginners")
      begin
        book.destroy!
      rescue StandardError => e
        Rails.logger.error("#{e.class} - #{e.message}")
      end
    end
  end

  describe "#delete" do
    it "remove a book from author that only has that book" do
      book = Book.find_by(title: "Computer Programming Crash Course: 7 Books in 1")
      begin
        book.delete
      rescue StandardError => e
        Rails.logger.error("#{e.class} - #{e.message}")
      end
    end

    it "remove a book from author that has multiple books" do
      book = Book.find_by(title: "Python Programming for Beginners")
      begin
        book.delete
      rescue StandardError => e
        Rails.logger.error("#{e.class} - #{e.message}")
      end
    end
  end
end
