require 'gus'
require 'rspec'

describe Gus::Shortener do
  let :shortener do 
    Gus::Shortener
  end
  let :long_url do
    "http://www.example.com"
  end

  it 'should create a shortened url' do
    shortener.shorten(long_url).should_not be_nil
  end
  it 'should shorten the url' do
    short_url = shortener.shorten(long_url)
    (short_url.length < long_url.length).should be_true
  end
end