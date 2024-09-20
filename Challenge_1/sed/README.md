# Sed Command in Linux

SED command in UNIX stands for stream editor and it can perform lots of functions on file like searching, find and replace, insertion or deletion. Though most common use of SED command in UNIX is for substitution or for find and replace.

## Syntax
 
```
sed OPTIONS... [SCRIPT] [INPUTFILE...] 
```

## Common use cases

### 1. Replacing or substituting string

```
sed 's/DEBUG/TEST/' sample.log 
```
### 2. Replacing the nth (for exaple, the 2nd) occurrence of a pattern in a line

```
sed 's/DEBUG/TEST/2' sample.log 
```

### 3. Can be used in conjuction with regex, for example to Parenthesize first character of each word

```
echo "This is an error log" | sed 's/\(\b[A-Z]\)/\(\1\)/g'
```

### 4. Replacing string on a specific line number

```
sed '4 s/DEBUG/TEST/' sample.log 
```

### 5. Replacing string on a range of lines

```
sed '1,4 s/DEBUG/TEST/' sample.log 
```

### 6. Deleting lines from a particular file (For example, deleting the 1st line)

```
sed '1d' sample.log 
```

### 7. To Delete a last line

```
sed '$d' sample.log 
```

### 8. To Delete from nth to last line. You can delete the entire file with this

```
sed 'nth, $d' sample.log 
```
### 9. To Delete pattern matching line

```
sed '/DEBUG/d' sample.log 
```


