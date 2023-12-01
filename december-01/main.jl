open("input") do f
    answer = 0
    for ln in eachline(f)
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
                answer += parse(Int, i_val*j_val)
                break
            end
        end
    end
    println("Answer: ", answer)
end
