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
      return pet = {name: pet_name}
    end
  end
end
