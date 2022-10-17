# Post is a simple model with no associations to demonstrate the difference between
# ActiveRecord methods destroy and delete
Post.create!(title: "Hello Post", body: "Learning about destroy and delete in Rails.")
Post.create!(title: "Another Post", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")

# Authors with at least one book each
author_ap = Author.create!(name: "Andrew Park")
author_jjk = Author.create!(name: "Julian James McKinnon")

# Author with no books in the system
Author.create!(name: "John Doe")

# Create 3 books for Andrew Park and just one book for Julian James McKinnon
Book.create!(
  [
    { title: "Python Programming for Beginners", published_at: "2022-07-20", author: author_ap },
    { title: "Machine Learning: 4 Books in 1", published_at: "2020-01-20", author: author_ap },
    { title: "Python for Data Analysis", published_at: "2021-01-20", author: author_ap },
    { title: "Computer Programming Crash Course: 7 Books in 1", published_at: "2021-01-20", author: author_jjk }
  ]
)

p "Created #{Post.count} #{'Post'.pluralize(Post.count)}"
p "Created #{Author.count} #{'Author'.pluralize(Author.count)}"
p "Created #{Book.count} #{'Book'.pluralize(Book.count)}"
