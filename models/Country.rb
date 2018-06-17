class Country

  attr_accessor :id, :country, :city, :time_zone

  def self.open_connection

    conn = PG.connect(dbname: 'countries');

  end

  def self.all

    conn = self.open_connection

    sql = "SELECT * FROM countries ORDER BY id"

    results = conn.exec(sql)

    countries = results.map do |tuple|

      self.hydrate tuple

    end

  end

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM countries WHERE id=#{ id } LIMIT 1"

    countries = conn.exec(sql)

    country = self.hydrate countries[0]
    country

  end

  def save

    conn = Country.open_connection

    if (!self.id)
      sql = "INSERT INTO countries (country, city) VALUES ('#{ self.country }','#{ self.city }')"
    else
      sql = "UPDATE countries SET country='#{self.country}', city='#{self.city}' time_zone='#{self.time_zone}' WHERE id='#{self.id}'"
    end

    conn.exec(sql)
  end

  def self.destroy id

    conn = self.open_connection

    sql = "DELETE FROM countries WHERE id=#{id}"

    conn.exec(sql)

  end

  def self.hydrate country_data

    country = Country.new

    country.id = country_data['id']
    country.country = country_data['country']
    country.city = country_data['city']
    country.time_zone = country_data['time_zone']

    country

  end

end
