class Customer

  def initialize(wallet,group)
    @wallet = wallet
    @group = group
  end

  def mcdo
    @bill = 10 * @group
    if @bill <= @wallet
      return "Bon app !"
    else
      return "trouve un autre restau moins cher !"
    end
  end

  def ritz
    @bill = 100 * @group
    if @bill <= @wallet
      return "Bon app !"
    else
      return "trouve un autre restau moins cher !"
    end
  end

  def entrecote
    @bill = 50 * @group
    if @bill <= @wallet
      return "Bon app !"
    else
      return "trouve un autre restau moins cher !"
    end
  end

end

### on a des restaus, et un seul plat unique (un prix par personne)
# le customer doit choisir un restaut en fonction du prix.


# my_restaurant = Restaurant.new("McDo",20)

#fonction qui commande et baisse le wallet, et augmente les sales.