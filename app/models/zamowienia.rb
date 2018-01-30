class Zamowienia < ApplicationRecord
  belongs_to :produkty_na_zamowieniu
  has_many :pracownicies
  has_many :kliecis
end
