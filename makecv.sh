#!/bin/bash
pandoc -o index.html -c resume-css-stylesheet.css source/resume.md
pandoc -o cc_sales.html -c resume-css-stylesheet.css source/cc_sales.md
pandoc -o intro.html -c resume-css-stylesheet.css source/letter_template.md
pandoc -o user_guide.html -c resume-css-stylesheet.css source/user_guide.md
pandoc -o letters/cover_letter.html -c resume-css-stylesheet.css letters/working_letter.md
wkhtmltopdf index.html ASpringerResume.pdf
wkhtmltopdf letters/cover_letter.html ASpringerCoverLetter.pdf
