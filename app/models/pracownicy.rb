class Pracownicy < ApplicationRecord
  belongs_to :zamowienia
  has_many :restauracjes
  has_many :typy_pracownikas
end
