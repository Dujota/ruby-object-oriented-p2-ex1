class Book

# Your class should have two class variables: @@on_shelf and @@on_loan. Both should start as empty arrays. @@on_shelf will contain the collection of book objects that are available to be lent out and @@on_loan will contain the collection of books that are currently being borrowed.
  @@on_shelf = []
  @@on_loan = []
  @@due_date = 0

  # Your class will also need reader and writer methods for due_date
  def self.write_due_date=(due_date)
    due_date = @@due_date
  end

  def self.create #class method
    @@on_shelf << Book.new(title, author, isbn) #calls Book.new and shovels entry into array
    return @@on_shelf.last #returns the newest book added to the on_shelf array
  end

  def read_due
    @@due_date
  end

  # Your class should have the following methods:
    # an instance method initialize
    def initialize(title, author, isbn)
      @title = title
      @author = author
      @isbn = isbn
    end
    # an instance method borrow
    # an instance method return_to_library
    # an instance method lent_out?
    # a class method create
    # a class method current_due_date
    # a class method overdue_books
    # a class method browse
    # a class method available
    # a class method borrowed










end
