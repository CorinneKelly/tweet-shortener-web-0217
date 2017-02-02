# Write your code here.
def word_substituter(string)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

  string_array = string.split
  words_to_sub = dictionary.keys
  new_tweet = []
  string_array.each do |word|
    if dictionary.has_key?(word.downcase)
      new_tweet << dictionary[word.downcase]
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(array)
  array.map do |tweets|
    puts word_substituter(tweets)
  end
end

def selective_tweet_shortener(tweet)

  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end

end

def shortened_tweet_truncator(tweet)

  if tweet.length > 140
    short_tweet = word_substituter(tweet)
    short_tweet[0...140]
  else
    tweet
  end
end
