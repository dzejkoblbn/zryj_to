json.extract! pracownicy, :id, :id_pracownika, :imie, :nazwisko, :zarobki, :zamowienia_id, :created_at, :updated_at
json.url pracownicy_url(pracownicy, format: :json)
