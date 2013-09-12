class CartesianProduct
include Enumerable
    def initialize(arg1 = [], arg2 = [])
       @first = arg1
       @second = arg2  
    end
    def each
        prod = @first.product @second
        prod.each{|p| yield p }
    end
end


c = CartesianProduct.new([4,5,7],["a","b","c","d"])
c.each { |elt| puts elt.inspect }