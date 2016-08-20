class TodoList
	def initialize(item1, item2)
		@item1 = item1
		@item2 = items2
		@list = []
	end

	def get_items
		@list << @item1
		@list << @item2
	end

	def add_item(new_item)
		@list << new_item
	end

	def delete_item(unwanted_item)
		@list.delete(unwanted_item)
	end

	def retrieve_item(i)
		@list[i]
	end
end

list = TodoList.new(["do the dishes", "mow the lawn"])
list.get_items
list.add_item("mop")
list.delete_item("do the dishes")
list.retrieve_item(0)