class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :person_id
end
