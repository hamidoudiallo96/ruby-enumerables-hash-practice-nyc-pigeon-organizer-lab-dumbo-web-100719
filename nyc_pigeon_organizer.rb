def nyc_pigeon_organizer(pigeon_data)
  final_pigeon_organizer = {}
  
  pigeon_data.each do |(color_gender_lives,values)|
    values.each do |(all_stats,all_names)|
      all_names.each do |name|
        if final_pigeon_organizer[name] == nil
          #creating intial keys for final_pigeon_organizer
          final_pigeon_organizer[name] = {}
        end
        if final_pigeon_organizer[name][color_gender_lives] == nil
          final_pigeon_organizer[name][color_gender_lives] = []
        end
      end
      final_pigeon_organizer[name][color_gender_lives].push(all_stats.to_s)
    end
  end
  return final_pigeon_organizer
end
