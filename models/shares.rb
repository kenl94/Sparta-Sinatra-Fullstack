class Shares

  attr_accessor :id, :stock_market, :market_cap, :stock_name, :stock_sybl

  def self.open_connection

    conn = PG.connect( dbname: 'shares')

  end

  def self.all

    conn = self.open_connection

    sql = "SELECT * FROM shares ORDER BY id"

    results = conn.exec(sql)

    shares = results.map do |tuple|
      self.hydrate tuple

    end
  end

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM shares WHERE id=#{id} LIMIT 1"

    shares = conn.exec(sql)

    share = self.hydrate shares[0]

    share

  end

  def save

    conn = Money.open_connection

    if (!self.id)
      sql = "INSERT INTO shares (stock_market, market_cap, stock_name, stock_sybl) VALUES ('#{self.stock_market}', '#{self.market_cap}','#{self.stock_name}','stock_market')"
    else
      sql = "UPDATE shares SET stock_market='#{self.stock_market}', market_cap='#{self.market_cap}', stock_name='#{self.stock_name}', stock_sybl='#{self.stock_sybl}'"
    end
  end


  def self.destroy
    conn = self.open_connection

    sql = "DELETE FROM shares WHERE id='#{id}'"

    conn.exec(sql)

  end

  def self.hydrate shares_data

    share = Shares.new

    share.id = shares_data['id']
    share.stock_market = shares_data['stock_market']
    share.market_cap = shares_data['market_cap']
    share.stock_name = shares_data['stock_name']
    share.stock_sybl = shares_data['stock_sybl']

  end

end
