function string_digits_with_decimal(str){
	var newS = "";
		for(var i=1; i<=string_length(str); i++) {
		     var c = string_char_at(str, i);
		     newS += string_digits(c);
			 var _has_decimal = string_pos(".", newS) > 0
		     if(c == "." && !_has_decimal) { 
				 newS += "."
			};
		}
	//number = real(newS);
	return newS
}