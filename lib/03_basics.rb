def who_is_bigger(a,b,c)
	if (a == nil || b == nil || c == nil)
		return "nil detected"
	elsif (a > b && a > c)
		return "a is bigger"
	elsif (b > a && b > c)
		return "b is bigger"
	else
		return "c is bigger"
	end
end

def reverse_upcase_noLTA(str)
	return str.reverse!.upcase.tr('TLA','')
end

def array_42(arr)
	arr.to_a.include? (42)
end

def magic_array(arr)
	return arr.flatten.sort!.uniq.map { |x| if (x%3 != 0) then x*2 end}.compact
end