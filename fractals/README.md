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

*This folder contains one sub-folder:*  

#### Orgform  

The [/fractals/orgform/](./orgform/) directory contains a mirror of a large number of fractal formulas originally written for FRACTINT, by a large number of different authors.  
* These were collected first by George Martin and later by Paul N. Lee. and distributed via a file called ORGFORM.ZIP from Paul's website www.nahee.com.  

* *Unfortunately Paul has passed on and that site is no longer available.*
  
The files here were retrieved from the Internet Archive via:  
https://web.archive.org/web/20160807081118/http://www.nahee.com/Fractals/ORGFORM.ZIP
  
The copyright conditions under which these were initially distributed are not clear to me:  
*If anyone believes they have copyright over any of the files in this collection and would prefer not to have them distributed, please notify edwin@bathysphere.org.*



[mandelbrot_example]: mandelbrot_example.png "Mandelbrot Set Example Image"
