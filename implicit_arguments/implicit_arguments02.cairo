%lang starknet


func parent_function{a, b}() -> (result : felt):
  
    alloc_locals
    let (local intermediate_result_1) = child_function_1()
    let (local intermediate_result_2) = child_function_2()
    return (intermediate_result_1 + intermediate_result_2)
end

func child_function_1{a}() -> (result : felt):
  
    return (2 * a)
end

func child_function_2{b}() -> (result : felt):
  

    return (b + 3)
end

@external
func test_sum{syscall_ptr : felt*}():
    let a = 3
    let b = 5
    with a, b:
        let (result) = parent_function()
        assert result = 14
    end

    return ()
end
