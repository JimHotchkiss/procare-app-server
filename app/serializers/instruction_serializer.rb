class InstructionSerializer < ActiveModel::Serializer
  attributes :id, :title, :repairs, :sections
end
