def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  item_index = 0 
  while item_index < collection.length do
    if collection[item_index][:item] == name
      return collection[item_index]
    end
    item_index += 1
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  item_index = 0
  ingredients = []
  while item_index < cart.length do
    more_items = find_item_by_name_in_collection(cart[item_index][:item],ingredients)
    if more_items
      more_items[:count] += 1
    else 
      current_item = cart[item_index]
      current_item[:count] = 1
      ingredients.push(current_item)
    end
    item_index += 1
  end
  return ingredients
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
