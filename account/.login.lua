print("Email:")
local email = io.read()
 
print("Password:")
local password = io.read()

local userAccountFile = "AccountData.txt"

if io.open(userAccountFile, "r") then
    
    local file = io.open(userAccountFile, "r")
    local data = file:read("*all")

    file:close()

    local emailLine = string.match(data, "Email:([^\r\n]+)")
    local passwordLine = string.match(data, "Password:([^\r\n]+)")

    if emailLine == email and passwordLine == password then

        print("Login secessful!")
else
    print("Incorrect email or password.")
end
else
    print("No account under the found for this email: " .. email)
end
