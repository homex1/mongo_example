class Diagnosis
  include Mongoid::Document

  belongs_to :person  
  field :person_id, type: String
  field :name, type: String
end
