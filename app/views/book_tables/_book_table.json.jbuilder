json.extract! book_table, :id, :book_title, :Published_year, :created_at, :updated_at
json.url book_table_url(book_table, format: :json)
