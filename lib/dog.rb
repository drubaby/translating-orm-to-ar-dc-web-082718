class Dog < ActiveRecord::Base

  connection = ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/students.sqlite3"
  )
  sql = <<-SQL
  CREATE TABLE IF NOT EXISTS dogs(
    id INTEGER PRIMARY KEY,
    name TEXT
  )
  SQL

  ActiveRecord::Base.connection.execute(sql)



end
