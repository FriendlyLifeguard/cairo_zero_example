# Cairo Zero example that uses output builtin. 

[Cairo Zero](https://docs.cairo-lang.org/cairozero/index.html) is a low level language for Cairo, a smart contract language for Starknet Blockchain. 

To compile and run Cairo Zero programs, you would need to setup a python environment.

I had success using [Conda](https://github.com/conda/conda). 

Then, follow instructions from [Cairo Zero documentation](https://docs.cairo-lang.org/cairozero/quickstart.html). I tried to use Python 3.11 but it didn't work. Use Python 3.9!  

After, clone the repo and run the following command to compile the contract.

```bash
cairo-compile test_with_builtin.cairo --output test_compiled_builtin.json 
```

And with the output json file, run the following command to visualize the memory layout.

```bash
cairo-run \                                                                  
  --program=test_compiled_builtin.json --print_output \
  --print_info --print_segments --print_memory --layout=small
```

