---
layout: default
title: CMSC 143
render_with_liquid: "false"
---
{% raw %}
I took these notes in Autumn, 2023. From what students have shared with me, they have been relevant as recent as Spring, 2025.

<aside> 💡 A function to commute factorial

</aside>

```c
unsigned long long int factorial(#type unsigned int n) {
	if (n == 0) {
		return 1;
	} else {
		return n * factorial(n - 1);
	}
}

//unsigned int -> positive integers (unsigned meaning it doesn't have a negative sign)
//long long increases data storage
```

**C cares about types as to determine how much storage to allocate to a variable**

Indenting doesn’t matter (just for style) — curly braces do

semicolon denotes when line is done (lines of code that do something get semicolons, glue doesn’t)

```c
unsigned long long int factorial(#type unsigned int n) {
	if (n == 0) {
		return 1;
	}
	return n * factorial(n - 1);
}
```

- Print factorial
- Strings require double quotes

```c
void print_factorial(unsigned int n) {
	printf("The factorial of %u is %llu\\n", n, factorial(n));
//printf -> format allows for parameter entry (e.g., n -> %u); printf for everything
//placeholders in string filled by parameters given later by using % sign
//placeholders require typing, u -> unsigned, llu -> unsigned long long
// \\n creates newline
}
```

- These imports should likely be imported every single time you write a C program

```c
//import 
#include <stdlib.h> //standard library.h -> file
#include <stdio.h> //standard input/output.h -> file
```

**You need a main function**

```c
unsigned long long int factorial(#type unsigned int n) {
	if (n == 0) {
		return 1;
	}
	return n * factorial(n - 1);
}

void print_factorial(unsigned int n) {
	printf("The factorial of %u is %llu\\n", n, factorial(n));
}

int main(int argc, char** argv) {
	print_factorial(5);
	return 0;
}
//char** -> list of strings captured from command line, argc is the count of
//how many strings are in the last of strings
//returned number can be useful to indicate if a program ran successfully or failed
```

Say, we have this all in a file factorial.c

Go to terminal

```c
$ clang -o factorial factorial.c
//clang -> c language (compiler)
//-o factorial-> output is a file called factorial
//generate program that needs to be run a single time (it's compiled)
$ ./factorial
//. -> current directory / -> path to a file; run the file factorial
//run the compiled file
```

C can be understood by all computers — it’s a distilled version but is different for different computers; you compile C first and then can send it out

You only have to rerun the compiler if the file is changed

Error codes

fileName:lineNumber:columnNumber:error:typeOfError

- may say warning and it can still go but it will say that’s there something wrong
- if there’s an error while compiling, old version is still intact and not overrode

### Integer Data Types

- Different ones available as to use as little memory as possible

|Name of type|Range (inclusive)|Print|Notes|
|---|---|---|---|
|char|-128 → 127|%d (if number); %c (if you want to print corresponding character)|could represent a character I write on keyboard so that’s why it called char; even number of possible numbers|
|unsigned char|0 → 255|%u|not used for characters|
|short (int)|-32768 → 32,767|%hd (half decimal)||
|unsigned short(int)|0 → 65,535|%hu||
|int|~-2.147B → ~2.147B|%d||
|unsigned (int)|0 → ~4.3B|%u||
|long long (int)|~-9Q → ~9Q|%lld||
|unsigned long long (int)|0 → ~18Q|%llu||

### Float Data Types

float → %f to print float

double (double precision) → more accurate than float, uses twice as much memory (typically used) → %lf → to print double

### Operators in C

+, -, *, %

**Division**

/ → real number result if at least one number is a real number; integer result if both numbers are integers

- 5.0/2.0 → 2.5
- 5.0/2 → 2.5
- 5/2.0 → 2.5
- 5/2 → 2

```c
double foo() {
return 5/2;
}
//this returns 2 and then will be converted into 2.0 since it returns a double
```

**NO** built-in ****exponentiation operator

**Comparison**

== *= /= -= ==

! → not

< so on

**Boolean operators**

&&

||

! → not

### Example: Leap Year

Leap year if divisible by 400 or (4 and not 100)

```c
//function if it's a leap year
//int, there's no bool type in C; 0 is false, anything else is true
int is_leap_year(unsigned short year) {
	return ((year % 400) == 0 || ((year % 4 == 0) && !(year % 100 == 0)));
//will return a 0 or a 1 - boolean expressions are all seen as 0s or 1s (not 0s)
}

is_leap_year(2024)
//don't say == 1 or == 0; although it returns an integer, C understands that
//0 means False and !0 means True in this instance
```

### Example: Distance

```c
#include <math.h>
double distance(double x1, double y1, double x2, double y2) {
	double x_distance = x1 - x2;
	double y_distance = y1 - y2;
	return sqrt((x_distance)*(x_distance)+(y_distance)*(y_distance));
}
```

### Creating and Initializing Variables

