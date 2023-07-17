class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :name, presence: true

  accepts_nested_attributes_for :tasks
end
