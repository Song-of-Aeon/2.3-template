function speech(new_=true, hylicslb=false, words=global.touhouwords, randfunc=irandom) {
	if !new_ {
		if get_value(self, randomspeech) != undefined {
			return randomspeech;
		}
	}
	
	var sentences = [
		"105 102's 113 110 118|120|103#109 111 128|104|s a 112|119",
		"105 102 115 106|111#109 107|120|113 110 118|103 112|119",
		"\"118|103 105 108 120|102\" 116 said.#109 111 104|s 105 128|112|119",
		"120|102 118|115 111's 113|119",
		"Just 103 it.",
		"I'm 128|103|in' it.",
		"116 104|s 105 108 102|119#109 112 120|118|103'd 105 113|119",
		"108 102; uh huh|119",
		"103 like a 107|120|102|119",
		"103 129 122 102|119#104 124 117|119",
		"118|103 120|102|ish|119",
		"118|103 120|108|119",
		"118|120|103 122 102|119",
		"102's 128|118|120|108|119",
		"125 127 120|103'd 105 111?#118|104 122 107|106|108 102|119",
		"125 118|103|s 122 120|111?##109 125 104|s 116 123 105 102?",
		"123 105 120|102,#122 111 118|103|s|119#109 125 110 105 106|112 104?",
		"128|118|103 122 120|111|119",
		"107|106|108 102 103 122 111|119##                   -120|112-123-113",
		"125 118|103|s 105 112 123 113?##107|108 120|111|119",
		"118|103|s 123 122 102,#not 123 122 120|111|119",
		"126's 128|more 106|111 than 120|102 now|119",
		"I am 105 120|102|119#I am 105 106|111|119",
		"126 103|s 123 105 108 111|119",
		"118|103 105 102 123 120|111|119",
		"103 105 120|102|119#126 104|s 123 122 \"108 111|119\"",
		"128|time to 103 the 102|s|119",
		"118|103 it 123 120|102|s119#124 105 111; 124 105 112|119",
		"123 107|102 109 124 120|111,#125 110 118|104 105 112 of 106|113?",
		"125's 118|103|ing 124 105 120|113#125 105|s the 102 123 122 111?#It is, 127, 105 \"112|119\"",
		"105 102... 103 105 120|102|119#104 105 108 102 109 122 106|111#128|127 115 112-113|119",
		"122 120|102 110 127 103 123 105#111|119 109 116 118|104|s 122 112#124 117|119",
		"108 \"102|s\" 110 103 105 120|111|119#109 106|112|s 110 \"104\" 123 122 113|119",
		"107|112-102 110 103#105 128|120|111|119",
		"128|103 123 105 106|102|119",
		"122 111? 125 103|s 122 106|111?#116's 103|ing 123 105 128|108 102|119",
		"my 102 is 118|108|119",
		"104! 116 103|s 123 107|102|119",
		"116 was 127 103|ing 105 102's 111|119",
		"Let's 120|103 102 127|119",
		"127 I 103 122 102#109 I 120|104 122 107|111|119#129 a 106|112-113|119",
	]
	
	var sentence = array_random(sentences, randfunc);
	var atword = 0;
	var theword = word(sentence, atword, true);
	var newword = "";
	var cachedwords = [];
	var wordrelations = [];
	wordrelations[102] = WORDS.NOUN;
	wordrelations[103] = WORDS.VERB;
	wordrelations[104] = WORDS.VERB;
	wordrelations[105] = WORDS.DETERMINER;
	wordrelations[106] = WORDS.ADJ;
	wordrelations[107] = WORDS.ADJ;
	wordrelations[108] = WORDS.SUREADJECTIVE;
	wordrelations[109] = WORDS.COORDCONJUNCTION;
	wordrelations[110] = WORDS.WILLDOTHMAYCAN;
	wordrelations[111] = WORDS.NOUN;
	wordrelations[112] = WORDS.NOUN;
	wordrelations[113] = WORDS.NOUN;
	wordrelations[114] = WORDS.CONJUNCTION;
	wordrelations[115] = WORDS.VERB;
	wordrelations[116] = WORDS.SINGULARPRONOUN;
	wordrelations[117] = WORDS.POSPRONOUN;
	wordrelations[118] = WORDS.ADVERB;
	wordrelations[119] = WORDS.PUNCTUATION;
	wordrelations[120] = WORDS.PREFIX;
	//wordrelations[121] = WORDS.;
	wordrelations[122] = WORDS.POSPRONOUN2;
	wordrelations[123] = WORDS.PREPOSITION;
	wordrelations[124] = WORDS.PREPOSITION;
	wordrelations[125] = WORDS.QUESTION;
	wordrelations[126] = WORDS.PRONOUN;
	wordrelations[127] = WORDS.SUREADVERB;
	wordrelations[128] = WORDS.SORTOFLIKE;
	wordrelations[129] = WORDS.SURESORTOFLIKE;
	iterate wordrelations to {
		if wordrelations[i] > WORDS.NONE {
			cachedwords[i] = array_random(words[wordrelations[i]], randfunc);
		}
	}
	//log(sentence);
	var newsentence = sentence;
	while theword != -1 {
		//log("\"" + theword + "\"");
		if theword == string_digits(theword) {
			newword = cachedwords[string_digits(theword)];
			newsentence = string_replace(newsentence, theword, newword);
		}
		theword = word(sentence, atword, true);
		atword++;
	}
	sentence = newsentence;
	sentence = string_replace_all(sentence, "|", "");
	sentence = string_replace_all(sentence, "#", hylicslb ? "\n" : " ");
	sentence = capitalize(sentence);
	randomspeech = sentence;
	log(randomspeech);
	return randomspeech;
}

/*repeat(4) {
	speech(true, true);
}*/

enum WORDS {
	NONE,
	ADJ,
	PRONOUN,
	DETERMINER,
	VERB,
	ADVERB,
	SORTOFLIKE,
	COORDCONJUNCTION,
	NOUN,
	WILLDOTHMAYCAN,
	PUNCTUATION,
	CONJUNCTION,
	SUREADJECTIVE,
	PREFIX,
	SINGULARPRONOUN,
	POSPRONOUN,
	POSPRONOUN2,
	PREPOSITION,
	SUREADVERB,
	QUESTION,
	SURESORTOFLIKE,
}