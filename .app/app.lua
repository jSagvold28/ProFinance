local function promptUser()
    io.write("Monthly income " .. "$")
    local monthlyIncome = tonumber(io.read())

    print("Total spendings")
    print("")
    io.write("Groceries: ")
    local groceries = tonumber(io.read())

    io.write("Utilities: "  .. "$")
    local utilities = tonumber(io.read())

    io.write("Rent/mortgage: " .. "$")
    local rentOrMortgage = tonumber(io.read())

    io.write("Savings: " .. "$")
    local addedToSavings = tonumber(io.read())

    io.write("Other spendings " .. "$")
    local otherSpendings = io.read()

    return monthlyIncome, groceries, utilities, rentOrMortgage, addedToSavings, otherSpendings
end

local monthlyIncome, groceries, utilities, rentOrMortgage, addedToSavings, otherSpendings = promptUser()

local leftToSpend = monthlyIncome - groceries - utilities - rentOrMortgage - addedToSavings, otherSpendings

print("Left to spend: " .. "$" .. leftToSpend)

if leftToSpend < 0 then
    print("You have went below your montly income: " .. leftToSpend)
end
