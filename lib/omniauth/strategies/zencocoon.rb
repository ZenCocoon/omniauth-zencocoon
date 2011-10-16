require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class ZenCocoon < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://testauthprovider.heroku.com',
        :authorize_url => 'https://testauthprovider.heroku.com/oauth2/authorize',
        :token_url => 'https://testauthprovider.heroku.com/oauth2/token'
      }

      uid { raw_info['id'] }

      info do
        {
          'nickname' => raw_info['login'],
          'email' => raw_info['email'],
          'name' => raw_info['name']
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/me').body)
      end
    end
  end
end