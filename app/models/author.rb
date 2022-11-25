# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
  has_many :books
  # has_many :books, dependent: :destroy # causes all the associated objects to also be destroyed
  # has_many :books, dependent: :delete_all # causes all the associated objects to be deleted directly from the database
  # has_many :books, dependent: :nullify # causes the foreign key to be set to NULL
  # has_many :books, dependent: :restrict_with_exception # ActiveRecord::DeleteRestrictionError exception raised if there are any associated records
  # has_many :books, dependent: :restrict_with_error # causes an error to be added to the owner if there are any associated objects
  before_destroy :one_last_thing
  def one_last_thing
    Rails.logger.warn("  Author model #{id} will be destroyed")
  end
end
