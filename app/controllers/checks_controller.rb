class ChecksController < ::ApplicationController

  def index
    render plain: 'ok' if mysql_up?
  end

  private

  def mysql_up?
    Product.count
  end
end
