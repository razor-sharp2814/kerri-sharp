# Kerri Sharp – CV

My CV as a single web page, published with GitHub Pages at
<https://www.kerrisharp.com>.

The page is styled to look the same on screen, as a PDF and on paper. On every push to `main`,
a GitHub Actions workflow builds `kerri-sharp-cv.pdf` from the page and publishes both.

To build the PDF locally (needs Google Chrome):

```sh
./build-pdf.sh
```

## Credits

This page uses two fonts, both licensed under the
[SIL Open Font License 1.1](https://openfontlicense.org/). The font files and their licences are in
[`fonts/`](fonts/).

- [Inter](https://rsms.me/inter/) by Rasmus Andersson and
  [The Inter Project Authors](https://github.com/rsms/inter), for the text. Unmodified from the
  [v4.1 release](https://github.com/rsms/inter/releases/tag/v4.1).
- [Raleway](https://github.com/impallari/Raleway) by
  [The Raleway Project Authors](https://github.com/impallari/Raleway), for the headings. Version 4.026.
