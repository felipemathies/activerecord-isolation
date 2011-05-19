# ActiveRecordIsolation

require "database_isolations/informix"
require "database_isolations/sqlite"

module ActiveRecord
  class Base
    class << self
      def isolation_dirty
        connection.dirty
      end

      def isolation_clean
        connection.clean
      end

      def isolation_reallyclean
        connection.reallyclean
      end
    end
  end
  
  module DatabaseStatements
    def dirty
      raise NotImplementedError, "dirty is an abstract method"
    end
    def clean
      raise NotImplementedError, "clean is an abstract method"
    end
    def reallyclean
      raise NotImplementedError, "reallyclean is an abstract method"
    end
  end
end
