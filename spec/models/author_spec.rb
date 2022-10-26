require "rails_helper"

# Exploratory tests to understand how ActiveRecord `destroy!` and `delete` work
# under various `dependent` association options. That's why there are no test
# expectations and exceptions are caught and logged to provide a legible log/test.log.
describe Author, type: :model do
  before(:each) do |example|
    Rails.logger.info("\n=== BEGIN TEST #{example.metadata[:full_description]} ===")
  end

  after(:each) do
    show_model_counts
    Rails.logger.info("=== END TEST ===\n")
  end

  describe "#destroy!" do
    it "remove an author with no books" do
      author = Author.find_by(name: "John Doe")
      begin
        author.destroy!
      rescue StandardError => e
        Rails.logger.error("#{e.class} - #{e.message}")
      end
    end

    it "remove an author with a single book" do
      author = Author.find_by(name: "Julian James McKinnon")
      begin
        author.destroy!
      rescue StandardError => e
        Rails.logger.error("#{e.class} - #{e.message}")
      end
    end

    it "remove an author with multiple books" do
      author = Author.find_by(name: "Andrew Park")
      begin
        author.destroy!
      rescue StandardError => e
        Rails.logger.error("#{e.class} - #{e.message}")
      end
    end
  end

  describe "#delete" do
    it "remove an author with no books" do
      author = Author.find_by(name: "John Doe")
      begin
        author.delete
      rescue StandardError => e
        Rails.logger.error("#{e.class} - #{e.message}")
      end
    end

    it "remove an author with a single book" do
      author = Author.find_by(name: "Julian James McKinnon")
      begin
        author.delete
      rescue StandardError => e
        Rails.logger.error("#{e.class} - #{e.message}")
      end
    end

    it "remove an author with multiple books" do
      author = Author.find_by(name: "Andrew Park")
      begin
        author.delete
      rescue StandardError => e
        Rails.logger.error("#{e.class} - #{e.message}")
      end
    end
  end
end
