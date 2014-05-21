class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :registrations
  has_many :courses, through: :registrations

  after_create :notify_admin

  accepts_nested_attributes_for :courses

  #validates_presence_of :full_name, message: 'must be filled in!!'

  validates :full_name, :favorite_ice_cream_flavor, presence: {message: 'must be filled in!!!'}

  validates :email, presence: true, length: { minimum: 6, maximum: 256, message: 'length has to be between 6-256'}
  validates :age, numericality: { only_integer: true }

  # after_validation :clean_up_full_name

  scope :teachers, -> { where profession: 'Teacher' }
  scope :names, -> { pluck :full_name }

  def clean_up_full_name
    self.full_name = "Ice Cream Wrangler Clown"
  end

private
  def notify_admin
    AdminMailer.notify_about_new(self).deliver
  end

end


