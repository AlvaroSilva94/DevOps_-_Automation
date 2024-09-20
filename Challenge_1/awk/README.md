# Awk command in Linux

Awk is mostly used for pattern scanning and processing. It searches one or more files to see if they contain lines that matches with the specified patterns and then perform the associated actions. 

## Syntax
 
```
awk options 'selection _criteria {action }' input-file > output-file 
```

## Common use cases

### 1. Default behavior of Awk: By default Awk prints every line of data from the specified file.

```
awk '{print}' employee.txt
```

### 2. Print the lines which match the given pattern.

```
 awk '/DEBUG/ {print}' sample.txt 
```

## Built-in variables
Built-In Variables In Awk

Awk’s built-in variables include the field variables—$1, $2, $3, and so on ($0 is the entire line) — that break a line of text into individual words or pieces called fields. 

* NR: NR command keeps a current count of the number of input records.  

* NF: NF command keeps a count of the number of fields within the current input record. 

* FS: FS command contains the field separator character which is used to divide fields on the input line. The default is “white space”, meaning space and tab characters. FS can be reassigned to another character (typically in BEGIN) to change the field separator. 

* RS: RS command stores the current record separator character. Since, by default, an input line is the input record, the default record separator character is a newline. 

* OFS: OFS command stores the output field separator, which separates the fields when Awk prints them. The default is a blank space. Whenever print has several parameters separated with commas, it will print the value of OFS in between each parameter. 

* ORS: ORS command stores the output record separator, which separates the output lines when Awk prints them. The default is a newline character. print automatically outputs the contents of ORS at the end of whatever it is given to print. 

## Use cases for the buit-in vars

### 1. Display Line Number  
```
awk '{print NR,$0}' sample.log 
```

### 2. To print the first item along with the row number(NR) separated with ” – “ from each line in geeksforgeeks.txt: 

```
awk '{print NR "- " $1 }' sample.log
```

### 3. To return the second column/item
```
awk '{print $2}' sample.log 
```

### 4. To find/check for any string in any specific column: 

```
awk '{ if($2 == "ERROR") print $0;}' sample.log
```