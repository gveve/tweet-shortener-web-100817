def dictionary
dictionary = {
"hello" => "hi",
"to" => "2",
"too" => "2",
"two" => "2",
"four" => "4",
"for" => "4",
"be" =>"b",
"you" => "u",
"at" => "@",
"and" => "&"
}
end

def word_substituter(tweet)
a_tweet = tweet.split
    dictionary.each do |key, short_word|
        a_tweet.each do |word| if word.downcase == key
          word.replace(short_word)
end
end
end
return a_tweet.join(" ")
end

def bulk_tweet_shortener(array_tweet)
  array_tweet.each do |tweets|
    puts word_substituter(tweets)
end
end

def selective_tweet_shortener(tweet_string)
  if tweet_string.length >= 140
    word_substituter(tweet_string)
  else
    tweet_string
  end
end

def shortened_tweet_truncator(tweet_string)
  trunk_tweet = selective_tweet_shortener(tweet_string)
  if trunk_tweet.length > 140
    return trunk_tweet[0..136]+"..."
  else
    return trunk_tweet
  end
end
