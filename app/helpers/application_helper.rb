module ApplicationHelper
  def cart_count_over_one
    "<span class='tag is-dark'>#{@cart.line_items.count}</span>".html_safe if @cart.line_items.count.positive?
  end

  def total_cart_items
    total = @cart.line_items.map(&:quantity).sum
    return total if total > 0
  end
end
