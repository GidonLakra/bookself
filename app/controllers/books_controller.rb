class BooksController < ApplicationController
    def index
    end

     def newbook
     end

   def create
     # Retrive the Book parameters that we submit in the form
      title = params[:title]
      author = params[:author]
      description = params[:description]
      rating = params[:rating]
      reading_status = params[:reading_status]

     # create a new record with this parameter in the database
       Book.create(title: title, author: author, description: description, rating: rating, reading_status: reading_status)

     # and then redirect to index page
      redirect_to books_path
   end

   def modify
     # to retrive the current book
     @book = Book.find(params[:id])
   end

   def update
    # to retrive the current book
    @book = Book.find(params[:id])

    # update the new record with this parameter in the database
    @book.update(title: params[:book][:title], author: params[:book][:author], description: params[:book][:description], rating: params[:book][:rating], reading_status: params[:book][:reading_status])

    # and then redirect to index page
    redirect_to books_path
   end

   def destroy
    @book = Book.find(params[:id])

    @book.destroy

    redirect_to books_path
   end

end
