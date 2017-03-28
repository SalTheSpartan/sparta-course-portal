class Group < ApplicationRecord
  belongs_to :course
  has_and_belongs_to_many :lessons , class_name: "Lesson"
end
