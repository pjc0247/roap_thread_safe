require 'thread'

module Roap
  module ThreadSafeExtension
    extend Roap::AttributeBase

    def _mutex
      @_mutex ||= Mutex.new
      return @_mutex
    end

    #runtime
    on /thread-safe()/ do |_super, md, *args|
      _mutex.synchronize {
       _super.call *args
      }
    end
  end
end
