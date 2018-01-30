class Klienci < ApplicationRecord
  belongs_to :zamowienia

  has_secure_password

  validates :id_klienta, presence: true, uniqueness: true, length: { is: 6 }
  validates :imie, presence: true, uniqueness: true, length: { in: 3..10 }
  validates :nazwisko, presence: true, uniqueness: true, length: { in: 3..20 }
  validates :ulica, presence: true, uniqueness: true, length: { in: 3..30 }
  validates :kod_pocztowy, presence: true, uniqueness: true, length: { is: 6 }
  validates :numer_lokalu, presence: true, uniqueness: true, length: { in: 1..3 }
  validates :password, presence: true, length: { minimum: 6 }
end
