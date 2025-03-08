%builtins output

func main(output_ptr: felt*) -> (output_ptr: felt*) {

    // We are allocating three different values to segment 1.
    [ap] = 10, ap++;
    [ap] = 100, ap++;
    [ap] = [ap - 2] + [ap - 1], ap++;

    // We set value of output_ptr to the address of where the output will be stored. This is part of the output builtin requirement. 
    [ap] = output_ptr, ap++;

    // asserts that output_ptr equals to 110.
    assert [output_ptr] = 110;
    return (output_ptr=output_ptr + 1); 
}
