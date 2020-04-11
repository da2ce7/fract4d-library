## Fractals
#### Mathematical functions that create visual images using computer software.

These functions are written as small programs (functions) that are understood by fractal generating programs.

This folder contains many such formulas that are compatible with common fractal generating programs.  

Such as:
* Our software project *The Gnofract 4D Fractal Generator*: https://github.com/fract4d/gnofract4d/  
* The free-software: *FRACTINT*: https://www.fractint.org/  
* Or Commercial Sofware: *UltraFractal*: https://www.ultrafractal.com/  


#### About Fractals:

*A fractal formula is a simple program which tells a fractal program how to draw a particular kind of fractal.*  
  
*For example,*

```
Mandelbrot { 
init:
    z=0
    c=#pixel
loop:
    z=z*z*c
bailout:
    |z|<4.0
}
```

Draws the Mandelbrot set.  

![][mandelbrot_example]

[mandelbrot_example]: mandelbrot_example.png "Mandelbrot Set Example Image"
