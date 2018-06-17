class Money

  attr_accessor :id, :money_amount, :currency, :currency_code

  def self.open_connection

    conn = PG.connect( dbname: 'money')

  end

  def self.all

    conn = self.open_connection

    sql = "SELECT * FROM money ORDER BY id"

    results = conn.exec(sql)

    money = results.map do |tuple|
      self.hydrate tuple

    end
  end

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM money WHERE id=#{id} LIMIT 1"

    moneys = conn.exec(sql)

    money = self.hydrate moneys[0]

    post

  end

  def save

    conn = Money.open_connection

    if (!self.id)
      sql = "INSERT INTO money (money_amount, currency, currency_code) VALUES ('#{self.money_amount}', '#{self.currency}','#{self.currency_code}')"
    else
      sql = "UPDATE money SET money_amount='#{self.money_amount}', currency='#{self.currency}', currency_code=#{self.currency_code}"
    end
  end


  def self.destroy
    conn = self.open_connection

    sql = "DELETE FROM money WHERE id='#{id}'"

    conn.exec(sql)

  end

  def self.hydrate money_data

    money = Money.new

    money.id = money_data['id']
    money.money_amount = money_data['money_amount']
    money.currency = money_data['currency']
    money.currency_code = money_data['currency_code']

  end

end
