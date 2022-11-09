puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
le_babaorum = {name: "Le Babaorum", address:"42 Route de Chateauboeuf, Fort-de-France 97200 Martinique", phone_number:"0596 75 03 32", category:"french"}
la_chaudiere = {name: "La Chaudière", address:"Route Morne Rouge Direction Morne Rouge, Le Morne-Rouge 97260 Martinique", phone_number:"0596 52 34 47", category:"french"}
la_mandoline = {name: "La Mandoline", address:"Village De La Poterie., Trois-Ilets 97229 Martinique", phone_number:"0596 69 48 38", category:"french"}
le_shells_beach = {name: "Le Shell's Beach", address:"Rue de la plage Case Pilote, 97222 Martinique", phone_number:"0596 66 37 91", category:"french"}
la_table_de_mamy_nounou = {name: "La Table de Mamy Nounou", address:"Route du chateau Dubuc, quartier Anse l'étang, Tartane 97220 Martinique", phone_number:"0596 58 07 32", category:"french"}

[le_babaorum, la_chaudiere, la_mandoline, le_shells_beach, la_table_de_mamy_nounou].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
