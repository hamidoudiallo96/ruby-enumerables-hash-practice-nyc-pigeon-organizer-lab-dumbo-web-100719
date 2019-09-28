def nyc_pigeon_organizer(data)
	final_pigeon_hash = {}
	data.each do |(color_gender_lives,value)|

		value.each do |(all_stats,all_names)|
			all_names.each do |name|
				if final_pigeon_hash[name] == nil
					final_pigeon_hash[name] = {}
				end
				if final_pigeon_hash[name][color_gender_lives] == nil
					final_pigeon_hash[name][color_gender_lives] = []
				end
				final_pigeon_hash[name][color_gender_lives].push(all_stats.to_s)
			end
			
		end
	end
	puts final_pigeon_hash
end
