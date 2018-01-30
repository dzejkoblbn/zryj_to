json.extract! klienci, :id, :id_klienta, :imie, :nazwisko, :ulica, :kod_pocztowy, :numer_lokalu, :zamowienia_id, :created_at, :updated_at
json.url klienci_url(klienci, format: :json)
