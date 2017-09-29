class Book

# Your class should have two class variables: @@on_shelf and @@on_loan. Both should start as empty arrays. @@on_shelf will contain the collection of book objects that are available to be lent out and @@on_loan will contain the collection of books that are currently being borrowed.
  @@on_shelf = []
  @@on_loan = []
  @@due_date = 0

  # Your class will also need reader and writer methods for due_date
  def self.write_due_date=(due_date)
    due_date = @@due_date
  end

  def self.create(title, author, isbn) ## a class method create
    @@on_shelf << Book.new(title, author, isbn) #calls Book.new and shovels entry into array
    return @@on_shelf.last #returns the newest book added to the on_shelf array
  end

  # a class method current_due_date
  def self.current_due_date

  end

  # a class method overdue_books
  def self.overdue_books

  end
  # a class method browse This class method should return a random book from @@on_shelf
  def self.browse
    @@on_shelf.sample
  end
  # a class method available that returns value @@on_shelf
  def self.available
    @@on_shelf
  end
  # a class method borrowed that returns@@on_loan
  def self.borrowed
    @@on_loan
  end

  def due_date
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
    def borrow

    end
    # an instance method return_to_library
    def return_to_library

    end
    # an instance method lent_out? This instance method return true if a book has already been borrowed and false otherwise.
    def lent_out?
      @@on_shelf.include?(self) #checks if the the book we pass in with this instance method is part of the array or not and returns boolean value
    end












end






sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
puts Book.browse.inspect # #<Book:0x00555e82acdab0 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221"> (this value may be different for you)
puts Book.browse.inspect # #<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307"> (this value may be different for you)
puts Book.browse.inspect # #<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307"> (this value may be different for you)
puts Book.available.inspect # [#<Book:0x00555e82acde20 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431">, #<Book:0x00555e82acdce0 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00555e82acdab0 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">]
puts Book.borrowed.inspect # []
puts sister_outsider.lent_out? # false
puts sister_outsider.borrow # true
puts sister_outsider.lent_out? # true
puts sister_outsider.borrow # false
puts sister_outsider.due_date # 2017-02-25 20:52:20 -0500 (this value will be different for you)
puts Book.available.inspect # [#<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00562314675fd8 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">]
puts Book.borrowed.inspect # [#<Book:0x00562314676208 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431", @due_date=2017-02-25 20:55:17 -0500>]
puts Book.overdue_books.inspect # []
puts sister_outsider.return_to_library # true
puts sister_outsider.lent_out? # false
puts Book.available.inspect # [#<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00562314675fd8 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">, #<Book:0x00562314676208 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431", @due_date=nil>]
puts Book.borrowed.inspect # []
