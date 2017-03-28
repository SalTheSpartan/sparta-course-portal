class Lesson < ApplicationRecord
  belongs_to :syllabus
  has_and_belongs_to_many :groups , class_name: "Group"
end
