module Gus
  module Shortener
    class << self
      def shorten(url)
        get_result(url)
      end
      
      private 

      def get_result(url)
        begin
          response = Net::HTTP.post_form(
            URI.parse('http://goo.gl/api/shorten'),
            {'url'=>url}
          )
          result = Crack::JSON.parse(response.body)
          result['short_url']
        # rescue
        #   raise "Goo.gl error: #{response.status_code}"
        end
      end

    end
  end
end
