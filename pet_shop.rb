def pet_shop_name(name)
  return @pet_shop[:name]
end

def total_cash(name)
  return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
  return @pet_shop[:admin][:total_cash] += cash
end
