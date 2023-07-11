function msglang(english, japanese=[txt()], language=global.lang) {
	return array_insert_array_parse(argument[language]);
	/*switch language {
		case LANGUAGE.ENGLISH:
			return array_insert_array_parse(english);
			break;
		case LANGUAGE.JAPANESE:
			return array_insert_array_parse(japanese);
			break;
		default:
			return [txt()];
			break;
	}*/
}


enum LANGUAGE {
	ENGLISH,
	JAPANESE,
	SPANISH,
	CHINESE,
	BREAD,
	SILENT,
}