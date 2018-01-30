json.extract! restauracje, :id, :id_restauracji, :nazwa, :ulica, :numer_lokalu, :kod_pocztowy, :pracownicy_id, :created_at, :updated_at
json.url restauracje_url(restauracje, format: :json)
