function colorify
    while read -l input
        set input (string replace '%' '%%' $input)
        printf $input
        echo ''
    end
end
