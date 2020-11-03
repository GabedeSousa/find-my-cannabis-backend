 # jbuilder eh uma gema que nos permite que devolvemos json mais facilmente
 # id vai ser o id da store
 # as variaveis de instancia dos controllers sao passadas automaticamente para view
 # tanto para view com HTML tanto para

json.id @store.id
json.lonlat @store.lonlat
json.name @store.name
json.address @store.address
json.google_place_id @store.google_place_id

json.ratings @store.ratings do |rating|
  json.value rating.value
  json.opnion rating.opnion
  json.user_name rating.user_name
  json.date rating.created_at.strftime("%d/%m/%Y")
end

json.ratings_count @store.ratings.count
json.ratings_average @store.ratings_average