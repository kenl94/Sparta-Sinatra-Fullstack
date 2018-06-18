class Money

  attr_accessor :id, :money_amount, :currency, :currency_code

  def self.open_connection

    conn = PG.connect( dbname: 'money_database' )

  end

  def self.all

    conn = self.open_connection

    sql = "SELECT * FROM money_data ORDER BY id"

    results = conn.exec(sql)

    money = results.map do |tuple|
      self.hydrate tuple
    end

  end

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM money_data WHERE id=#{ id } LIMIT 1"

    moneys = conn.exec(sql)

    money = self.hydrate moneys[0]

    money

  end

  def save

    conn = Money.open_connection

    if (!self.id)
      sql = "INSERT INTO money_data (money_amount, currency, currency_code) VALUES ('#{self.money_amount}', '#{self.currency}','#{self.currency_code}')"
    else
      sql = "UPDATE money_data SET money_amount='#{self.money_amount}', currency='#{self.currency}', currency_code='#{self.currency_code}'"
    end

    conn.exec(sql)

  end


  def self.destroy id
    conn = self.open_connection

    sql = "DELETE FROM money_data WHERE id='#{id}'"

    conn.exec(sql)

  end

  def self.hydrate money_datas

    money = Money.new

    money.id = money_datas['id']
    money.money_amount = money_datas['money_amount']
    money.currency = money_datas['currency']
    money.currency_code = money_datas['currency_code']

    money
  end

end
