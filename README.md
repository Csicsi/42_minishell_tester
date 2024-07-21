<h1 align=center>📖 42_minishell_tester</h1>
<h2 align="center">Forked from <a href="https://github.com/zstenger93">zstenger93</a>'s <a href="https://github.com/zstenger93/42_minishell_tester">original tester</a> by <a href="https://github.com/LeaYeh">LeaYeh</a> and <a href="https://github.com/itislu">itislu</a> from 42 Vienna</h2>
<img align=center src="https://github.com/LeaYeh/42_minishell_tester/blob/master/tester.png">

# Updates

- More rigorous memory leak checks.
- Memory leak checks in child processes without false positives from external commands.
- File descriptor leak checks.
- Smart stderror comparison with bash.
- Output failed test case and valgrind results to files.
- Updated test cases for updated subject (v7.1).
- Subshell test cases.
- Compatibility and tester speed-up with GitHub Actions.

---

# Menu

[Setup](#setup)

[Install & Run](#how-to-install-and-run)

[Usage](#how-to-launch-the-tester)

[CI with GitHub Actions](#continuous-integration-with-github-actions)

[Disclaimer](#disclaimer)

[Contributors](#the-people-who-made-this-tester-possible)

---

# Setup
First you should comment out everything what prints to terminal eg "exit" at exit, printf's for debugging etc
Then modify your main loop:
You should only read with readline and use your own prompt when you launch the program by yourself typing ./minihsell into the terminal, you can check it this way:


```c
	if (isatty(fileno(stdin)))
		shell->prompt = readline(shell->terminal_prompt);
```

Else if it is opened by another program/tester for example then use gnl as follows

```c
	char *line;
	line = get_next_line(fileno(stdin));
	shell->prompt = ft_strtrim(line, "\n");
	free(line);
```

So it should look like something like this:

```c
	if (isatty(fileno(stdin)))
		shell->prompt = readline(shell->terminal_prompt);
	else
	{
		char *line;
		line = get_next_line(fileno(stdin));
		shell->prompt = ft_strtrim(line, "\n");
		free(line);
	}
```

I think from this you pretty much can figure it out, it isn't a big change :)

---

# How To Install and Run

To install the script, copy and run the following command:

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/LeaYeh/42_minishell_tester/master/install.sh)"
```

The tester will be installed in the `$HOME/42_minishell_tester` directory.

After installation an alias `mstest` will be automaticly added in `.zshrc` or `.bashrc`

So that you can run the program in any directory (where your minishell is) by calling

```
mstest
```

---

# How To Launch the Tester

```
mstest m  # Run mandatory tests
```
```
mstest vm  # Run mandatory tests with memory leak checks
```
```
mstest b  # Run bonus tests
```
```
mstest vb  # Run bonus tests with memory leak checks
```
```
mstest ne  # Run tests without environment
```
```
mstest vne  # Run tests without environment with memory leak checks
```
```
mstest d  # Run death tests
```
```
mstest vd  # Run death tests with memory leak checks
```
```
mstest a  # Run all tests
```
```
mstest va  # Run all tests with memory leak checks
```
```
mstest -l  # Enable memory leak checks for any of the above tests
```
```
mstest -n  # Disable environment for any of the above tests
```
```
mstest -f <file>  # Run tests specified in a file
```
```
mstest --dir <directory>  # Run tests specified in a directory
```
```
mstest -h  # Display the usage instructions
```

---

# Continuous Integration with GitHub Actions

[How to Re-use Our CI/CD Framework For Your Own Minishell](https://github.com/LeaYeh/minishell?tab=readme-ov-file#how-to-re-use-our-cicd-framework-for-your-own-minishell)

---

# Disclaimer

DO NOT FAIL SOMEONE BECAUSE THEY AREN'T PASSING ALL TESTS!

NEITHER LET THEM PASS JUST BECAUSE THEY DO, CHECK THE CODE WELL!

DO YOUR OWN TESTING. TRY TO BREAK IT! ^^

HAVE FUN WITH YOUR BEAUTIFUL MINISHELL

Tests without environment are a bit tricky to do well because if you run `env -i bash` it disables only partially.
It will still have most things, but if you do `unset PATH` afterwards, will see the difference.
Also this part is pretty much what you aren't required to handle.
The main point is to not to crash/segfault when you launch without environment.

Try to write your own test first and don't just run a tester mindlessly
You don't have to pass all the cases in this tester
If you want to check leaks outside of your manual checking:

[This is also a good one to check valgrind](https://github.com/thallard/minishell_tester)
A bit more time to set it up, but worth it
The first time if you run the tester above and expect a lot of errors
Then redirect each of the output from stdin and strerror to a file otherwise you won't be able see all of the errors

Even though the required changes have been made to your proram, it might still going to throw you only KO STD_OUT.
This is because readline version. (then you probably have the older version where it isn't checking where does the input coming from(the tester or you))

If a test just hanging in infinite loop, you can use the link to go there and comment it out in the test file until you fix it.

---

# The People Who Made This Tester Possible

Base made by: [Tim](https://github.com/tjensen42) & [Hepple](https://github.com/hepple42)

Upgraded by: [Zsolt](https://github.com/zstenger93)

Parsing hell and mini_death by: [Kārlis](https://github.com/kvebers)

Extra bonus tests by: [Mouad](https://github.com/moabid42)

and

```
Our passion for minishell
```
