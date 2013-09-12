class Numeric
 @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
 def method_missing(method_id,*args)
   if(args.length > 0)
	   singular_currency = args[0].to_s.gsub( /s$/, '')
	   if @@currencies.has_key?(singular_currency)
	     self / @@currencies[singular_currency]
	   else
	     super
	   end
   else
	   singular_currency = method_id.to_s.gsub( /s$/, '')
	   if @@currencies.has_key?(singular_currency)
	     self * @@currencies[singular_currency]
	   else
	     super
	   end
   end
 end
end

puts 2.euros.in(:yens)