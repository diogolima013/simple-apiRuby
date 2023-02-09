class Contact < ApplicationRecord

  #Associations
  belongs_to :kind
  has_many :phones

  def as_json(options={})
    h = super(options)
    h[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
    h
  end

  # def birthdate_br
  #   I18n.l(self.birthdate) unless self.birthdate.blank?
  # end

  # def to_br
  #   {
  #     name: self.name, 
  #     email: self.email,
  #     birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?)
  #   }   
  # end

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

