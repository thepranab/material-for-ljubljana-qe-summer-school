PURPOSE OF THE EXERCISE:
How to perform a structural optimization (calculation = "relax");
atomic positions only
--------------------------------------------------------------------

Steps to perform:

1. Read the pw.graphane.relax.in input file and try to understand
   it. Notice the new &IONS namelist. Beware that "IONS" is a jargon
   in pseudo-potential context for atoms (can you figure out why?)

   
2. To run the example, execute:

   pw.x < pw.graphane.relax.in > pw.graphane.relax.out &


3. When calculation finishes, analyze the output: it consists of
   several SCF steps, followed by calculation of forces and generation
   of new atomic positions.


4. To visualize the evolution of the structure during structural
   optimization, execute:

   xcrysden --pwo pw.graphane.relax.out
