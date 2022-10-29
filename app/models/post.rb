# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  before_destroy :one_last_thing

  def one_last_thing
    puts "Post model #{id} will be destroyed"
  end
end
