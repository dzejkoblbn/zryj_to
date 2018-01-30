class ProduktyNaZamowieniu < ApplicationRecord
  has_many :produkties
  has_many :zamowienias
end
