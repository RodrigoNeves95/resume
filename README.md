Work adapted from [https://github.com/sb2nov/resume](https://github.com/sb2nov/resume)

Repository to my one page CV with a Latex template running inside docker. See instructions below.

### Build using Docker

```sh
docker build -t latex .
docker run --rm -i -v "$PWD":/data latex pdflatex rodrigo_neves.tex
```

### Preview

![Resume Screenshot](/resume_preview.png)

