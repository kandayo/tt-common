# frozen_string_literal: true

module TikTok
  # :nodoc:
  class Snowflake
    attr_reader :id

    def initialize(id)
      @id = id.is_a?(Integer) ? id : Integer(id)
      freeze
    end

    def timestamp
      Time.at(@id >> 32)
    end
  end
end
