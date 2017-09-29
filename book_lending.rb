class Book

# Your class should have two class variables: @@on_shelf and @@on_loan. Both should start as empty arrays. @@on_shelf will contain the collection of book objects that are available to be lent out and @@on_loan will contain the collection of books that are currently being borrowed.
  @@on_shelf = []
  @@on_loan = []
  @@due_date

  # Your class will also need reader and writer methods for due_date
  def self.write_due_date=(due_date)
    due_date = @@due_date
  end

  def read_due
    @@due_date
  end












end
