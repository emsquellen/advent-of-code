# Doesn't work :((((((((((((((((((((((((((((((((((((((((((((((((((((((((
open("input") do f
    digits = Dict([("ze", "0"), ("on", "1"), ("tw", "2"), ("th", "3"), ("fo", "4"), ("fi", "5"), ("si", "6"), ("se", "7"), ("ei", "8"), ("ni", "9")])
    answer = 0
    for ln in eachline(f)
        println("ln: ", ln)
        ln = replace(ln, collect(pairs(digits))...)
        i_val = Nothing
        j_val = Nothing
        for (i, j) in zip(ln, reverse(ln))
            if isdigit(i) && i_val == Nothing
                i_val = i
            end
            if isdigit(j) && j_val == Nothing
                j_val = j
            end
            if i_val != Nothing && j_val != Nothing
                println("val: ", i_val, " ", j_val)
                answer += parse(Int, i_val * j_val)
                break
            end
        end
    end
    println("Answer: ", answer)
end