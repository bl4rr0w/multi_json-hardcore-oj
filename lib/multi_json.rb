require 'oj'

class MultiJson

  DecodeError = Class.new(::StandardError)
  LoadError = Class.new(DecodeError)

  class << self

    LOAD_OPTIONS = { :mode => :strict }
    DUMP_OPTIONS = { :mode => :compat, :time_format => :ruby }

    def load(json, options = {})
      if options[:symbolize_keys]
        ::Oj.load(json, LOAD_OPTIONS.merge(:symbol_keys => true))
      else
        ::Oj.load(json, LOAD_OPTIONS)
      end
    rescue ::Oj::ParseError => e
      raise LoadError, e.message
    end

    def dump(data, options = {})
      if options[:pretty]
        ::Oj.dump(data, DUMP_OPTIONS.merge(:indent => 2))
      else
        ::Oj.dump(data, DUMP_OPTIONS)
      end
    end

    alias_method :decode, :load
    alias_method :encode, :dump

  end

end
