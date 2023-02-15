print("Email: ")
local email = io.read()

print("Age")
local userAge = tonumber(io.read())

if userAge and userAge <= 17 then
    print("You are not able to use a ProFinance account. You must be 18 or older.")
end

print("Password:")
local password = io.read()

print("Would you like to have 2FA on?")
print("You can add this later on as well.")
print("Type 'yes' to turn 2FA on.")
local TwoFactorOn = nil

local input = io.read()

local function enable2FA()
    file = io.open("2FA.txt", "w")

    io.write("Your chosen 2FA code: ")
    twoFactorCode = io.read()

    file:write(twoFactorCode)
    file:close()
end

if input == "yes" then
    enable2FA()
end

local function createUserAccountAndFile()

    local userDataFile = io.open("AccountData.txt", "w")

    file:write("Email: " .. email .. "\n")
    file:write("Age: " .. userAge .. "\n")
    file:write("Pasword: " .. password .. "\n")

end
createUserAccountAndFile()
