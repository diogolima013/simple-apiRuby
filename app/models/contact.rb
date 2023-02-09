class Contact < ApplicationRecord
  belongs_to :kind

  # def author
  #   "Jackson Pires"
  # end

  # def kind_description 
  #   self.kind.description
  # end

  # 2 exemplos de metódos

  # def as_json(options={})
  #   super(
  #     root: true,
  #     methods: [:kind_description, :author ]
  #     # include: { kind: {only: :description}}
  #   )
  # end
end