```c
void foo() {
	int x = 7;
	double y;
	//what's y = to at this point? memory has been set aside to hold y as an integer
	printf("%d", y);
	//this prints whatever is present in memory of y. prints whatever was stored
	//in that spot before 
	y = 2.0;
	x = 4;

	double a = 2, b;
	b = 3;
	
	int c = 4;
	c = 5.5;
	//this is possible, but the c will be truncated - c = 5
```

### Booleans (Switch)

```c
unsigned char days_in_month(unsigned char m, unsigned short y) {
	switch  (m) {
		case 9: 
		case 4:
		case 6:
		case 11
			return 30;
		case 2:
			if is_leap_year(y):
				return 29;
			return 28;
		default:
			return 31;
	}
}
```

```c
void print days_in_month(unsigned char m, unsigned short y) {
	switch  (m) {
		case 9: 
		case 4:
		case 6:
		case 11
			printf("30");
		case 2:
			if is_leap_year(y) {
				printf("29");
			} else {
				return printf("28");
			}
		default:
			printf("31");
	}
}

//if the month was 9 year was 2023 -> prints 302831
//case just brings you to where you need to be

void print days_in_month(unsigned char m, unsigned short y) {
	switch  (m) {
		case 9: 
		case 4:
		case 6:
		case 11
			printf("30");
			break;
		case 2:
			if is_leap_year(y) {
				printf("29");
				break;
			} else {
					return printf("28");
					break;
			}
		default:
			printf("31");
	}
}

//break takes you out of the switch to make this work

```

### Loops

```c
unsigned long long int factorial(unsigned int x) {
	unsigned long long int res = 1;
	while (x > 1) {
		res *= x--;
//x-- uses value of x and then decrements it (postfix)
//--x decrements x and then usese value (prefix)
	}
	return res;
}
```

Infinite loop?

- hit control c to stop
- even if it goes past range of an integer, it will keep going (will wrap around)

Infinite recursive loop?

- Segmentation fault → and then stop
    - Program tried to use resources beyond what it’s able to use (recursive calls take up memory)
    - division by 0 will also cause this

**Bottom while loop**

```c
do {
//code
///checks condition at end
} while (cmd != 'Q');
```

**For loop**

```c
unsigned unsigned long int factorial(unsigned int x) {
	unsigned long long int res = 1;
	unsigned int i;

	for (i = x; i > 1; i--) {
		res *+ i;
	}
	//initializer, determination condition, update condition
return res;
}
```

10/9

