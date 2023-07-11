var words = [[]];
words[WORDS.NOUN] = [
"guardian", "hero", "girl", "woman", "priestess", "madien", "magician", "mountain", "god", "purity",
"magic", "stone", "book", "spellcard", "youkai", "lunarian", "rabbit", "sage", "heaven", "faith",
"fear", "memory", "myth", "emporer", "talon", "maw", "ravine", "regret", "jogathon", "demon",
"apprentice", "fire", "water", "earth", "wood", "metal", "sun", "moon", "friday", "history",
"prayer", "lycanthrope", "boundary", "dream", "reality", "fantasy", "scroll", "amalgam", "archer", "nobility",
"fugue",
];
words[WORDS.DETERMINER] = [
"my", "her", "its", "your", "our", "their", "the", "thy", "this",
"that", "thine", "another", "a",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.VERB] = [
"divine", "fly", "gnash", "gnaw", "consume", "break", "flap", "lap", "hypothesize", "pray",
"accost", "exsanguinate", "sublimate", "quantize", "instantiate", "frivolous", "munction", "exalt", "frame", "load",
"save", "reset", "light", "convince", "record", "summon", "chain", "fling", "lumber", "rely",
"align", "regret", "decide", "entrust", "compose", "absorb", "enlighten", "ascend", "complete", "crush",
"blink", "hammer", "import", "comply", "compute", "thread", "refresh", "promise", "uncover", "pretend",
];
words[WORDS.ADJ] = [
"painful ", "joyful ", "hopeful ", "hopeless ", "pointless ", "doleful ", "oblivious ", "wishful ", "wishless ", "ungrateful ", //OSDHUIFIKDHJFNKLSXDCJFHNKLXDJCHGKLHJDFJDJDHJBXCKNJM
"timeless ", "guilty ", "faithful ", "prudent ", "worldly ", "devilish ", "benign ", "malicious ", "eerie ", "adept ",
"pursual ", "loyal ", "strongest ", "great ", "austere ", "staccato ", "nebulous ", "trite ", "funicular ", "devious ",
"recurring ", "extreme ", "violet ", "contiguous ", "delayed ", "restrained ", "declared ", "pure ", "silent ", "coagulating ",
"tasteful ", "dysfunctional ", "transient ", "crass ", "frugal ", "determined ", "brave ", "just ", "kind ", "patient ",
"integrous ", "perserverant ", "hateful ", "empty ", "forgotten ",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "",

];
words[WORDS.SUREADJECTIVE] = [
"painful", "joyful", "hopeful", "hopeless", "pointless", "doleful", "oblivious", "wishful", "wishless", "ungrateful",
"timeless", "guilty", "faithful", "prudent", "worldly", "devilish", "benign", "malicious", "eerie", "adept",
"pursual", "loyal", "strongest", "great", "austere", "staccato", "nebulous", "trite", "funicular", "devious",
"recurring", "extreme", "violet", "contiguous", "delayed", "restrained", "declared", "pure", "silent", "coagulating",
"tasteful", "dysfunctional", "transient", "crass", "frugal", "determined", "brave", "just", "kind", "patient",
"integrous", "perserverant", "hateful", "empty", "forgotten"
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.SINGULARPRONOUN] = [
"she", "someone", "it", "they",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.COORDCONJUNCTION] = [
"or", "so", "and", "but", "for", "yet", "although", "xor"
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.WILLDOTHMAYCAN] = [
"doth", "may", "can", "will",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.POSPRONOUN] = [
"hers", "yours", "theirs", "ours", "its",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.POSPRONOUN2] = [
"her", "your", "their", "our", "my",
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
"dai-", "o-", "anti-", "non-", "a-", "pre-", "post-", "intra-", "hypo-", "demi-",
"hyper-", "mega-", "super-", "ultra-", "extra-", "giga-", "meta-", "micro-", "pan-", "pro-",
"quasi-", "", "", "", "", "", "", "", "", "",
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
"regrettably ", "forgetfully ", "impossibly ", "reactively ", "impassably ", "divinely ", "creatively ", "woefully ", "methodically ", "relentlessly ",
"vehemently ", "visciously ", "cryogenically ", "diegetically ", "reluctantly ", "homogeneically ", "jokingly ", "zanily ", "beneficiarily ", "violently ",
"hopefully ", "statically ", "deterministically ", "randomly ", "economically ", "demonically ", "magically ", "uncannily ", "", "",
"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.SUREADVERB] = [
"regrettably", "forgetfully", "impossibly", "reactively", "impassably", "divinely", "creatively", "woefully", "methodically", "relentlessly",
"vehemently", "visciously", "cryogenically", "diegetically", "reluctantly", "homogeneically", "jokingly", "zanily", "beneficiarily", "violently",
"hopefully", "statically", "deterministically", "randomly", "economically", "demonically", "magically", "uncannily",

//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.SORTOFLIKE] = [
"sort of ", "like, ", "kind of ", "", "", "", "", "", "", "",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.SURESORTOFLIKE] = [
"sort of like", "like", "kind of like", "sort of almost", "like", "like", "like", "like", "like", "like",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.PREPOSITION] = [
"beyond", "inside", "outside", "between", "within", "amidst", "transposed with", "simultaneously at", "away from", "hidden inside",
"of", "with", "above", "below", "behind",
];
words[WORDS.QUESTION] = [
"who", "what",
//"", "", "", "", "", "", "", "", "", "",
];
words[WORDS.PRONOUN] = [
"she", "it", "they",
//"", "", "", "", "", "", "", "", "", "",
];
/*words[WORDS.NOUN] = [
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
"", "", "", "", "", "", "", "", "", "",
];*/
global.touhouwords = words;