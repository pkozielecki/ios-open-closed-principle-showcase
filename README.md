# Open-Closed Principle (OCP) showcase

The Open-Closed Principle (OCP) represents the letter "O" in S.O.L.I.D. It teaches us to create software that is open to extension but closed to change, enhancing its maintainability and scalability.

To be honest, the **OCP is one of the most challenging S.O.L.I.D. principles** to understand and apply in iOS projects. Primarily, it’s not as intuitive as the [Single Responsibility Priciple](https://swiftandmemes.com/when-is-single-responsibility-principle-helping-us-write-better-code/). Almost all developers agree that classes should have as few responsibilities as possible, but being open to extension and closed to change? What does that even mean practically? 

Fortunately, the **OCP is just a useful guide that helps us avoiding common traps associated with change management in software development.** 

This showcase is a simple `Xcode Playground`, presenting a “story” of a tool for printing reports. It illustrates how **not following the OCP** can cause problems as the tool evolves with growing business requirements. The showcase also presents an alternative: an **OCP-compliant version of the tool** that can be easily extended with new types of data and output file types.

## The story of a simple tool:

Here’s how a simple report printer turned into a hard to maintain, rigid tool:

1. **Stage 1 - Printing a sprint completion report.**<br/>Exactly what is written on a label. Nothing more, nothing less. Easy, peasy!
2. **Stage 2 - Adding optional image background.**<br/>Seems simple enough. Let's just add a proper parameter to the printing function and be done with it. But wait—doing that will break the API for existing users. I have an idea! Let's make the parameter optional with a default value!
3. **Stage 3 - New use case: printing employee evaluation reports.**<br/>Now, things are getting serious! We can’t change the existing `print()` method to accept both types of reports without breaking the API. So, let’s add another printing method specifically for employee reports!
4. **Stage 4 - Another use case: printing financial reports.**<br/>We know the drill, right? Let’s add another, dedicated `print()` function and call it a day!
5. **Stage 5 - No longer print to the PDF.**<br/>Oh, oh… It’s easy to keep adding more `print()` methods to handle different report data. But how can we manage variable output formats, knowing that people still expect your tool to produce PDF reports by default? So, is it time to refresh your CV? Or maybe there is a light at the end of the tunnel?

### Alternative solution - an OCP-complient report printer:

## Technicalities
### Requirements
### Running the playground
