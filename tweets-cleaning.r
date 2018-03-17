tweets <- read.csv("collected_tweets.csv", stringsAsFactors = FALSE)
corpus <- Corpus(VectorSource(tweets$text))
corpus <- tm_map(corpus,tolower)
corpus <- tm_map(corpus, removePunctuation)
corpus=tm_map(corpus,function(x) removeWords(x,stopwords()))
corpus <- tm_map(corpus, stemDocument)
corpus <- tm_map(corpus, PlainTextDocument)
