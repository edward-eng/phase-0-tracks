class TodoList
	def initialize(array)
		@array = array
	end

	def get_items
		@array
	end

	def add_item(new_item)
		@array.push(new_item)
	end

	def delete_item(unwanted_item)
		@array.delete(unwanted_item)
	end

	def get_item(i)
		@array[i]
	end
end