class Student < ActiveRecord::Base
  has_many :registrations
  has_many :courses, through: :registrations

  validates :full_name, presence: true
  validates :email, presence: true, length: { minimum: 6, maximum: 256 }
  validates :age, numericality: { only_integer: true }

  # after_validation :clean_up_full_name

  scope :teachers, -> { where profession: 'Teacher' }
  scope :names, -> { pluck :full_name }

  def clean_up_full_name
    self.full_name = "Ice Cream Wrangler Clown"
  end

end


