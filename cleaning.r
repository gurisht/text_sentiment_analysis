tweets <- read.csv("collected_tweets.csv", stringsAsFactors = FALSE)
corpus <- Corpus(VectorSource(tweets$text))
corpus <- tm_map(corpus,tolower)
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeWords, c("https","Donald","Trump","donald","trump","via","@","www","com", stopwords("english")))
corpus <- tm_map(corpus, stemDocument)
