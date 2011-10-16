require 'omniauth-zencocoon/version'
require 'omniauth'

module OmniAuth
  module Strategies
    autoload :ZenCocoon, 'omniauth/strategies/zencocoon'
  end
end

OmniAuth.config.add_camelization 'zencocoon', 'ZenCocoon'