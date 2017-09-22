module ActiveRecord
  module ConnectionAdapters
    class RedshiftColumn < Column #:nodoc:
      def initialize(name, default, cast_type, sql_type = nil, null = true, default_function = nil, is_identity = false, is_sortkey = false)
        super name, default, cast_type, sql_type, null
        @default_function = default_function
        @is_identity = is_identity
        @is_sortkey = is_sortkey
      end

      def identity?
        !!@is_identity
      end

      def sortkey?
        !!@is_sortkey
      end
    end
  end
end
