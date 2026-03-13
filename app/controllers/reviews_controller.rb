class ReviewsController < ApplicationController
    before_action :require_signin
    before_action :set_movie

    def index
        @reviews = @movie.reviews
    end

    def new
        @review = @movie.reviews.new
    end

    def create
        @review = @movie.reviews.new(review_params)
        @review.user = current_user

        if @review.save
            redirect_to movie_reviews_path(@movie), notice: "Review successfully created"
        else
            #re render the form and prepopulate with valid pieces, no redirect
            render :new, status: :unprocessable_entity            
        end    

    end

    def edit
        set_review
    end

    def update
        set_review
        if @review.update(review_params)
            redirect_to [@movie,@review], notice: "Review successfully updated"
        else
            render :edit, status: :unprocessable_entity 
        end
    end

    def destroy
        set_review
        @review.destroy
        redirect_to @movie, status: :see_other, alert: "Review successfully deleted!"
    end

    def set_movie
        @movie = Movie.find_by!(slug: params[:movie_id])
    end

    def set_review
        @review = @movie.reviews.find(params[:id])
    end 

    private
        def review_params
            params.require(:review).permit(:stars, :comment)
        end

end