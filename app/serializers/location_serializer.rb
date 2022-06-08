class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :city, :state, :country, :longitude, :latitude
  has_many :slangs
end
