module SavingsAccount
  def self.interest_rate(balance)
      return 3.213 if balance < 0
      return 0.5 if balance < 1000
      return 2.475 if balance >= 5000
      return 1.621
  end

  def self.annual_balance_update(balance)
    balance + (balance * (interest_rate(balance) / 100))
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0

    until current_balance >= desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    years
  end
end
