
class CashRegister
    attr_accessor :total
    attr_reader :discount, :price
   

    def initialize(discount=0)
        @total=0
        @discount=discount
        @items=[]
    end

    def add_item(item, price, quantity=1)
        @current_total= @total
        @total+=price*quantity 
        if quantity>1 
            quantity.times {@items << item}
        else 
            @items << item
        end

    end

    def apply_discount
        if @discount==0
            return "There is no discount to apply."
        else
            @total-=@total*(@discount / 100.0)
            return "After the discount, the total comes to $#{@total.round}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total=@current_total
    end
end




