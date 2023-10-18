# Functions

## Static vs active sketches

- The sketches that we have written up to now are
called static sketches.
  - The program executes from top to bottom.
  - No self-defined functions are allowed.
  - The main use of static sketches is to draw & store (as image or pdf) something (of course you can load and process/visualize data…).
- An active sketch is an animation.
  - Up to 60fps.
  - 2 functions have to be declared (mandatory): `setup()` and `draw()`

### Actively static sketch example:

```pde
int BORDER = 10; // The spacing to the sides

void setup() { // Called once at the beginning
  size(400, 300);
  stroke(150, 0, 0);
}

void draw() { // Called with up to 60fps
  // Draw diagonals
  line(BORDER, BORDER, width - 1 - BORDER, height - 1- BORDER);
  line(BORDER, height - 1 - BORDER, width - 1 - BORDER, BORDER);
}
```

## Methods (`Functions`)

- A method is a named block of statements, that may return a value.
- A method can have a empty list of parameters
- In statements arbitrary methods can be called
  - In case a value is returned, it will be ignored
- The methods called in expressions must return a value.
- When calling a function for every parameter an argument value is passed
  - The arguments are written down in (curved) brackets
  - The curved brackets are necessary even when the argument list is empty

### Notes on methods

- There are two scenarios for the return value:
  - Defined return value
    - The method must calculate a value that has the required return type and return it.
    - At the end of the function body a return-statement with an argument is written.
    - The method can be used in an expression.
  - Undefined return value (void)
    - The method may have return-statements without an argument (which is not explicitly necessary, because there is an implicit return at the end of the function body)
    - The method can only be called within a statement, not within an expression.
- When calling a method all necessary parameters have to be passed in the required type.

## Statements vs expressions

- Statements
  - Describe all activities of a Java/Processing program.
  - Examples: Variable declarations, assignments, conditionals, loops.
- Expressions
  - Describe values
  - An expression is evaluated to produce a result.
  - Can be used as part of another expression or in a statement (e.g. an assignment).
  - Examples: Method calls (with return value), object allocations, mathematical expressions.

# Control structures

- Java/Processing offers a range of **control structures**.
- They can be separated in 3 categories:
  - Sequence/Block
  - Conditionals
  - Loops

- In principle, three control structures would be sufficient:
  - Sequence
  - Conditional statement (`if`)
  - Pretest loop (`while`)

- There are multiple reasons for having more conditionals and loops:
  - Human pragmatism (comfortable programming)
  - Machine pragmatism (efficiency)

> ⚠️ **Note**: Java has inherited its control structures from C. Unfortunately, Java has therefore also inherited some pitfalls.

---

## Describing a control flow by flow diagrams

Here are some basic flowchart symbols used to describe a control flow:

![Basic flowchart symbols](https://github.com/THD-AI-2023/AIN-B-1-Programming-1-WS23/assets/66517969/b49cc150-a4fd-4260-998e-a13bd81401fe)

---

#### Sequence/Block Explanation:

In programming, a **Sequence** or **Block** refers to the execution of statements line by line, in the order they appear. This is the most basic control structure. It involves executing a sequence of code in the order in which the statements are written.

For example:

```java
int x = 5;
int y = 10;
int sum = x + y;
System.out.println(sum);
```

Here, each line is executed one after the other in sequence. The statements are executed in the order they appear, and there's no decision-making or repetition involved.

## Structured programming

- "Spaghetti-code" creates headaches for some.
- "Spaghetti-code": Confusing control structures.
- A solution is **structured programming**
  - "Go To Statement Considered Harmful" (Dijkstra, Communications of the ACM 1968)
  - Control structures have a single in- and output.
  - This leads to "well defined" flow diagrams
  - Paradigm of **incremental refinement**
    - Statements are broken into smaller steps incrementally (this leads to a hierarchical structure)
    - Top-down-development of algorithms and programs
- Flow diagrams are used in the following to explain the semantics of control structures.

!["Spaghetti code" Flow Chart](https://github.com/THD-AI-2023/AIN-B-1-Programming-1-WS23/assets/66517969/1cf41dbc-bc62-4c14-bd39-98ec665df95f)

Of course! Here's the content converted to markdown with the nested conditional statements represented in Mermaid:

## Control structures

![Control structures Table (Containing Sequence, Blocks, Loops, Double sided conditional statement, and One sided conditional statement](https://github.com/THD-AI-2023/AIN-B-1-Programming-1-WS23/assets/66517969/1b1cc016-950f-4a2a-9e15-208b7c6878d4)

## Sequences

- Consecuting statements form a sequence.
- Syntax
  - The statements are written after each other.
  - The semicolon is no separating symbol, but belongs to the statement

## Block statements

- A sequence of statements can be grouped together into a block statement.
- A block is delimited by curly brackets: { … }
- A block statement can be used wherever a statement is necessary by the Java syntax.
- Example: In an if-else-conditional, the if-part or the else-part, or both, could be block statements.

> ⚠️ **Good style**: In an if-else-conditional, always use a block for all parts of the condition, even if there is only one statement inside the block.

## Nested conditional statements

```java
/* Calculate the
 * maximum
 * of k, m and n
 */
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

![Flow Chart of the above code](https://github.com/THD-AI-2023/AIN-B-1-Programming-1-WS23/assets/66517969/81ab6fb5-f9fa-41a6-815b-db03742dbf4d)

### Actual active sketch example:

```pde
int border = 0; // The spacing to the sides

void setup() // Called once at the beginning
{ 
  size(400, 300);
  stroke(150, 0, 0);
}

void draw() // Called with up to 60fps
{ 
  // Draw diagonals
  background(255); // Start painting anew
  line(border, border, width - 1 - border, height - 1 - border);
  line(border, height - 1 - border, width - 1 - border, border);
  border = border + 1; // increase border with each frame

  if (border == 100) // Reset border after 101 frames
  { 
    border = 0;
  }
}
```

