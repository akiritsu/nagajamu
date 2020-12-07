---

title: Grep Cheatsheet
---

<table>
  <tr>
    <td>Case insensitive search (with line numbers)</td>
    <td>grep -in pattern file</td>
  </tr>
  <tr>
    <td>Recursively grep for string,in folder</td>
    <td>grep -R pattern folder</td>
  </tr>
  <tr>
    <td>Read search patterns from a file (one per line)</td>
    <td>grep -f pattern_file file</td>
  </tr>
  <tr>
    <td>Find lines NOT containing pattern</td>
    <td>grep -v pattern file</td>
  </tr>
  <tr>
    <td>Find with regular expressions (Find IP add)</td>
    <td>grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" file</td>
  </tr>
</table>
