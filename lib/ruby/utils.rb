# frozen_string_literal: true

require 'ruby/utils/version'

module Ruby
  module Utils
    def dig(hash, keys, default = nil)
      result = hash[keys[0]] if keys[0]
      keys[1..-1].any? ? dig(result, keys[1..-1], default) : result || default
    rescue StandardError
      default
    end

    def compact(hash)
      hash.reject { |_k, v| v.nil? }
    end

    def slice(hash, keys)
      hash.select { |k, _v| keys.include?(k) }
    end
  end
end
