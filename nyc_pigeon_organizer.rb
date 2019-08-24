def nyc_pigeon_organizer(data)
  final_pigeon_data = data.reduce({}) do |memo, (key, value)|
    
    value.reduce({}) do |inner_memo, (inner_key, inner_value)|
      
      count = 0
      while count < inner_value.length do
        name = memo[inner_value[count]]
        if (!name)
          memo[inner_value[count]] = {
            color: []
            gender: []
            lives: []
          }
          memo[inner_value[count]]
        end
        
        count += 1
      end
    end
  end
  p final_pigeon_data
end
