# def array_delete(arr, index)
#   if arr && index
#     for i in index..(arr.length - 1)
#       arr[i] = arr[i + 1]
#     end
#     arr[arr.length - 1] = nil
#   end
#   arr = arr[0..arr.length - 2]
# end

# puts array_delete([1,2,3,4,5], 2)
# module My
# def replace(arr, index, value)
#   if arr && index
#     arr[index] = value
#   end
#   puts arr

# end

# end

# class Mine
# include My
# end
# s = Mine.new
# s.replace([1,2,3,4,5], 2, 120)


arra = [1,89,5,65,54]
def sorting_arr(arr)
  for i in 0..arr.length-1
    for j in i+1..arr.length-1
      if arr[i] > arr[j]
        temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
      end
    end
  end
    arr
end
puts sorting_arr(arra)
