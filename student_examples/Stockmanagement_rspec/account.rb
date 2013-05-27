class Account
  attr_accessor :name, :balance, :portfolios

  def initialize(name, balance = 0, portfolios = {})
    @name = name
    @balance = balance
    @portfolios = {}
  end

  def add_portfolio(portfolio)
    @portfolios[portfolio.name] = portfolio
  end

  def list_portfolios
    # Prints each portfolio and name line by line, returns a list of printed output
    display_list = []
    @portfolios.each_value do |portfolio|
        display_string = "#{portfolio.name} - #{portfolio.get_total_value}"
        puts display_string
        display_list << display_string
    end
    puts "Account balance: #{@balance}\n"
    display_list
  end
end


class Firm
  attr_accessor :accounts

  def initialize(acconts = [])
    @accounts = acconts
  end

  def list_accounts
    @accounts.each { |a| p a.name}
  end

  def add_account(account)
    @accounts.push account
  end
end
