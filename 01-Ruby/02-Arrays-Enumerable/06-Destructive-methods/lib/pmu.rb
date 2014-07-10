def pmu_format!(*race_array)
  #TODO: modify the given array so that it is PMU-consistent

  for horse in race_array

    rank = race_array.find_index(horse)

    race_array[rank] = "#{rank + 1}-#{horse}"

  end

  race_array.reverse!

end

p pmu_format!("Abricot du Laudot", "Black Caviar", "Brigadier Gerard")

# récupérer les données du tableau que j'ai reçu
# parser les données que j'ai reçu
# les inverser
# rajouter un le rang devant



#Ex: `["Abricot du Laudot", "Black Caviar", "Brigadier Gerard"]`
#should become exaclty `["3-Brigadier Gerard!", "2-Black Caviar!", "1-Abricot du Laudot!"]`