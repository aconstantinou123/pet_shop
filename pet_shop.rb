def pet_shop_name(name)
  return name[:name]
end

def total_cash(name)
  return name[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
  return shop[:admin][:total_cash] += cash
end

def pets_sold(name)
  return name[:admin][:pets_sold]
end

def increase_pets_sold(name, number)
  return name[:admin][:pets_sold] += number
end

def stock_count(name)
  return name[:pets].length
end

def pets_by_breed(shop, breed)
  pets = []
  for pet in shop[:pets]
    if breed == pet[:breed]
      pets.push(pet[:breed])
    end
  end
  return pets
end

def find_pet_by_name(shop, pet_name)
  pet = {}
  for pet in shop[:pets]
    if pet_name == pet[:name]
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet_name == pet[:name]
      shop[:pets].delete(pet)
    end
  end
  puts pet
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
  return shop[:pets].length
end

def customer_pet_count(customers)
  return customers[:pets].length
end

def add_pet_to_customer(customers, new_pet)
  customers[:pets].push(new_pet)
  return customers[:pets].length
end

def customer_can_afford_pet(customers_money, new_pet_value)
  if customers_money[:cash] >= new_pet_value[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)

  if pet != nil && customer_can_afford_pet(customer, pet) == true

    add_or_remove_cash(pet_shop, pet[:price])

    add_pet_to_customer(customer, pet)

    increase_pets_sold(pet_shop, customer[:pets].length)

  else
    return customer_pet_count(customer)
    return pets_sold(pet_shop)
    return total_cash(pet_shop)
  end
end

# def find_pet_by_name(shop, pet_name)
#   pet = {}
#   for pet in shop[:pets]
#     if pet_name == pet[:name]
#       return pet = {name: pet_name}
#     end
#   end
#   puts pet
# end
