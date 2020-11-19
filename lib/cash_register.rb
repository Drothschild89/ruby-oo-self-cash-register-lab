class CashRegister
    attr_reader :discount
    attr_accessor :total, :items, :previous_total

def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
end

def add_item(title, price, quantity = nil)
    if quantity
        quantity.times {self.items.push(title)}
        self.total += price*quantity
    else
        self.items.push(title)
        self.total += price
    end
end

def apply_discount
    if self.discount
        self.total = self.total*(1 - self.discount.to_f/100)
        "After the discount, the total comes to $#{self.total.to_i}."
    else
        "There is no discount to apply."
    end
end
def void_last_transaction
    self.total = self.previous_total
    
end
end


