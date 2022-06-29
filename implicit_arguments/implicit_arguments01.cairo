%lang starknet

func implicit_sum{a,b}() -> (result : felt):
   return (a+b)
end

# Do not change the test
@external
func test_sum{syscall_ptr : felt*}():
    let a = 3
    let b = 5
    let (sum) = implicit_sum{a=a,b=b}()
    assert sum = 8

    return ()
end
