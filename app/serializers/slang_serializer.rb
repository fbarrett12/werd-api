class SlangSerializer
  include FastJsonapi::ObjectSerializer
  attributes :term, :definition, :location_id
  attribute :slang_city do |object|
    "#{object.location.city}"
  end
  attribute :slang_state do |object|
    "#{object.location.state}"
  end
  attribute :slang_country do |object|
    "#{object.location.country}"
  end
  attribute :slang_longitude do |object|
    "#{object.location.longitude}"
  end
  attribute :slang_latitude do |object|
    "#{object.location.latitude}"
  end

  belongs_to :location
end
