Types::NginxTestType = GraphQL::ObjectType.define do
  name "NginxTest"
  field :id, !types.ID
  field :title, !types.String
  field :content, !types.String
end
