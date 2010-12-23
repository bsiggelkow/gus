module Gus
  module Shortener
    class << self
      def shorten(url)
        get_result(url)
      end
      
      private 

      def get_result(url)
        response = Net::HTTP.post_form(
          URI.parse('http://goo.gl/api/shorten'),
          {'url'=>url}
        )
        result = Crack::JSON.parse(response.body)
        if response.code == "201"
          result['short_url']
        else
          raise result['error_message']
        end
      end

    end
  end
end
