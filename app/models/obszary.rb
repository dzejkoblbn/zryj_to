class Obszary < ApplicationRecord
  belongs_to :restauracje
  has_many :ulices
end
