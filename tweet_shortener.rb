

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string_of_tweet) #shortens that string based on the allowed substitutes
  array = string_of_tweet.split #turns tweet into an array of words
  word_check = dictionary.keys #array of keys of dictionary hash
  array.each_with_index do |word, index|
    dictionary.each do |key, value|
      if word.downcase == key
        array[index] = value
      end
    end
  end
  array.join(" ") #turns tweet back into string
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string_of_tweet)
  if string_of_tweet.length > 140
    word_substituter(string_of_tweet)
  else string_of_tweet
  end
end

def shortened_tweet_truncator(string_of_tweet)
  shortened_tweet = word_substituter(string_of_tweet)
  ellipsis = ""
  if shortened_tweet.length > 140
    ellipsis = shortened_tweet[0..136]
    ellipsis << "..."
    ellipsis
  else shortened_tweet
  end
end
