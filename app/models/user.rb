class User < ApplicationRecord

  before_save :format_username, :format_email, :set_slug

  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_movies, through: :favorites, source: :movie

  has_secure_password

  validates :name,:username, presence: true

  validates :username, format: { with: /\A[A-Z0-9]+\z/i },
                       uniqueness: { case_senitive: false }

  validates :email, format: { with: /\S+@\S+/ },
                    uniqueness: { case_senitive: false }

  validates :password, length: { minimum: 10, allow_blank: true }

  scope :by_name, -> { order(:name) }
  scope :not_admins, -> { by_name.where(admin: false) }

  def gravatar_id
    Digest::MD5::hexdigest(email.downcase)
  end

  def format_username
    self.username = username.downcase
  end

  def format_email
    self.email = email.downcase
  end

    #retourner slub au lieu du id
  def to_param
    slug
  end

  private
    def set_slug
      self.slug = name.parameterize
    end  

end
