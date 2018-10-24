function alphabeta(node, depth, a, b, maximizingPlayer) is
    
    if maximizingPlayer then
        value := ?¡Ş
        for each child of node do
            value := max(value, alphabeta(child, depth ? 1, ¦Á, ¦Â, FALSE))
            a:= max(a, value)
            if a>=b  then
                break (* b cut-off *)
        return value
    else
        value := +¡Ş
        for each child of node do
            value := min(value, alphabeta(child, depth ? 1, ¦Á, ¦Â, TRUE))
            a:= min(b, value)
            if a>=b then
                break (* a cut-off *)
        return value
        huhuhu