function parse_becker_sprite_by_liquid(_liquid){
switch (_liquid) {
    case s_cocacola_bottle:
		return s_becker_cocacola
	case s_coffee_bottle:
		return s_becker_coffee
	case s_energetico_bottle:
		return s_becker_energetico
	case s_iogurte_bottle:
		return s_becker_iogurte
	case s_isotonico_bottle:
		return s_becker_isotonico
	case s_lemonjuice_bottle:
		return s_becker_lemonjuice
    default:
        return undefined
	}
}