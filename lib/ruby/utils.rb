# frozen_string_literal: true

require 'ruby/utils/version'

module Ruby
  module Utils
    def dig(hash, keys, default = nil)
      remaining?(keys) ? dig_remaining_keys(hash, keys, default) : dig_result(hash, keys.first)
    rescue StandardError
      default
    end

    def compact(hash)
      hash.select { |_k, v| v }
    end

    def slice(hash, keys)
      hash.select { |k, _v| keys.include?(k) }
    end

    private

    def dig_remaining_keys(hash, keys, default)
      dig(dig_result(hash, keys.first), remaining(keys), default)
    end

    def remaining(keys)
      keys[1..-1]
    end

    def remaining?(keys)
      remaining(keys).any?
    end

    def dig_result(hash, key)
      hash[key] || default if key
    end
  end
end
