#!/bin/bash
pandoc -o index.html -c resume-css-stylesheet.css resume.md
wkhtmltopdf index.html ASpringerResume.pdf 
pandoc -o ASpringerResume.docx --reference-docx=resume-docx-reference.docx resume.md
