require 'ruboty'
require 'ruboty/pick/version'

module Ruboty
  module Handlers
    class Pick < Base
      on(
        /pick\s+(.*)/,
        name: 'pick',
        description: 'pick'
      )

      def pick(message)
        options = message.match_data[1].split(/[\s,]+/)
        message.reply(options.sample)
      end
    end
  end
end
