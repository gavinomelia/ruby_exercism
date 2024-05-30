class Knapsack
  def initialize(max_weight)
    @max_weight = max_weight
  end

 def max_value(items)
    n = items.length
    memo = Array.new(n + 1) { Array.new(@max_weight + 1, nil) }
    knapsack_recursive(items, n, @max_weight, memo)
  end

  private

  def knapsack_recursive(items, n, remaining_weight, memo)
    return 0 if n == 0 || remaining_weight == 0

    return memo[n][remaining_weight] if memo[n][remaining_weight]

    if items[n - 1].weight > remaining_weight
      memo[n][remaining_weight] = knapsack_recursive(items, n - 1, remaining_weight, memo)
    else
      include_item = items[n - 1].value + knapsack_recursive(items, n - 1, remaining_weight - items[n - 1].weight, memo)
      exclude_item = knapsack_recursive(items, n - 1, remaining_weight, memo)
      memo[n][remaining_weight] = [include_item, exclude_item].max
    end
    memo[n][remaining_weight]
  end
end
