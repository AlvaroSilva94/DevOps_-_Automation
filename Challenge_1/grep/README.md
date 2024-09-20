# Grep command in Linux

The grep command in Unix/Linux is a powerful tool used for searching and manipulating text patterns within files

## Syntax
 
```
grep [options] pattern [files]
```

## Common use cases

### 1. Case insensitive search

```
grep -i "DEBUG" sample.log
```

### 2. Displaying the Count of Number of Matches Using grep

```
grep -c "DEBUG" sample.log
```

### 3. Display the File Names that Matches the Pattern Using grep

```
grep -l "DEBUG" *
```

### 4. Checking for the Whole Words in a File Using grep

```
grep -w "DEBUG" sample.log
```

### 5. Show Line Number While Displaying the Output Using grep -n

```
grep -n "DEBUG" sample.log
```

### 6. Inverting the Pattern Match Using grep (Display the lines that do not match the pattern)

```
grep -v "DEBUG" sample.log
```

### 7. Matching the Lines that Start with a String Using grep

```
grep "^DEBUG" sample.log
```

### 8. Matching the Lines that End with a String Using grep

```
grep "DEBUG$" sample.log
```

### 9. Search Recursively for a Pattern in the Directory

```
grep -R [Search] [directory]
```

### 10. Search, case insensitive, recursively for a pattern in any file in the Directory and display line number

```
grep -rni [Search] [directory]
```

