# Lecture 3: Functions and Control Structures

## Functions

### **Static vs Active Sketches**

- **Static Sketches**: These are the sketches we've discussed up until now.
  - Executed from top to bottom.
  - Do not allow self-defined functions.
  - Mainly used to draw & store, but also can load, process, and visualize data.
- **Active Sketches**: These are animations.
  - Can run at up to 60fps.
  - Must declare two functions: `setup()` and `draw()`.

#### Example: Actively Static Sketch

```pde
int BORDER = 10;  // Spacing from the sides

void setup() {  // Called once at the beginning
  size(400, 300);
  stroke(150, 0, 0);
}

void draw() {  // Called up to 60fps
  // Draw diagonals
  line(BORDER, BORDER, width - 1 - BORDER, height - 1- BORDER);
  line(BORDER, height - 1 - BORDER, width - 1 - BORDER, BORDER);
}
```

### **Methods (also known as Functions)**

- A method is a named block of statements that might return a value.
- Methods can be parameter-less.
- Methods can be called in statements; if they return a value, it will be ignored.
- In expressions, the called methods must return a value.
- When calling a function, arguments are passed for each parameter. Brackets are always required, even if empty.

#### **Key Points**

- **Return Values**:
  - **Defined Return Value**: The method must return a value of the declared type.
  - **Undefined Return Value (void)**: The method may not return any value.
- **Calling Methods**: Ensure to pass all required parameters in their correct data types.

### **Statements vs Expressions**

- **Statements**: Describe all activities in a Java/Processing program (e.g., variable declarations, assignments, loops).
- **Expressions**: Represent values and can be evaluated to produce results (e.g., method calls, object allocations, math operations).

## Control Structures

Java/Processing provides multiple control structures categorized into:

1. **Sequences/Blocks**
2. **Conditionals**
3. **Loops**

While just three (Sequence, `if` Conditional, and `while` Loop) would be enough for most programming needs, having more facilitates better and efficient programming.

> ⚠️ **Note**: Java inherits its control structures from C. This inheritance has also brought some challenges.

### **Describing Control Flow with Flow Diagrams**

![Basic flowchart symbols](https://github.com/THD-AI-2023/AIN-B-1-Programming-1-WS23/assets/66517969/b49cc150-a4fd-4260-998e-a13bd81401fe)

### **Sequence/Block**

A **Sequence** or **Block** is the line-by-line execution of statements in their order of appearance. For instance:

```java
int x = 5;
int y = 10;
int sum = x + y;
System.out.println(sum);
```

### **Structured Programming**

Avoiding "Spaghetti-code" (confusing control structures) is crucial. The solution is **structured programming**, which emphasizes:

- Single entry and exit points for control structures.
- The paradigm of **incremental refinement**: breaking down statements into smaller, well-defined steps.
- The use of flow diagrams to clarify control structure semantics.

![Spaghetti code Flow Chart](https://github.com/THD-AI-2023/AIN-B-1-Programming-1-WS23/assets/66517969/1cf41dbc-bc62-4c14-bd39-98ec665df95f)

### Control Structures Overview

![Control structures Table](https://github.com/THD-AI-2023/AIN-B-1-Programming-1-WS23/assets/66517969/1b1cc016-950f-4a2a-9e15-208b7c6878d4)

### **Nested Conditional Statements**

A nested `if` statement is when an `if` or `else` statement contains another `if` or `else` statement. For instance:

```java
/* Calculate the maximum of k, m, and n */
if (k < m)
    if (m < n)
        max = n;
    else
        max = m;
else
    if (k < n)
        max = n;
    else
        max = k;
```

![Flow Chart of Nested Conditional Statements](https://github.com/THD-AI-2023/AIN-B-1-Programming-1-WS23/assets/66517969/81ab6fb5-f9fa-41a6-815b-db03742dbf4d)

#### **Active Sketch Example**

```pde
int border = 0;

void setup() {
  size(400, 300);
  stroke(150, 0, 0);
}

void draw() {
  background(255);
  line(border, border, width - 1 - border, height - 1 - border);
  line(border, height - 1 - border, width - 1 - border, border);
  border += 1;

  if (border == 100) {
    border = 0;
  }
}
```
