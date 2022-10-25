class CashRegister
attr_accessor :discount,:total,:final_transaction,:items
attr_writer :title,:price
    def initialize(discount=0)
      
        @discount=discount
        @items=[]
        @total=0
        
    end
    
    
    def add_item(title,price,quantity=1)
        self.final_transaction=price*quantity
        self.total+=self.final_transaction
        quantity.times do self.items<<title

        end
    end

    def apply_discount
        if self.discount!=0
            percentage_discount=(100.0-self.discount.to_f)/100
            self.total=(self.total*percentage_discount)
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end


    end

    def void_last_transaction
    self.total-=final_transaction


    end





end

