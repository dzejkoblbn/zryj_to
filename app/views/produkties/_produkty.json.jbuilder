json.extract! produkty, :id, :id_produktu, :nazwa, :cena, :czas_przygotowania, :produkty_na_zamowieniu_id, :created_at, :updated_at
json.url produkty_url(produkty, format: :json)
