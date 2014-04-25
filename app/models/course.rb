class Course < ActiveRecord::Base
  has_many :registrations
  has_many :students, through: :registrations

  scope :rails, -> { where('title LIKE ?', '%Rails%')}

  scope :small_class, -> {where 'number_of_students < 10'}
end
