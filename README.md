# Vim Key Binding Docs 
### Basic Navigation
 - j: Down
 - k: Up
 - l: Left
 - h: Right
 - w: Beginning of next word
 - e: End of Next word
 - b: Back a word
 - gg: Start of the Document
 - G: End of Document
 - H: Last line of current page
 - L: First line of current page
 - M: Line in the middle of current page
 - 0: Start of current line
 - ^: Start of text in current line
 - $: end of current line

### Basic Editing
 - i: Insert from current cursor postion
 - a: Insert from position next to current cursor position
 - A: Append at end of current line
 - x: Remove character from current position
 - X: Remove character preceding current position
 - r: Replace character at current position
 - o: create line next to current line and move to start of it, with <INSERT MODE>
 - O: create line previous to current line and move to start of it, with <INSERT MODE>
 - d+<Navigation>: Remove content in direction and distance, specified by the navigation
 - c+<Navigation>: Replace content in direction and distance, specified by the navigation
 - y+<Navigation>: Copy content in direction and distance, specified by the navigation
 - dd: Remove current line
 - cc: Replace current line
 - yy: Copy current line
 - p: Paste copied content
 - .: Repeat the previous editing contents
 - <leader(';')>+c+<space>: Inline comment current/selected line

### Auto-Completion
 - Ctrl+Space: Trigger Completion
 - Ctrl+n: Navigate down the suggestions
 - Ctrl+p: Navigation up the suggestions
 - Tab: Select active suggestion
 - gd: Show Definition
 - gy: Show Type definition
 - gi: Show implementation
 - gr: Show references
 - K: Show documentation
