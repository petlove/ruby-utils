# frozen_string_literal: true

require 'ruby/utils/version'

module Ruby
  module Utils
    def dig(hash, keys, default = nil)
      result = hash[keys.shift]
      keys.any? ? dig(result, keys, default) : result
    rescue StandardError
      default
    end

    def hash_compact(hash)
      hash.reject { |_k, v| v.nil? }
    end
  end
end
