module ApplicationHelper
  def order_total(order)
    order.line_items.map {|entry| entry.product.price_cents * entry.quantity}.sum
  end
end
