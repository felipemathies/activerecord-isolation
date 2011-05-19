begin
  require 'active_record/connection_adapters/informix_adapter'
  
  ActiveRecord::ConnectionAdapters::InformixAdapter.class_eval do
    def dirty
      execute('SET ISOLATION TO DIRTY READ')
    end
    def clean
      execute('SET ISOLATION TO REPEATABLE READ')
    end
    def reallyclean
      execute('SET ISOLATION TO READ COMMITTED')
    end
  end
rescue LoadError
end