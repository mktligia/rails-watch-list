class BookmarksController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
      if @comment.save
        redirect_to comment_path(@comment)
      else
        render :new
    end
    
    def update
    
    end
  end 
  
  
  def new
    @movie = Ta.new
  end
  
  
  
  def index
        @movie = Movie.all
      end
    
      def show
        @movie = Movie.find(params[:id])
      end
    
    
      
      
    
      private
    
      def task_params
        params.require(:task).permit(:title, :details, :completed)
      end
    
end
