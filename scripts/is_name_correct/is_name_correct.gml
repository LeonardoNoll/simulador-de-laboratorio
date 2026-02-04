function is_marked_correctly(_recipient, _substance){
	if(is_undefined(_recipient)) return false
	if(is_undefined(_substance)) return false
	
	return string_normalize(_recipient.name) == string_normalize(_substance.name)
}