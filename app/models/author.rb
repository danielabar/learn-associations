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
  # has_many :books
  # has_many :books, dependent: :destroy
  has_many :books, dependent: :delete_all
  before_destroy :one_last_thing
  def one_last_thing
    puts "Author model #{id} will be destroyed"
  end
end
