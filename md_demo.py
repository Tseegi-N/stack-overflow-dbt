import duckdb

con = duckdb.connect('md:')

# connect to your MotherDuck database through 'md:mydatabase' or 'motherduck:mydatabase'
# if the database doesn't exist, MotherDuck creates it when you connect
con = duckdb.connect('md:my_db')

# run a query to check verify that you are connected
con.sql("SHOW DATABASES").show()

con.sql("SELECT * FROM stack_overflow_updated.raw.comments LIMIT 10").show()