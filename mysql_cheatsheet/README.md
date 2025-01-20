# MySQL Cheatsheet
This repo has a comprehensive MySQL cheatsheet markdown file that can be converted to pdf and printed for reference.

## Generate Cheatsheet PDF
- Download/Clone this repository in your local machine
- Install [Visual Studio Code](https://code.visualstudio.com/)
- Install [Markdown PDF extension v1.5.0](https://marketplace.visualstudio.com/items?itemName=yzane.markdown-pdf) for VS Code
- Generate a workspace `settings.json` file and add the settings from `.vscode` folder
- Open the `mysql_cheatsheet.md` file on VS Code.
- Open up the Command Palette in VS Code by selecting Ctrl/Cmd + Shift + P or View > Command Palette
- In Command Palette, search and select the option `Markdown PDF: Export(pdf)`
- This will create the `mysql_cheatsheet.pdf` that can be printed

## CSS Customization
For editing or customizing the styling of the PDF, simply edit the `assets > style.css`