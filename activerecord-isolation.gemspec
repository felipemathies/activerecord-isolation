Gem::Specification.new do |s|
  s.name = %q{activerecord-isolation}
  s.version = "0.1"
  
  s.summary = 'Support Active Record Isolation Level'
  s.description = 'Active Record Support Isolation Level'
  
  s.require_path = 'lib'
  
  s.files = %w(lib/activerecord-isolation.rb lib/database_isolations/informix.rb lib/database_isolations/sqlite.rb)

  s.author = 'Felipe Mathies'
  s.email = 'felipe.mathies@gmail.com'
end