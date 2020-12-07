---

title:  Emacs Reference
---

| Basic                                          |
|------------------------------------------------|
| Minimize                                       | C\-z                           | Exit Emacs                        | C\-x C\-c       |
| Run command                                    | M\-x                           |                                   |                 |
| File                                           |
| Read a file                                    | C\-x C\-f                      | Save a file                       | C\-x C\-s       |
| Toggle read\-only status                       | C\-x C\-q                      | Save all files                    | C\-x s          |
| Replace this file with\.\.                     | C\-x C\-v                      | Save as\.\.                       | C\-x C\-w       |
| Buffer                                         |
| Switch to buffer\.\.                           | C\-x b                         | List all buffers                  | C\-x C\-b       |
| Insert a file to buffer                        | C\-x i                         | Kill buffer                       | C\-x k          |
| Kill some buffers                              | M\-x kill\-some\-buffers       | Last/Next buffer                  | C\-x ←/→        |
| Minibuffer                                     |
| Auto Complete                                  | TAB                            | Complete and execute              | RET             |
| Fetch previous input                           | M\-p                           | Fetch later input                 | M\-n            |
| Regexp backward/forward search through history | M\-r                           | M\-s                              |
| Abort minibuffer                               | C\-g                           | Redo last command                 | C\-x Esc Esc    |
| Error Recovery                                 |
| Recover file                                   | M\-x recover\-session          | Undo tree                         | C\-x u          |
| Restore buffer                                 | M\-x revert\-buffer            | Undo once                         | C\-/ or C\-\_   |
| Windows                                        |
| Delete all other windows                       | C\-x 1                         | Delete current window             | C\-x 0          |
| Split horizontally                             | C\-x 2                         | Split vertically                  | C\-x 3          |
| Scroll other window                            | C\-M\-v                        | Switch to <a\-z>                  | C\-x o <a\-z>   |
| Switch to <1\-9>                               | M\-<1\-9>                      | Find file in other window         | C\-x 4 f        |
| Open buffer in other window                    | C\-x 4 b                       |                                   |
| Marking                                        |
| Set mark point                                 | C\-@                           | Exchange point and mark           | C\-x C\-x       |
| Mark word by word                              | M\-@                           | Mark paragraph                    | M\-h            |
| Mark page                                      | C\-x C\-p                      | Mark sexp                         | C\-M\-@         |
| Mark function                                  | C\-M\-h                        | Mark entire buffer                | C\-x h          |
| Copy and Paste                                 |
| Cut region to kill ring                        | C\-w                           | Copy region to kill ring          | M\-w            |
| Cut through next char                          | M\-z <char>                    | Paste \(yank back\)               | C\-y            |
| Replace last paste \(yank\) with previous kill | M\-y                           |
| Transpose                                      |
| Transpose characters                           | C\-t                           | Transpose words                   | M\-t            |
| Transpose lines                                | C\-x C\-t                      | Transpose sexps                   | C\-M\-t         |
| Case Change                                    |
| Uppercase word                                 | M\-u                           | Lowercase word                    | M\-l            |
| Capitalize word                                | M\-c                           | Uppercase region                  | C\-x C\-u       |
| Lowercase region                               | C\-x C\-l                      |                                   |
| Cursor Motion                                  | Operation                      |
| Move                                           | Delete                         |
| Amount                                         | Forward                        | Backward                          | Forward         | Backward         |
| Characters                                     | C\-f                           | C\-b                              | C\-d            | DEL              |
| Words                                          | M\-f                           | M\-b                              | M\-d            | M\-DEL           |
| Lines                                          | C\-n                           | C\-p                              | C\-k \(to EOL\) | C\-SPC C\-a C\-w |
| Sentences                                      | M\-e                           | M\-a                              | M\-k            | C\-x DEL         |
| Expressions                                    | C\-M\-f                        | C\-M\-b                           | C\-M\-k         | C\-M\-DEL        |
| Section                                        | C\-M\-a                        | C\-M\-e                           |                 |
| Paragraphs                                     | M\-\}                          | M\-\{                             |
| Screen                                         | M\-v                           | C\-v                              |
| End or Start of                                |
| Line                                           | C\-e                           | C\-a                              |
| Buffer                                         | M\->                           | M\-<                              |
| Defun                                          | C\-M\-a                        | C\-M\-e                           |
| Special Motion                                 |
| Go to line                                     | M\-g g                         |
| Go to Char                                     | M\-g c                         |
| Back to indentation                            | M\-m                           |
| Scroll current line to center/top/bottom       | C\-l                           |
| Search                                         |
| Search forward                                 | C\-s                           | Search backward                   | C\-r            |
| Regexp forward                                 | C\-M\-s                        | Regexp backward                   | C\-M\-r         |
| Replace                                        |
| Start query replace                            | M\-%                           | Query replace word                | C\-u M\-%       |
| Query replace by regexp                        | M\-x query\-replace\-regexp    | Replace once                      | y               |
| Skip once                                      | n                              | Replace all                       | \!              |
| Back up to previous match                      | ^                              | Exit query Replace                | RET             |
| Help                                           |
| Tutorial                                       | C\-h t                         | Search command by word            | C\-h a          |
| Describe bindings                              | C\-h b                         | Describe keys                     | C\-h k          |
| Describe functions                             | C\-h f                         | Find function on keys             | C\-h K          |
| Get mode information                           | C\-h m                         | Describe packages                 | C\-h P          |
| Programming                                    |
| Toggle node                                    | C\-,                           | Comment a region                  | C\-M\-;         |
| Insert comment line                            | M\-;                           | Find next error                   | C\-x '          |
| Start a shell in a window                      | C\-x t                         | Start slime                       | C\-x j          |
| Toggle <xxx>\-mode                             | M\-x <xxx>\-mode               | Compile window                    | M\-x compile    |
| Shell                                          |
| Execute a shell command                        | M\-\!                          | Execute asynchronously            | M\-&            |
| Run command on a region                        | M\-\|                          | filter a region through a command | C\-u M\-\|      |
| Paredit                                        |
| Before                                         | After                          | Key                               |
| \(foo \(bar \|baz\) quux zot\)                 | \(foo \(bar \|baz quux\) zot\) | C\-<right>                        |
| \(foo \(bar \|baz quux\) zot\)                 | \(foo \(bar \|baz\) quux zot\) | C\-<left>                         |
| \(foo bar \(baz\| quux\) zot\)                 | \(foo \(bar baz\| quux\) zot\) | C\-M\-<left>                      |
| \(foo \(bar baz \|quux\) zot\)                 | \(foo bar \(baz \|quux\) zot\) | C\-M\-<right>                     |
| Ediff                                          |
| Start ediff                                    | M\-x ediff                     | Suspend/Quit                      | z/q             |
| Move Around                                    |
| Pervious diff                                  | p or DEL                       | Next diff                         | n or SPC        |
| Jump to diff                                   | j                              | Goto X's point                    | gx              |
| Recenter                                       | C\-l                           | Scroll up/down                    | v/V             |
| Scroll lt/rt                                   | </>                            | Swap Variants                     | ~               |
| Toggle Features                                |
| Vert/Horiz split                               | \|                             | Highlighting                      | h               |
| Auto\-refinement                               | @                              | Ignore whitespaces                | \#\#            |
| Ignore case                                    | \#c                            | Focus/hide regions                | \#f/\#h         |
| read\-only in buf X                            | X                              | wide display                      | m               |
| Manipulate                                     |
| Copy A/B's region to B/A                       | a/b                            | Restore buf X's old diff          | rx              |
| Refine current region                          | \*                             | Update diff regions               | \!              |
| Save buf x                                     | wx                             | Save diff output                  | wd              |
| System                                         |
| Show registry                                  | R                              | Diff output                       | D               |
| Status information                             | i                              | Compare regions                   | =               |
