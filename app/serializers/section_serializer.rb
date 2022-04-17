class SectionSerializer < ActiveModel::Serializer
  attributes :title, :description, :sub_sections
end
