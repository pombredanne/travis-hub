require 'travis/support/logging'
require 'travis/hub/instrument'

module Travis
  module Hub
    module Handler
      module Common
        def self.included(base)
          base.send :include, Logging
          base.send :extend,  Instrumentation, NewRelic
        end

        attr_accessor :event, :payload

        def initialize(event, payload)
          @event = event
          @payload = payload
        end
      end
    end
  end
end