**Pointers → type of data that stores location of something else in memory (think hippocampus and frontal lobe — hippocampus has index of locations of memories in frontal lobe**

- every byte of memory in your computer has a different address

```jsx
void foo() {
	int i = 7;
	// this creates a slot of memory called i and it stores 7
	int* p = &i;
	//creating pointer out of p by using * operator -- & finds the location of a variable
	//if i is at 1234, p now stores 1234
	int j = *p;
	//the * operator takes a pointer and provides what it's pointing to
	//j now holds 7
	//this is called dereferencing -> going from reference to actual value
```

If you were to look to try to access a spot of memory that you aren’t allowed to → SegmentationFault

```c
int a = 7, b = 7, c = 13;
int *ap = &a, *bp = &b, *bc = &c; 

int* p, a;
//star does not distribute, only looking at p in this example

a == b; -> True
a == c; -> False
ap == bp; -> False
*ap == *bp; -> True
```

**A swapping function (not pointers and thus not correct)**

```c
void swap(int i, int j) {
	int temp = i;
	i = j;
	j = temp;
}

void foo() {
	int a = 7, b = 13;
	swap(a, b);
}

//this doesn't work!
//C is pass by value, not pass by reference
```

**A swapping function (with pointers and thus correct!)**

```c
void swap(int* i, int* j) {
	int temp = *i;
	*i = *j;
	*j = temp;
}

void foo() {
	int a = 7, b = 13;
	swap(&a, &b);
}

```

10/11

**Vector addition**

```c
//there isn't an innate way to bundle values like a tuple in C so we use locations
void vector_add(double x1, double y1, double x2, double y2,
								double* xr, double* yr) {
	//xr and yr denote where to place results
	//deference xr and yr
	*xr = x1 + x2;
	*yr = y1 + y2;
	
}
```

```c
void foo() {
	double x, y;
	vector_add(10, 20, 1, 2, &x, &y);
	printf("%lf %lf\\n", x, y);
}
	
```

### Arrays

**All items in array must be same type**

Storage in memory:

- Ordered in memory (sequential)
- contiguous (no gaps)
- Lengths are fixed length are you take up a certain amount of space when you create a list
- Their locations aren’t sequentially as each element will take up multiple bytes of space
    - But since the same data type takes the same amount of place — you can calculate where the nth element is (e.g., double take 8 bytes, so if your list starts at 100 and your looking for the nth element, you can find it by looking at 100 + n * 8)
- Arrays are kept track by having a pointer at the beginning of the array

```c
void foo() {
	//array of doubles called a of length 4
	//curly braces to initialize those elements
	double a[4] = {10.5, -2.4, 86, 12.5}
	//can't do this after initializing the elements
	a = {1, 2, 3, 4}
	//contains unknown values at those two places
	double b[2];
	//I can also do without saying the number of elements since C can count the number
	double a[] = {1, 2, 3};
	a[2] = 13;
	//C cannot check bounds - it doesn't track length of array. This will work
	//unless you get a Seg fault (you can't access that memory)
	//C cannot check length
	a[10000] = 2;
}

	
```

You can’t do the following on an array:

- slicing
- negative indexing

```c
double sum(double* ds, unsigned int dslen) {
	double res = 0;
	unsigned int i;
	for(i = 0; i < dslen; i++) {
		res += ds[i];
	}
	return res;
}
```

#remove that do while loop, it does nothing different than a while loop

An alternative methods to above

```c
double sum(double ds[], unsigned int dslen) {
}
```

**Squaring everything in an array**

```c
void squares_change(double* ds, unsigned int dslen) {
	unsigned int i;
	for(i = 0; i < dslen; i++) {
		ds[i] = ds[i] * ds[i];
	}
}
```

### Creating a copy of a list

**Squaring in a copy of an array**

```c
double* squares_copy(double* ds, unsigned int dslen) {
/* can't use a brackets version instead */
	double sqr_ds[dslen];
//this doesn't work bc C needs to know exact number for list length 
//also, sqr_ds is a local variable and will disappear after this function
//so a copy of the pointer is returned but the list isn't there (dangling pointer)
	return sqr_ds;

	return *sqr_ds;
	//gets first element of the array but doesn't return the whole array
	//in short, arrays ARE NOT objects in C and they shouldn't be treated as such
}
//don't use the stack!
```

Stack → holds function data (local variables)

Heap → tell the system explicitly when to add and remove

```c
//The proper way
double * squares_copy(double* ds, unsigned int dslen) {
	double* res = (double*)malloc(sizeof(double)* dslen /*calculating bytes*/);
	//malloc -> memory allocation; takes in parameter as bytes of memory you need
	// use sizeof(double) for readability - 8 would be weird
	//malloc returns a generic pointer *void so we cast it to double*
	if (res == NULL) {
		//this checks if the pointer actually goes to a real value instead of null
		fprintf(stderr, "squares_copy unable to allocate result array\\n");
		exit(1);
		/*print out a helpful error message -> fprintf; printf has a slight delay and may not get printed
		* f stands for file -> says
		* where to send stuff, stderr will ensure it won't get batched up with program
		* and will print out; returns 1 for main function (to indicate error) */
	}
	for(int i = 0; i < dslen; i++) {
		res[i] = ds[i] * ds[i];
	}
	return res;
}

void foo() {
	double a[] = {1, 2, 3, 4};
	double* asq = squares_copy(a, 4);
	unsigned int i;
	for(i = 0; i < 4; i++) {
		printf("%lf", asq[i]);
	}
printf("\\n");
free(asq);
/*this will say that asq can now be used as memory
* every time you call malloc, you should call free once you don't need what 
* was allocated; don't free it before you're done using it but do it at earliest
* opportunity! */
}

Test(squares_copy) {
	double nums = {1, 2, 3, 4}
	double * nums_sq = squares_copy(nums, 4);
	cr_assert(nums_sq[0] == 1);
	/* and so on and so forth */
	free(nums_sq);
}
	
```

When the program is quit, everything is recycled. But, programs like web browsers are sometimes rarely quit so free is really, really important.

### Creating a new list (of a different size) from another list

**Creating an array with all the even numbers from one list (problem: how long to make array)**

```c
int* evens(int nums[], unsigned int numslen, unsigned int* rslen) {
	unsigned int nevens = 0;
	//Step 1: determine length of rex
	for(unsigned int i = 0; i < numslen; i++) {
		if (nums[i] % 2 == 0) {
			nevens++;
		}
	//Step 2: create memory for res
	int* res = (int*)malloc(sizeof(int)*nevens);
	if (res == NULL) {
		//this checks if the pointer actually goes to a real value instead of null
		fprintf(stderr, "evens unable to allocate result array\\n");
		exit(1);
	}
	//Step 3: fill res
	unsigned int res_index = 0;
	for(i = 0; i < nevens; i++) {
		if (nums[i] % 2 == 0) {
			res[res_index++] = nums[i];
		}
	}
	/*change value at the location for length of res */
	*reslen = nevens;
	return res /*this returns a pointer to res as it's an array */;
}

void foo() {
	int ns[] = {1, 2, 3, 4};
	unsigned int nevens;
	int* evs = evens(ns, 4, &nevens);
	unsigned int i = 0;
	for(i = 0; i < nevens; i++) {
		printf("%d", evs[i]);
	}

	free(evs);
}

int x[] = {1, 2, 3, 4};
int* x = {
```

### Alternative Ways to Index

```c
double nums;
*nums = nums[0]; //This is true *nums gives you value at beginning of nums
//pointer arithmetic
*(nums + 2) = nums[2];
```

October 18, 2023

### Strings

Lists of characters

Mark end of string with “\0” = NULL terminator → so, a string like “Hi” needs to be allocated with at least 3 elements because you need the null terminator (sometimes it’s longer than where the terminator is)

**strlen is built into C, but here’s how you could write it**

```c
unsigned int strlen(char* s) {
/* Length of string does not include null terminating character 
* as not part of the string */
	unsigned int i = 0;
	while (s[i] != '\\0' /* can also write != 0 as the ASKE key is 0 for 0\\ or simply s[i]*/ ) {
		i++;
	}
	
	return i;
}

//another option
unsigned int strlen(char* s) {
	//this will copy the pointer to t (we would need a star to deference s)
	char* t = s;
	
	//looks at *t and then increments t
	while(*t++) {}
	
	//t is incremented one two far since it adds another value after it sees '\\0'
	return t - s - 1;
}
```

Emphasize — creates new string leaving old string intact, but new string has exclamation points instead of periods

```c
char* emphasize(char* s) {
	char* new = (char*)malloc(sizeof(char) * strlen(s) + 1);
	
	unsigned int i = 0;

	while(s[i]) {
		if s[i] == '.' {
			t[i] = '!';
		}
		else {
			t[i] = s[i];
		}
		i++ 
	}
t[i] = '\\0'

	return t;
}
```

Copying strings

```c
char* strdup(char* s) {
	char* t = (char*)malloc(sizeof(char) * strlen(s) + 1);
	
	unsigned int i = 0;

	while(s[i]) {
		t[i] = s[i];
		i++ 
	}

	t[i] = '\\0'

	return t;
}

/*strcopy takes in two strings and returns nothing (you have to give it two
*strings of same length */
void strcopy(char* dst, char* src) {
	unsigned int i = 0;

	while(src[i]) {
		dst[i] = src[i];
		i++;
	}
	dst[i] = '\\0';
}

/* the hella efficient string copy (yeah it's pretty cool)*/
void strcopy(char* dst, char* src) {
	//this retrieves what was just assigned
	while (*dst++ = *src++) {
	}
}
```

++ or *++

```c
int* x[] = {1, 2, 3, 4};
x++; //=> moves element *x looks at
(*x)++; //=> edits element at index x
*x++; //returns element at *x and then increments x
```

### String functions (from string.h)

strlen

strdup

strcpy

strcmp

### strcmp

```c
int strcmp(a, b) {
	/* a - b; if a (later alphabetical order) is bigger than b -> positive number; 
	* if they're the same -> 0 (so equal strings return false;
	* if b is bigger -> negative number; */
}
```

# Structures

### Returning to Vector Add

```c
/* the structure (template) of the point 
* THIS IS IN THE HEADER FILE */
struct point {
	//these are the fields!
	double x;
	double y;
}; //semicolon to end this
```

```c
void foo() {
	struct point p = {10, 20};
	p.x = 5;
}
```

### Distance Between Two Points!

```c
#include <math.h>

double distance(struct point p1, struct point p2) {
	double dx = p1.x - p2.x;
	double dy = p1.y - p2.y;
	
	return (sqrt(dx * dx + dy * dy));
}

void foo() {
	struct point p = {10, 20};
	p.x = 5;
	struct point q = {0, -5);
	double d = distance(p, q);
}

```

### Midpoint Between Two Points!

```c
struct point midpoint(struct point p1, struct point2) {
	struct point res = {(p1.x + p2.x)/2, (p2.y + p2.y)/2};
	return res;
}

void foo() {
	struct point p = {10, 20};
	p.x = 5;
	struct point q = {0, -5);
	struct point r = midpoint(p, q);
}
```

**Why can we return a struct (which appears to be a local variable) and have it appear in the heap?**

- structs are copied when used as parameters and when returned!

**What if a structure has a list as a field?**

- either hard-coded with double quotes or use malloc

OR

```c
struct point {
	double x, y;
	char name[60];
};
/* I made room for 60 characters in memory, and this can be used} */
int somefunction() {
	struct point res;
	res.x = 2;
	res.y = 2;
	res.name[0] = 'm';
	res.name[1] = 'o';
	
	return res;
}
```

### Pointers to Structs

These are good to use when using a relatively large struct so we don’t have to copy it all the time — **structures as both parameters and return values send copies**!

```c
void bar() {
	struct point* p = (struct point)malloc(sizeof(struct point));
	//check if malloc returns null
	//dereference pointer
	(*p).x = 12;
	//or
	p -> y = -5;
```

10/23

Helpers for structs

```c
struct point* point_new(double x, double y) {
	struct point* res = (struct point*)malloc(sizeof(struct point));
	if(res == NULL) {
		fprintf(stderr, "point_new unable to allocate \\n");
	}

	res -> x = x;
	res -> y = y;
	return res;
}
	
```

Free stuff

```c
void point_free(struct point* p) {
	free(p);
}
```

```c
void point_show(struct point* p) {
	printf("(%lf, %lf)", p->x, p->y);
}
```

```c
void foo() {
	struct point p, q;
	//p will be a new copy of a q - point to separate structs
	p = q;
	struct point *p, *q;
	//p will point to same place as q
	p = q;
}
	
```

```c
struct point* point_copy(struct point* p) {
	return point_new(point->x, point->y);
}
```

**Structures within structures**

```c
struct circle {
	struct point center;
	double radius;
};

void foo() {
	struct circle c;
	c.center.x = 10;
	c.center.y = 5;
	c.radius = 3;

	//let's try as a pointer
	struct circle* c = (struct circle*)malloc(sizeof(struct circle));
	//still . for x as center is not a pointer to a struct, it's a struct
	c->center.x = 10;
	c->center.y = 10;
	c->radius = 3;
}

//**But what if we point to the center instead?**
struct circle {
	struct point* center;
	double radius;
}

void foo() {
//if I were to create a pointer again, I also need to create space for the center!
	struct circle* c = (struct circle*)malloc(sizeof(struct circle));
	c.center* = (struct point*)malloc(sizeof(point));
	c->center->x = 10;
	//If I were to use a star to access x
	//arrow before asterisk
	*c->center.x = 10;
}

void foo() {
	//let's make c not a pointer but instead a struct
	struct circle c;
	c.center* = (struct circle*)malloc(sizeof(struct circle));
	c.center->x = 10;
	c.center->y = 10;
	c.radius = 3;
}
	
```

### Arrays of Structures

```c
struct point ps[5];
p[0].x = 12;
struct point p = ps[0];
//creating structures by giving them lists of field values within list
{% raw %} struct point ps2[] = { {1, 2}, {3, 4} }; {% endraw %}

//list of 10 struct points
struct point* ps3 = (struct point*)malloc(sizeof(struct point) * 10);
ps3[6].x = -4;
```

### Arrays of Pointers to Structs

```c
struct point* qs[2];
//point new returns pointer
qs[0] = point_new(//stuff);
qs[1] = point_new(//stuff);
qs[1]->x = 10;

//for a list of pointers to points with a length of 10
struct point** qs3 = (struct point**)malloc(sizeof(struct point*) * 10);
qs3[0] = point_new(/stuff);
qs3[3]->x = 7;
```

October 25, 2023

```c
struct square {
	struct point top_left;
	double side_length;
};

struct rectangle {
	struct point top_left;
	double width;
	double height;
};
```

**Can we make a shape struct that can handle all these different shapes?**

### Unions of Structs

```c
union shape { //only stores one of these structs at a time (alots space for biggest one, so in this case the rectangle)
	//this is OR (only wants one)
	struct circle c;
	struct square s;
	struct rectangle r;
};

struct tagged_shape {
	//this is AND (wants both)
	union shape u;
	enum shape_tag tag; //enum shape_tag will handle values corresponding to struct
};

enum shape_tag { //enum stands for enumerated type
	CIRCLE, SQUARE, RECTANGLE
};
```

**memory storage for shape**

|x x x|y y y|
|---|---|
|r s w|h|

```c
//let's create a rectangle
struct tagged_shape shp;
shp.u.r.top_left.x = 10;
shp.u.r.top_left.y = 20;
shp.u.r.width = 5;
shp.u.r.height = 3;
shp.tag = RECTANGLE;

//beneath is allowed even though it's improper, and r will return the width of the rectangle
double r = shape.u.c.radius;

double shape_area(struct tagged_shape s) {
	switch(s.tag) {
	case CIRCLE:
		return M_PI * s.u.c.radius * s.u.c.radius;
	case SQUARE:
		return s.u.s.side * s.u.s.side;
	case RECTANGLE:
		return s.u.r.width * s.u.r.height;
	//a lack of return would still have a place that stores the return statement but it wouldn't have been altered so we use x
	default:
		fprintf(stderr, "...");
		exit(1);
	}
}

//efficient method but still not amazing
struct rectangle r = {{10, 20}, 5, 3};
union shape s;
s.r = r;
struct tagged_shape shp = {r, RECTANGLE};
```

# Linked Lists

Each element has a value and a pointer to the next element

To get an element deep within the list, you need to go though each and every element — last element of list has a NULL pointer

```c
//this doesn't work bc of circular dependency
struct intlist {
	int val;
	struct intlist* next;
}
```

### typedef

```c
//giving unsigned long long int a one word type name; they are the same thing
typedef unsigned long long int ullint;

typedef struct point point;
```

### Using typedef for linked lists

```c
typdef struct intlist intlist;

//it's still circular reasoning, but the compiler no longer complains
struct intlist {
	int val;
	intlist* next;
}

intlist* prepend(int val, intlist* next) {
	intlist* res = (intlist*)malloc(sizeof(intlist));
	res -> val = val;
	res -> next = next;
	return res;
}

intlist* l = prepend(7, prepend(13, prepend(26, NULL)));
//adding 0 to the beginning
l = prepend(0, l);
```

### Writing functions on linked lists

```c
int sum(intlist* l) {
	if (l == NULL) {
		return 0;
	}
	
	return l->val + sum(l->next);
}
```

```c
void squares_change(intlist* l) {
	if(l == NULL) {
		return;
	}
	
	l->val = l->val * l->val;
	squares_change(l->next);
}
```

```c
intlist* squares_copy(intlist* l) {
	if(l == NULL) {
		return NULL;
	}
```

### New list of evens of old list

```c
intlist* evens(intlist* l) {
	if(l == NULL) {
		return NULL;
	}

	if(l->val % 2 == 0) {
		return prepend(l-> val, evens(l->next));
	}
	return evens(l->next);
}
```

### How to free intlists (have to free all the structs!)

```c
//we should have one call to free for every call of malloc
void free_list(intlist* l) {
	if (l == NULL) {
		return;
	}
	
	free(l->next);
	free(l);
}
```

# Linked List (Iterative Versions)

**Summing a linked list**

```c
//benefit here is that we don't need another stack frame for each recursive call (
int sum(intlist* l) {
	int res = 0;
	while(l != NULL) {
		res += l->val;
		l = l-> next;
	}
	
	return res;
}

```

**Squaring a linked list**

```c
void squares_change(intlist* l) {
//NULL is false
	while(l) {
		l->value = l->value * l->value;
		l = l->next;
	}
}
```

**Freeing the list**

```c
void free_list(intlist *l) {
	while(l) {
		intlist* temp = l->next;
		free(l);
		l = temp;
	}
}
```

**Creating a new list from an old list**

```c
intlist* squares_copy(intlist* l) {
	intlist *head, *tail;
	if (l == NULL) {
		return NULL;
	}

	head = prepend(l->val * l-> val, NULL);
	tail = head;
	
	l = l-> next;
	
	while(l) {
		tail->next = prepend(l->val*l->val);
		l = l->next;
		tail = tail->next;
	}

	return head;
}

```

```c
intlist* evens(intlist *l) {
	intlist *head = NULL, *tail;

	while(l) {
		if(l->val % 2 == 0) {
			if(*head == NULL) {
				head = prepend(l->val, NULL);
				tail = head;
			}
			else {
				tail->next = prepend(l->val, NULL);
				tail = tail->next;
			}
		}
		l = l->next;
	}

	return head;
}
```

# Multidimensional Data

**2d array**

```c
int m[3][5]; //this is actually a 1d array with 15 elements
m[2][1] = 124;
//how does the compiler store this? takes first row and then glues second row on right after
//so m[2] doesn't work because it's not a grid
m[2][1] -> m[2 * 5 + 1]
//C makes a 1d array but does the math for us for our conceptual 1d array

```

**Arrays of arrays**

```c
//array of ints -> int*
//array of arrays of ints -> int**
//lets create a 3 x 5 array
int** m = (int**)malloc(sizeof(int*) * 3);
//now, we need to create memory for the arrays within the array
for(i = 0; i < 3; i++) {
	m[i] = (int*)malloc(sizeof(int) * 5);
}

//does not just do the index multiplication and addition; this goes to the array at the second index and then the first index of that array
m[2][1] = 12;

//the C compiler knows how to do the indexing based on how you create the arrays

```

**Calling functions with arrays of arrays as parameters**

```c
//1d arrays
void foo(int a[],
//is eqivalent to
void foo(int* a, 

//2d arrays
//THESE ARE NOT EQUIVALENT AS THEY INDEX DIFFERENTLY; ONE USES POINTERS FOR INDEXING AND THE OTHER USES 1D INDEXING
void foo(int a[][]
void foo (int a**

// void foo has to commit to the number of columns if [][] is used, so...
void foo(int a [][5], unsigned int nrows) {
}
//you have to hardcode the columns; you have the option to hardcode the rows

void foo(int a**, unsigned int nrows, unsigned int ncols) {
}
```

# Stacks

- Last one in is first one out
- First one in is last one out

**Linked lists are great for this since they aren’t fixed length**

_What if we made the top of the stack the end of linked list?_

- Appending is costly since you need to iterate through entire list to append
- Removing is costly since you need to do the same
- However, if we keep a pointer to the tail of the list, this is actually really easy
    - But what about popping from the list?
        - We have a pointer to the last element, BUT the element before has to have it’s pointer to be NULL → we have to iterate through the whole list
            - Well, we could have a pointer to tail - 1, but then we would have to update tail -1, which means we have to iterate through the whole list

_What if we made the top of the stack the beginning of the list?_

Appending? Easy! — old start is pointed to by new element and first pointer goes to new element

Removing? Easy! — old start is removed and we have pointer to next element from the old start

# Queues

_What if we made the front of the line the beginning of the list?_

Appending (adding to queue)

- Loop to end of the list to adjust C’s pointer
    - But, let’s add a tail pointer → this is really easy

Dequeueing

- Same as removing from a stack when the top of the stack is the beginning of the list

_What if we made the back of the line the beginning of the list?_

Appending

- Easy → just add an element to the beginning

Dequeuing

- Lord, this sucks. Same as the tail -1 full iteration as a stack with the top of the stack at the end of the linked list

# Trees

With linked lists!

Add pointers to intlists (multiple pointers allows for children)

```c
typedef struct intree intree;

struct inttree {
	int val;
	inttree *left, *right;
};
```

**Summing trees**

```c
int treesum(intree* t) {
	if(!t) {
		return 0;
	}
return t->val + treesum(t->left) + treesum(t->right);
}
```

**Factoring out return statement**

```c
int treesum(intree* t) {
	return (t)?(t->val + treesum(t->left) + treesum(t->right): 0;
}
```

# Representing Numbers

**Binary**

143 to binary

143 % 2 → **1**

143 / 2 → 71

71 % 2 → **1**

71 / 2 → 30

35 % 2 = **1**

35 / 2 = 17

17 % 2 = **1**

17 / 2 → 8

8 % 2 = **0**

8 / 2 = 4

4 % 2 = **0**

4/ 2 = 2

2 % 2 = **0**

2/ 2 = 1

1 % 2 = **1**

1 / 2 = 0

**10001111**

So, 143 → 1 + 2 + 4 + 8 + 128

**Octal**

143 % 8 → 7

143 / 8 → 17

17 % 8 → 1

17 / 8 → 2

2 % 8 → 2

2 / 8 = 0

**217**

3 bits that correspond to 2 → 010

3 bits that correspond to 1 → 001

3 bits that correspond to 7 → 111

10001111 (octal is nice because we can directly convert it from octal to binary since we need 3 bits of binary for every bit of octal and we have direct translation)

- we can also convert binary to octal (just take 3 bits at a time)

This works for base 4, 8, 16, 32 (whatever maxes out the bits)

Base 16 = hexadecimal

After going to 9, we use a for 10, b for 11, c for 12, d for 13, e for 14, f for 15

- because if I see 11, is that 2 separate 1s or 11

**Hexadecimal**

143 % 16 → 15 (f)

143 / 16 = 8

8 % 16 → 8

8 / 16 = 0

8f

To binary:

f → 1111

8 → 1000

From binary:

1000**1111**

1111 → f

1000 → 8

8f

## Dictionaries

A well-balanced search tree

Array with pointers is fast but takes up a shit ton of memory

- Pointers take 8 bytes each

We can shorten the keys but then we have collisions — no longer a function

### Hashing

Function that takes in some sort of data type (e.g., a string) and then gives a number

- similar inputs will lead to different outputs

Here’s one (pseudocode)

```c
res = 0
for each char in str
	res *= 37
	res += char's ascii code
return res % size of hash table array
```

//we choose 37 because it’s a prime number, which tends to be relatively prime with a lot of other numbers

Created linked list for each hash value index because multiple vlaues may hash to same value

so if multiple things hash to 127 → createad a linked list at 127 that has k,v pairs

Create a hash table (look into this)

## Bits

```c
struct pixel {
	unsigned char red, green, blue;
}
//256^3 colors to work with
struct pixel* image;
```

More precise pixels

```c
struct pixel10 {
	unsigned short red, green, blue;
}
//represents 65535 but only used to go up to 1023 (the excess is unneeded)

struct pixel10* image;
//in this case, we're only using 10 of the 16 bits for a value of color -> 62.5% of the memory
```

If we need 10 bits for red, 10 bits for green, and 10 bits for blue

Let’s entertain the example of only needed 5 bits for each value

r: 15 → 01111

g: 10 → 01010

b: 3 → 00011

let’s try to make a 15 bit number that holds all of these

01111 01010 00011 → make this an unsigned short

**Some new operators**

1100 (12)

&1010 (10)

= 1000

0 and 0 is false

0 and 1 is false

1 and 0 is false

1 and 1 is true

So, 1100 & 1010 = 8 (this is bitwise and)

### Bitwise operators

**Bitwise and**

1100 (12)

&1010 (10)

= 1000

**Bitwise or**

1100

|1010

1110 → 14

**Bitwise !**

~1010

0101 = 5

~10 → 5

Shift

1111

<< 2 (number in decimal)

111100

**So, how do we put together those 3 rgb values?**

RRRRR (5 bits of red)

GGGGG (5 bits of green)

BBBBB (5 bits of blue)

We want RRRRRGGGGGBBBBB

Multiple rows of ors

RRRRR 00000 00000

|00000 GGGGG 00000

|00000 00000 BBBBB

= RRRRR GGGGG BBBBB

How do we get this? Let’s use shifting!

RRRRR

<< 10

= RRRRR0000000000

GGGGG

<< 5

= GGGGG

So, (r << 10)|(g < 5)|(b) gets us those 15 bits representing these 3 colors

Store it in an unsigned short and we get 0RRRRRGGGGGBBBBB and we can assign it to p

So, how do I get red out if it looks like 0RRRRR….?

<aside> 💡 Right shift: 1111 >> 2 = 11

</aside>

p >> 10 = 0RRRRR

So how do I get BBBBB?

### Masking

we can use and operator

```c
b = p&31;
//have to put a decimal number in the and
//converting bits to hexadecimal 0001|1111 -> 1 15 -> 1F
b = p&0x1F;
//0x denotes it's in hex

//any number with a leading 0 is interpreted as octal
```

leading 0 → octal

leading 0x → hx

**let’s get g!**

```c
g = p>>5&0x1F;
```

## Higher-Order Functions

```c
void squares_chanage(intlist* l) {
	while(l) {
		l->val = l->val * l->val;
		l = l->next;
	}
}
```

Pointers to functions

```c
int add10(int y) {
	return x + 10;
}

void foo() {
	//pointer to function - variable f is a pointer to a function with a return type of integer (int to the left of (*f)) and the input is an int (parens to
	//the right)
	int(*f)(int);

//what's wrong with below?
int *f(int)
//looks like a header of the function, just missing a name for the function

f = add10;
int y = f(5);
//calls f with 5 so returns 15

//you can use & and * or just not for function pointers

```

```c
void map(intlist* l, int(*f)(int)) {
	while(l) {
		l->val = f(l->val);
		l = l->next;
	}
}

//e.g., if I have a square function like int square(int x) {...}
map(l, square); 
```

## CPUs

To make faster:

1. find more efficient algorithms
2. make cpu faster (clockspeed) — this is the heartbeat of the processor
    1. limited by the speed of light through the materials we use
    2. if a cpu does something 4 billion times a second, light doesn’t move very far in a billionth in a second — the faster we make the processor means less space can be traveled

So, CPUs are getting denser

- dots, wires are 3 nanometers

Use light exposure to determine etching of material on cpu

dots are limited in how small they can be (a few atoms at least)

Easier way of allowing cpus to do more? Allow it do more than one thing at once

- many processors within the processor (many cores)
    - one cpu to add two numbers? hard!
    - one cpu that has several units that can independently add numbers → much easier

Binary search tree

- can’t split this into work done by multiple pieces (bc of dependencies) — next step depends on previous step

Rotating a matrix

- very easy to do for each core since the next step does not rely on the last step

Difficult for a computer to analyze a program and split it up → you have to think about how to break up your algo into smaller pieces (multithreading)

**Multithreading**

Single-threaded programs has a single pointer to what it’s working on

Multiple threads → multiple pointers to work on multiple different things

pthreads (posix threads)

**Approximating pi**

```c
double pi(unsigned int r, unsigned int from, unsigned int to) {
	unsigned int counter = 0, x, y;
	for(x = from; x < to; x++) {
		for(y = from; y = to; y++) {
			if(x * x + y * y < r * r) {
				count++;
			}
		}
	}
	return (count * 4) / (r * r);
}

#include <pthread.h>

struct work {
	unsigned int r, f, t;
	double res;
};

void* thread(void* arg) {
	struct work* w = (struct work*)arg;
	w->res = pi(w->r, w->f, w->t);
}

int main() {
	struct work w1 = {100000, 0, 25000}; w2 = {100000, 25000, 50000}...
	pthread_t t1, t2, t3, t4;
	pthread_create(&t1, NULL, thread, &w1);
	pthread_create(&t2, NULL, thread, &w2);
	pthread_create(&t3, NULL, thread, &w3);
	pthread_create(&t4, NULL, thread, &w4);
	

	double pi = w1.res + w2.res + w3.res + w4.res;
}
```

## Sorting

### insert

```c
intlist* insert(intlist* l, int val) {
	//requires an already sorted algo
	if (l == NULL) {
		return prepend(val, NULL);
	}
	if(val < l->val) {
		return prepend(val, l);
	}
	l->next = insert(l->next, val);
	return l;
}

```

### insertion sort

```c
intlist* insertion_sort(intlist* unsorted) {
	intlist* sorted = NULL;
	while(unsorted) {
		sorted = insert(sorted, unsorted->val);
		unsorted = unsorted->next;
	}
	return sorted;
}
```

### Selection

```c
unsigned int find_min(int* a, unsigned int from, unsigned int to) {
	unsigned int min = from;
	unsigned int i;
	for(i = from + 1; i < to; i++) {
		if(a[i] < a[min]) {
			min = i;
		}
	}
	return min;
}
	
```

### Selection Sort

```c
int* selection_sort(int* unsorted, unsigned int len) {
	unsigned int i;
	unsigned int small;
	for(i = 0; i < len - 1; i++) {
		small = find_min(unsorted, i, len);
		int temp = unsorted[i];
		unsorted[i] = unsorted[small];
		unsorted[small] = temp;
	}
	
	return unsorted;
```
{% endraw %}