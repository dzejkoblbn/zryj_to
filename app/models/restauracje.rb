class Restauracje < ApplicationRecord
  belongs_to :pracownicy
  has_many :obszaries
end
