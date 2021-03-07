module ApplicationHelper
  def cart_count_over_one
    "<span class='tag is-dark'>#{@cart.line_items.count}</span>".html_safe if @cart.line_items.count.positive?
  end

  def cart_has_items
    @cart.line_items.count
  end
end
