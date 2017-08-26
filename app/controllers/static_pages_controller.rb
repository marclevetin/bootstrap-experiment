class StaticPagesController < ApplicationController
  def index
    @opening = get_bacon(5)
    @second = get_bacon(4)
    @caption_a = get_bacon(1)
    @caption_b = get_bacon(3)
    @caption_c = get_bacon(2)
  end

  private
  def get_bacon(num_sentences)
    client = HTTPClient.new
    response = client.get("https://baconipsum.com/api/?type=all-meat&sentences=#{num_sentences}&start-with-lorem=1")
    response.body[2..-3] #this cleans up the response to remove brackets and slashes.
  end

end
