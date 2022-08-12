class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sake_posts
  has_many :sake_comments, dependent: :destroy
  has_many :sake_favorites, dependent: :destroy
  has_many :shop_favorites, dependent: :destroy
  has_many :shop_posts, dependent: :destroy
  
  validates :name, length: {minimum: 2}

  has_one_attached :profile_image

  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/icon_user.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    profile_image.variant(resize_to_limit: [width, height]).processed
  end
  
  def self.guest
    find_or_create_by!(name: 'ゲスト' ,email: 'guest@example.com') do |customer|
      customer.password = SecureRandom.urlsafe_base64
      customer.name = "ゲスト"
    end
  end
  
  def status
    if is_deleted == false
      "有効"
    else
      "退会済み"
    end
  end

end
