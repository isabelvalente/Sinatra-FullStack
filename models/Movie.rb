class Movies

  attr_accessor :id, :genre, :title

  def self.open_connection

    conn = PG.connect(dbname: 'movies');

  end

  def self.all

    conn = self.open_connection

    sql = "SELECT * FROM movies ORDER BY id"

    results = conn.exec(sql)

    movies = results.map do |tuple|

      self.hydrate tuple

    end

  end

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM movies WHERE id=#{ id } LIMIT 1"

    movies = conn.exec(sql)

    movie = self.hydrate movies[0]

    movie

  end

  def save

    conn = Movie.open_connection

    if (!self.id)
      sql = "INSERT INTO movies (genre, title) VALUES ('#{ self.genre }','#{ self.title }')"
    else
      sql = "UPDATE countries SET country='#{self.genre}', city='#{self.title}' WHERE id='#{self.id}'"
    end

    conn.exec(sql)
  end

  def self.destroy id

    conn = self.open_connection

    sql = "DELETE FROM movies WHERE id=#{id}"

    conn.exec(sql)

  end

  def self.hydrate movie_data

    movie = Movie.new

    movie.id = movie_data['id']
    movie.genre = movie_data['genre']
    movie.title = movie_data['title']

    movie

  end

end
