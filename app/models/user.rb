class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  geocoded_by :address
  after_validation :geocode,
    :if => lambda{ |obj| obj.address_changed? }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :fullname, presence: true, length: {maximum: 50}

  has_many :products, dependent: :destroy

  has_many :bookings, dependent: :destroy

  has_many :reviews


end
