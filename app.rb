require "sqlite3"

db=SQLite3::Database.new "TestBase.sqlite"

db.execute( "SELECT * FROM Cars ORDER BY Price") { |a|
	puts a
	puts "==========="
}

db.close