require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class ZenCocoon < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://testauthprovider.heroku.com',
        :authorize_url => 'https://testauthprovider.heroku.com/oauth2/authorize',
        :token_url => 'https://testauthprovider.heroku.com/oauth2/token'
      }

      def request_phase
        super
      end

      uid { raw_info['id'] }

      info do
        {
          'nickname' => raw_info['login'],
          'email' => raw_info['email'],
          'name' => raw_info['name']
        }
      end

      def raw_info
        access_token.options[:mode] = :query
        @raw_info ||= access_token.get('/me').parsed
      end
    end
  end
end