class Person
  include Mongoid::Document
  has_many :diagnoses, autosave: true
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :notes, type: String
  field :notes2, type: String

  validates :first_name, :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
