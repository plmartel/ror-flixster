class MoviesController < ApplicationController

    before_action :require_signin, except: [:index, :show]
    before_action :require_admin, except: [:index, :show]
    before_action :set_movie, only: [:edit, :show, :update, :destroy]

    def index
      @movies = Movie.send(movies_filter)
    end

    def show
        @review = @movie.reviews.new
        @fans = @movie.fans
        @genres = @movie.genres.order(:name)
        if current_user
          @favorite = current_user.favorites.find_by(movie_id: @movie.id)
        end
    end

    def edit

    end

# Do you really want to trust parameters from the big, bad Internet?" 
# It's actually quite trivial for a malicious user (a hacker) to fake form data and end up changing movie attributes that we don't want them to change.

#To prevent that from happening, Rails requires us to explicitly list the attributes that can be mass assigned from form data. 
#We do that by calling the permit method and passing in the list of attributes that are allowed to be mass-assigned from form data, like so:

#<form action="/movies/1" method="post">
#  <input type="hidden" name="_method" value="patch" />
#  ...
#</form>

#The relevant parts here are the action and the method. The action says that submitting this form will send the data to /movies/1. 
#But remember that the router recognizes requests based on both a URL pattern to match and an HTTP verb. 
#So the method attribute in the form specifies the HTTP verb to use. 
#By default, forms are submitted with the POST HTTP verb as indicated by the value of the method attribute here.

#By following the PATCH-Redirect-GET pattern, we prevent duplicate form submissions, and thereby create a more intuitive interface for our users.

    def update
        #movie_params = 
        #    params.require(:movie).
        #        permit(:title, :description, :rating, :released_on, :total_gross)
        if @movie.update(movie_params)
            redirect_to @movie, notice: "Movie successfully updated"
        else
            render :edit, status: :unprocessable_entity
        end              
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(movie_params)

        if @movie.save
            redirect_to @movie, notice: "Movie successfully created"
        else
            #re render the form and prepopulate with valid pieces, no redirect
            render :new, status: :unprocessable_entity            
        end          
    end

    def destroy
        @movie.destroy
        #redirect_to movies_url, status: :see_other, alert: "Movie successfully deleted!"
        redirect_to movies_url, status: :see_other,danger: "I'm sorry, Dave, I'm afraid I can't do that!"
    end

    private
        def movie_params
            params.require(:movie).
                permit(:title, :description, :rating, :released_on, :total_gross, :director, :duration, :image_file_name, genre_ids: [])
        end

        def movies_filter
          if params[:filter].in? %w(upcoming recent hits flops)
            params[:filter]
          else
            :released
          end
        end
        
        def set_movie
          @movie = Movie.find_by!(slug: params[:id])
        end
end

#root_path         GET        /
#movies_path       GET        /movies(.:format)           movies#index
#                  POST       /movies(.:format)           movies#create
#new_movie_path    GET        /movies/new(.:format)       movies#new
#edit_movie_path   GET        /movies/:id/edit(.:format)  movies#edit
#movie_path        GET        /movies/:id(.:format)       movies#show
#                  PUT        /movies/:id(.:format)       movies#update
#                  PATCH      /movies/:id(.:format)       movies#update
#                  DELETE     /movies/:id(.:format)       movies#destroy