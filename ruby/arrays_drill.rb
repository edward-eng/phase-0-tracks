def build_array(itemA, itemB, itemC)
	build_array = [itemA, itemB, itemC]
end

def add_to_array(arr, value)
	arr << value
end

empty_array = []
p empty_array

empty_array << "item1" << "item2" << "item3" << "item4" << "item5"
p empty_array

empty_array.delete_at(2)
p empty_array

empty_array.insert(2, "new_item")
p empty_array

empty_array.shift
p empty_array

empty_array.include?("item5")
p "Is it true or false that the array includes item5? #{empty_array.include?("item5")}"

new_array = [1, 2, 3]

combined_array = empty_array + new_array
p combined_array

p build_array(1, "two", nil)
p add_to_array(["a", "b", "c", 1, 2], 3)