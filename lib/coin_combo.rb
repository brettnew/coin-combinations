class Fixnum
  define_method(:coin_combo) do
    total = self
    pennies =0
    nickels = 0
    dimes = 0
    quarters = 0
    until total.==(0) do
      if total.>=(25)
      quarters = total./(25)
      total = total.%(25)
      end
      if total.>=(10)
      dimes = total./(10)
      total = total.%(10)
      end
      if total.>=(5)
      nickels = total./(5)
      total = total.%(5)
      end
      if total.>=(1)
      pennies = total./(1)
      total = total.%(1)
      end
    end
    combo_array = [quarters, dimes, nickels, pennies]
  end
end
