# Lex/Flex Programs Collection

This repository contains a collection of Lex (Flex) programs demonstrating various lexical analysis concepts and techniques.

## Overview

Lex (or Flex - Fast Lexical Analyzer) is a tool for generating lexical analyzers. This project includes multiple examples ranging from simple token recognition to more complex pattern matching.

## Programs Description

### 1. `lex_typical.l`
A typical Lex program demonstrating basic token recognition:
- Recognizes variables (identifiers)
- Recognizes integers
- Recognizes text/string literals
- Handles comments and whitespace
- Builds a basic symbol table with variable names, values, and string literals

### 2. `lex.l`
A lexical analyzer for a simple language with:
- Keywords: `if`, `then`, `else`
- Identifiers: letters followed by letters/digits
- Numbers: sequences of digits
- Relational operators: `<`, `<=`, `=`, `<>`, `>`, `>=`
- Token returns for parser integration

### 3. `own_programminG_language.l`
A custom language lexer that recognizes:
- Keywords: `int`, `char`
- Operator: `!=` (not equal)
- Identifiers: Start with underscore, letters/digits, ending with `#` (e.g., `_varName#`)
- Integer constants
- Invalid tokens

### 4. `own_lang_in_c.cpp`
A C++ implementation of the same lexical rules as `own_programminG_language.l` for comparison between Lex and manual implementation.

### 5. `roll_no_checker.l`
Validates roll numbers in format:
- `[0-9][0-9][Pp]-[0-9][0-9][0-9][0-9]` (e.g., `22P-1234` or `22p-1234`)
- Outputs VALID or INVALID for each input

### 6. `lex_count.l`
A character, word, and line counter:
- Counts total characters
- Counts total words
- Counts total lines

### 7. `lex_Identifiers.l`
An identifier counter that:
- Recognizes and counts identifiers (letter followed by letters/digits)
- Recognizes digits
- Reports the total number of identifiers found

### 8. `lex_line_no.l`
A line number printer that:
- Numbers each line sequentially
- Displays line numbers alongside content

## Prerequisites

- **Flex/Lex**: Install Flex (Fast Lexical Analyzer)
  ```bash
  # Ubuntu/Debian
  sudo apt-get install flex

  # macOS
  brew install flex

  # Fedora/RHEL
  sudo dnf install flex
  ```

- **C/C++ Compiler**: GCC or G++ for compiling the generated C code
  ```bash
  # Ubuntu/Demacs
  sudo apt-get install gcc g++
  ```

## How to Compile and Run

### For Lex (.l) files:

1. **Generate the lexer using Flex:**
   ```bash
   flex -o lex.yy.c filename.l
   ```

2. **Compile the generated C code:**
   ```bash
   gcc -o output_name lex.yy.c -ll
   ```

3. **Run the executable:**
   ```bash
   ./output_name [input_file]
   ```
   
   Or for interactive input:
   ```bash
   ./output_name
   ```

### Example - Compiling own_programminG_language.l:

```bash
flex own_programminG_language.l
gcc -o own_programminG_language lex.yy.c -ll
echo "_testVar#" | ./own_programminG_language
```

### For C++ file (own_lang_in_c.cpp):

```bash
g++ -o own_lang_in_c own_lang_in_c.cpp
echo "_testVar#" | ./own_lang_in_c
```

## Usage Examples

### Roll Number Checker
```bash
flex roll_no_checker.l
gcc -o roll_no_checker lex.yy.c -ll
echo -e "22P-1234\n23p-5678\ninvalid" | ./roll_no_checker
```

### Word/Line Counter
```bash
flex lex_count.l
gcc -o lex_count lex.yy.c -ll
./lex_count sample_text.txt
```

### Identifier Counter
```bash
flex lex_Identifiers.l
gcc -o lex_identifiers lex.yy.c -ll
./lex_identifiers input_file.c
```

## Project Structure

```
/home/kalamay/Downloads/lexcodes/
├── lex_typical.l           # Typical Lex program example
├── lex.l                  # Basic lexical analyzer
├── own_programminG_language.l  # Custom language lexer (Lex)
├── own_lang_in_c.cpp      # Custom language lexer (C++)
├── roll_no_checker.l      # Roll number validator
├── lex_count.l            # Character/word/line counter
├── lex_Identifiers.l      # Identifier counter
├── lex_line_no.l          # Line number printer
├── lex.yy.c               # Generated lexer (from Flex)
└── a.out                  # Compiled binary
```

## License

This project is for educational purposes.

## Author
Abdul kalam aka kalamaay

