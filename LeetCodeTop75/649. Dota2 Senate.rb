# @param {String} senate
# @return {String}
def predict_party_victory(senate)
    arr = senate.split("")
    until !arr.include?("R") || !arr.include?("D")
        i = arr.shift
        if i == "R"
            dire = arr.index("D")
            arr.delete_at(dire)
        else
            radiant = arr.index("R")
            arr.delete_at(radiant)
        end
        arr << i
    end
    arr[0] == "D" ? "Dire" : "Radiant"
end