var words = [[]];
words[WORDS.NOUN] = [
"mirror", "furnace", "skeleton", "biscuit", "mountain", "delusion", "microcosm", "jelly", "ocean", "truth",
"science", "product", "insect", "tyranny", "creature", "theory", "life", "beast", "hope", "gland",
"convexity", "concavity", "doom", "season", "corrosion", "passion", "fate", "vessel", "pain", "chemical",
"mandible", "ray", "spirit", "feeling", "radiance", "dirt", "vacuum", "art", "homunculus", "engine",
"text", "wheel", "vent", "lard", "memory", "apparel", "domicile", "behavior", "government", "sound",
"prison", "being", "sustenance", "death", "worm", "stone", "color", "crystal", "gastropod", "flesh",
"fire",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.DETERMINER] = [
"my", "his", "her", "its", "your", "our", "their", "the", "thy", "this",
"that", "thine", "another", "a",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.VERB] = [
"indulge", "lament", "caress", "exalt", "destroy", "avenge", "batter", "stretch", "deceive", "shun",
"manifest", "witness", "actualize", "embrace", "levitate", "pardon", "sniff", "banish", "falsify", "pilot",
"hark", "consider", "render", "forget", "remember", "approach", "castigate", "liquify", "debase", "sing",
"hydrate", "chill", "rescue", "hoist", "extrude", "desire", "impede", "thrum", "suffer", "texturize",
"bungle", "dance", "beat", "bleed", "soak", "work", "calm", "tether", "blast", "digest",
"smear", "rock", "roll", "sustain", "gather", "exhume", "rehydrate", "prepare", "purify"
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.ADJ] = [
"mortal ", "shining ", "joyful ", "austere ", "melancholy ", "small ", "lordly ", "massive ", "effulgent ", "wandering ",
"gentle ", "weaponized ", "sentimental ", "correct ", "motile ", "youthful ", "incomplete ", "haughty ", "furtive ", "vital ",
"offending ", "pungent ", "shriveled ", "noisome ", "hallowed ", "flabby ", "zesty ", "mechanized ", "little ", "burning ",
"fatal ", "elusive ", "merry ", "plastic ", "juicy ", "televised ", "sphere-like ", "modified ", "augmented ", "noble ",
"pneumatic ", "hylic ", "psychic ", "bad ", "pupigerous ", "nodulous ", "cycloid ", "forbidden ", "lurid ", "fine ",
"platinum ", "blue ", "monochrome ", "spreading ", "mutant ", "revolving ", "corporeal ", "hideous ", "mild ", "shrunken ",
"glum", "petty ", "clean ", "mutable ", "leather ", "scaly ", "spongy ", "tendrillar ", "refulgent ", "porcelain ",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.SUREADJECTIVE] = [
"mortal", "shining", "joyful", "austere", "melancholy", "small", "lordly", "massive", "effulgent", "wandering",
"gentle", "weaponized", "sentimental", "correct", "motile", "youthful", "incomplete", "haughty", "furtive", "vital",
"offending", "pungent", "shriveled", "noisome", "hallowed", "flabby", "zesty", "mechanized", "little", "burning",
"fatal", "elusive", "merry", "plastic", "juicy", "televised", "sphere-like", "modified", "augmented", "noble",
"pneumatic", "hylic", "psychic", "bad", "pupigerous", "nodulous", "cycloid", "forbidden", "lurid", "fine",
"platinum", "blue", "monochrome", "spreading", "mutant", "revolving", "corporeal", "hideous", "mild", "shrunken",
"glum", "petty", "clean", "mutable", "leather", "scaly", "spongy", "tendrillar", "refulgent", "porcelain",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.SINGULARPRONOUN] = [
"she", "someone", "it", "they", //i added they
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.COORDCONJUNCTION] = [
"or", "so", "and", "but", "for", "yet",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.WILLDOTHMAYCAN] = [
"doth", "may", "can", "will",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.POSPRONOUN] = [
"hers", "his", "yours", "theirs", "ours", "its",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.POSPRONOUN2] = [
"her", "his", "your", "their", "our", "my",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.PUNCTUATION] = [
".", "!", "!!",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.CONJUNCTION] = [
"but", "though", "yet",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.PREFIX] = [
"omega-", "ultra-", "anti-", "half-", "ur-", "mini-", "proto-", "trans-", "hyper-", "multi-",
"cryo-", "post-", "omni-", "geo-", "multi-", /*[sic]*/ "demi-", "mai-", "semi-", "non-", "pseudo-",
"xeno-", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.ADVERB] = [
"thinly ", "strongly ", "invisibly ", "slowly ", "woozily ", "grimly ", "greatly ", "mostly ", "partially ", "totally ",
"blatantly ", "pleasantly ", "luxuriously ", "expansively ", "utterly ", "rapidly ", "crudely ", "mercifully ", "delicately ", "wrongfully ",
"arrogantly ", "horribly ", "wonderfully ", "ostensibly ", "remarkably ", "miraculously ", "accidentally ", "totally ", "", "",
"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.SUREADVERB] = [
"thinly", "strongly", "invisibly", "slowly", "woozily", "grimly", "greatly", "mostly", "partially", "totally",
"blatantly", "pleasantly", "luxuriously", "expansively", "utterly", "rapidly", "crudely", "mercifully", "delicately", "wrongfully",
"arrogantly", "horribly", "wonderfully", "ostensibly", "remarkably", "miraculously", "accidentally", "totally",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.SORTOFLIKE] = [
"sort of ", "like, ", "kind of ", "mostly ", "", "", "", "", "", "",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.SURESORTOFLIKE] = [
"sort of like", "like", "kind of like", "sort of almost", "like", "like", "like", "like", "like", "like",
"mostly", "I wish I could say it was like", "unlike", "vaguely",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.PREPOSITION] = [
"above", "below", "amidst", "hear", "far beyond", "inside", "thanks to", "out of", "despite", "astride",
"in", "beside", "of", "with",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.QUESTION] = [
"who", "what",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.PRONOUN] = [
"he", "she", "it", "they", //i added they
//"", "", "", "", "", "", "", "", "", "",
];
/*words[WORDS.NOUN] = [
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
];*/
global.hylicswords = words;