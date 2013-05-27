require 'yahoofinance'
require_relative 'account'
require 'pry'

class Portfolio
  attr_accessor :name, :stocks, :owner

  def initialize(name, owner, stocks = {})
    @name = name
    @owner = owner
    @stocks = stocks
  end

  def self.get_current_stock_price(stock_name)
    # Class method because behavior does not change between instances
    raise(RuntimeError, "Stock does not exist.") if YahooFinance::get_quotes(YahooFinance::StandardQuote, stock_name)[stock_name].nil?
    YahooFinance::get_quotes(YahooFinance::StandardQuote, stock_name)[stock_name].lastTrade
  end

  def buy_stock(stock_name, num_stocks)
    total_cost = Portfolio.get_current_stock_price(stock_name) * num_stocks
    raise(RuntimeError, "Insufficient account funds.") if @owner.balance < total_cost
    @stocks[stock_name] ||= 0 # Initialize stock if not already in existence
    @stocks[stock_name] += num_stocks
    @owner.balance -= total_cost
  end

  def list_stocks_held
    stocks.keys.each {|stock| puts stock}
  end

  def sell_stock(stock_name, num_stocks) 
    raise(RuntimeError, "Stock not in portfolio") if @stocks[stock_name].nil?
    raise(RuntimeError, "Insufficient shares for this sale") if @stocks[stock_name] - num_stocks < 0
    @stocks[stock_name] -= num_stocks
    @owner.balance += (Portfolio.get_current_stock_price(stock_name) * num_stocks)
  end

  def get_total_value
      value = 0
      @stocks.each_key { |key| value += (Portfolio.get_current_stock_price(key.dup) * @stocks[key]) }
      value
  end

  def portfolio_value
    results = []
    @stocks.each do |stock_symbol, num_shares|
      ticker =  stock_symbol.dup
      results.push "Your #{num_shares} shares of #{ticker} are worth $ #{Portfolio.get_current_stock_price(ticker)} \n"
    end
    results
  end
end

=begin
firm1=Firm.new
account1=Account.new("Mike's account", 50000)
portfolio1=Portfolio.new('Retierment Planning', account1)
firm1.add_account(account1)
portfolio1.buy_stock('FB', 4)
portfolio1.buy_stock('AAPL', 4)
portfolio1.buy_stock('GRPN', 4)
portfolio1.list_stocks_held
portfolio1.portfolio_value
portfolio1.sell_stock("FB", 1)
portfolio1.portfolio_value
=end
