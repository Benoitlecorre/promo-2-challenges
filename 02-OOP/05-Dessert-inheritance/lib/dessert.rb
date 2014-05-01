class Dessert

attr_reader :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    @calories < 200
=begin
if @calories < 200
  true
else
  false
end
=
@calories < 200 ? true : false
=end
  end



  def delicious?
    true
  end
end

class JellyBean < Dessert

attr_reader :flavor

  def initialize(name, calories, flavor)
    super(name, calories)#car il appelle la méthode initialize de (names, calories)
    @flavor = flavor
  end

  def delicious?
    @flavor != "black licorice"
  end
end