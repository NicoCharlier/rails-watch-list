class BookmarksController < ApplicationController

  

  def new
    @Bookmarks = Bookmark.new
  end

  def create
    @bookmarks = Bookmark.new(bookmark_params)
    
    end
  end

  private

  def bookmarks_params
    params.require(:Bookmark).permit(:comment)
  end
end
