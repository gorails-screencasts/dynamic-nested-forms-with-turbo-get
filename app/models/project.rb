class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy

  accepts_nested_attributes_for :tasks

  # def task_attributes=(task_attributes)
  #   task_attributes.each do |attr|
  #     tasks.build(attr)
  #   end
  # end
end
