def nyc_pigeon_organizer(data)
  final_pigeon_data = data.reduce({}) do |memo, (key, value)|
    
    value.reduce({}) do |inner_memo, (inner_key, inner_value)|
      
      count = 0
      while count < inner_value.length do
        name = inner_value[count]
        if (!memo[name])
          memo[name] = {
            color: [],
            gender: [],
            lives: []
          }
        end
        memo[name][key].push(inner_key.to_s)
        count += 1
      end
      
    end
    memo
  end
  p final_pigeon_data
end
