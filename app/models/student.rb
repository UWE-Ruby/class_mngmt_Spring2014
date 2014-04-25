class Student < ActiveRecord::Base
  has_many :registrations
  has_many :courses, through: :registrations

  scope :teachers, -> { where profession: 'Teacher' }
  scope :names, -> { pluck :full_name }
end
