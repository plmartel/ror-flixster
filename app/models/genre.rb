class Genre < ApplicationRecord

    before_save :set_slug    

    has_many :movies, through: :characterizations
    has_many :characterizations, dependent: :destroy
    has_many :genre_movies, through: :characterizations, source: :movie
    validates :name, presence: true, uniqueness: true

    def to_param
      slug
    end

    private
      def set_slug
        self.slug = name.parameterize
      end  

end


  #has_many :favorites, dependent: :destroy
  #has_many :favorite_movies, through: :favorites, source: :movie