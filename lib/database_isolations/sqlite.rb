begin  
  require 'active_record/connection_adapters/sqlite_adapter'

  ActiveRecord::ConnectionAdapters::SQLiteAdapter.class_eval do
    def dirty
    end
    def clean
    end
    def reallyclean
    end
  end
rescue LoadError
end