function alphabeta(node, depth, a, b, maximizingPlayer) is
    
    if maximizingPlayer then
        value := ?��
        for each child of node do
            value := max(value, alphabeta(child, depth ? 1, ��, ��, FALSE))
            a:= max(a, value)
            if a>=b  then
                break (* b cut-off *)
        return value
    else
        value := +��
        for each child of node do
            value := min(value, alphabeta(child, depth ? 1, ��, ��, TRUE))
            a:= min(b, value)
            if a>=b then
                break (* a cut-off *)
        return value
        huhuhu