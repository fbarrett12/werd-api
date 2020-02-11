class SlangSerializer
  include FastJsonapi::ObjectSerializer
  attributes :term, :definition
end
