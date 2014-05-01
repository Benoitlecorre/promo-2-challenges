client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "5zu6VKAaDfXqX8wFqaosuCPJH"
  config.consumer_secret     = "imEnUzIAEHJZc03CCcnzgNEPXaVc2ufA2BsQnCggUiUwV0r4mc"
  config.access_token        = "216625986-hi6wd8ucehN8tb4iO5V8fetQi8dyGPSyUQpjq9lP"
  config.access_token_secret = "mViNFlvT0SUBqTx6azAaBeGn1F30RQaSZLPrloI0fUaga"
end

topics = ["egypt"]
client.filter(:track => topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end