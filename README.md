# tpdf2md

A small command-line tool that converts a PDF file to Markdown using [pymupdf4llm](https://pypi.org/project/pymupdf4llm/).

## Requirements

- Python 3.8+
- pymupdf4llm

## Setup

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Usage

Print Markdown to stdout:

```bash
./tpdf2md input.pdf
```

Write Markdown to a file:

```bash
./tpdf2md input.pdf -o output.md
```

Overwrite an existing output file without prompting:

```bash
./tpdf2md input.pdf -o output.md --force
```

Prompt before overwriting an existing output file:

```bash
./tpdf2md input.pdf -o output.md --interactive
```

## Options

| Flag | Description |
| --- | --- |
| `pdf` | Input PDF file (required) |
| `-o`, `--output FILE` | Write Markdown to `FILE` instead of stdout |
| `-f`, `--force` | Overwrite an existing output file without prompting |
| `-i`, `--interactive` | Prompt before overwriting an existing output file |

## Why the "t" prefix?

There are tons of tools/utilities called `pdf2md`, `pdftomd`, `pdfmd`, etc.
The prefix of `t` is just to namespace this as my (Thomas') version of the
utility.

