---
title: "Emacs Tricks and Reference Card"
categories: OTH
tags: Emacs
date: 2015-3-15
---



## Tricks

1. M-x eww 浏览网页
2. M-x dictionary-word 和 dictionary-mode 查词，不过不好用
3. M-x flyspell-mode 用flyspell前端配合Aspell做拼写检查
4. auto-complete 自动补全
5. M-x slime cl的REPL等
6. M-x run-scheme scheme的REPL等，包括F1自动运行本文件中的代码 
7. [高级 Emacs 文本操作](http://www.ibm.com/developerworks/cn/education/aix/au-emacs3/index.html#resources) 
8. M-x ediff比较文件
9. magit使用git
10. hs-minor-mode折叠代码
11. ido 在minibuffer区的候选列表 C-r 上一个 C-s 下一个 
12. 修改过的 .emacs 文件马上生效, 可以用 M-x eval-current-buffer

## Introduction


<a href="https://github.com/akiritsu/MY-EMACS-CONF/archive/master.zip">Click here to download my emacs configuration.</a>

## Features

* Multi-language support, multi-platform

* Handy splited window control (C-x o a\~z; M-1\~9)

* Friendly to new emacsers, customizable, productive

* Integrated with many useful developing tools (magit, slime, etc.)

* Magical theme the matrix

## Future Features

* Completely integrate Haskell, Scheme, Common Lisp, Erlang developing tool chains

* Emacs CheatSheet

## Supported Language

* Ruby / Clojure / Python / Haskell 

* Erlang / Lisp / Mozart Oz / Coq

* Js / Coffeescript / PHP / Html

* CSS / LESS / SASS / SCSS

* HAML / Markdown / Textile / ERB

## Change Log

* 2017-8-14, v0.9.9: Supporting Proof General, Mozart Oz

* 2017-7-31, v0.1.1: New theme The Matrix

* 2017-7-16, v0.1.1: Supporting windows-numbering.el.

* 2017-7-15, v0.1: Mix serval configuration with Purcell's .emacs.d.

## Prerequisites

1. When programming with Haskell, you need to install Haskell syntax checking tool Stack (and GHC 8.0.2 +). Run:

```shell

# Install Stack

wget -qO- https://get.haskellstack.org/ | sh

# Install Haskell

stack setup --install-ghc

```
This GHC will not replace former versions.

Warning : Lacking of Stack will cause Emacs fail to respond for seconds when editing .hs files.

2. Proof-general for Coq (or others).


Proof-general is already exists in "~/.emacs.d/site-lisp/". You should indicate the Coq path on Windows.

3. Mozart-Oz. You can find Mozart-Oz on its <a href="https://mozart.github.io/mozart-v1/doc-1.4.0/install/index.html">Official Website</a>.

If you are installing an rpm package (only i386 version is avaliable), you need to convert it to amd64 version.

After installation, you can weak up Mozart Oz by:

```elisp
M-x run-oz
```

Or change current mode to oz-mode by:

```elisp
M-x oz-mode
```

## Cheatsheets

<!--
    Basic & File & Buffer & Minibuffer & Windows
    Edit & Marking & Transpose & Case
    Motion
    Search & Replace
    Help
    Programming
    Ediff
    Org-mode
    For-schemers
  -->
<!-- Basic & File & Buffer -->

<table> <!--  -->
  <tr>
    <td colspan="4"><span style="font-weight:bold">Basic</span></td>
  </tr>
  <tr>
    <td>Minimize </td>
    <td>C-z</td>
    <td>Exit Emacs</td>
    <td>C-x C-c</td>
  </tr>
  <tr>
    <td>Run command</td>
    <td>M-x</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">File</span></td>
  </tr>
  <tr>
    <td>Read a file</td>
    <td>C-x C-f</td>
    <td>Save a file</td>
    <td>C-x C-s</td>
  </tr>
  <tr>
    <td>Toggle read-only status</td>
    <td>C-x C-q</td>
    <td>Save all files</td>
    <td>C-x s</td>
  </tr>
  <tr>
    <td>Replace this file with..</td>
    <td>C-x C-v</td>
    <td>Save as..</td>
    <td>C-x C-w</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Buffer</span></td>
  </tr>
  <tr>
    <td>Switch to buffer..</td>
    <td>C-x b</td>
    <td>List all buffers</td>
    <td>C-x C-b</td>
  </tr>
  <tr>
    <td>Insert a file to buffer</td>
    <td>C-x i</td>
    <td>Kill buffer</td>
    <td>C-x k</td>
  </tr>
  <tr>
    <td>Kill some buffers</td>
    <td>M-x kill-some-buffers</td>
    <td>Last/Next buffer</td>
    <td>C-x ←/→</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Minibuffer</span></td>
  </tr>
  <tr>
    <td>Auto Complete</td>
    <td>TAB</td>
    <td>Complete and execute</td>
    <td>RET</td>
  </tr>
  <tr>
    <td>Fetch previous input</td>
    <td>M-p</td>
    <td>Fetch later input</td>
    <td>M-n</td>
  </tr>
  <tr>
    <td colspan="2">Regexp backward/forward search through history</td>
    <td>M-r</td>
    <td>M-s</td>
  </tr>
  <tr>
    <td>Abort minibuffer</td>
    <td>C-g</td>
    <td>Redo last command</td>
    <td>C-x Esc Esc</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Error Recovery</span></td>
  </tr>
  <tr>
    <td>Recover file</td>
    <td>M-x recover-session</td>
    <td>Undo tree</td>
    <td>C-x u</td>
  </tr>
  <tr>
    <td>Restore buffer</td>
    <td>M-x revert-buffer</td>
    <td>Undo once</td>
    <td>C-/ or C-_</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Windows</span></td>
  </tr>
  <tr>
    <td>Delete all other windows</td>
    <td>C-x 1</td>
    <td>Delete current window</td>
    <td>C-x 0</td>
  </tr>
  <tr>
    <td>Split horizontally</td>
    <td>C-x 2</td>
    <td>Split vertically</td>
    <td>C-x 3</td>
  </tr>
  <tr>
    <td>Scroll other window</td>
    <td>C-M-v</td>
    <td>Switch to &lt;a-z&gt;</td>
    <td>C-x o &lt;a-z&gt;</td>
  </tr>
  <tr>
    <td>Switch to &lt;1-9&gt;</td>
    <td>M-&lt;1-9&gt;</td>
    <td>Find file in other window</td>
    <td>C-x 4 f</td>
  </tr>
  <tr>
    <td>Open buffer in other window</td>
    <td>C-x 4 b</td>
    <td colspan="2"></td>
  </tr>
</table>

<!-- Editing & Marking -->

<table>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Marking</span></td>
  </tr>
  <tr>
    <td>Set mark point</td>
    <td>C-@</td>
    <td>Exchange point and mark</td>
    <td>C-x C-x</td>
  </tr>
  <tr>
    <td>Mark word by word</td>
    <td>M-@</td>
    <td>Mark paragraph</td>
    <td>M-h</td>
  </tr>
  <tr>
    <td>Mark page</td>
    <td>C-x C-p</td>
    <td>Mark sexp</td>
    <td>C-M-@</td>
  </tr>
  <tr>
    <td>Mark function</td>
    <td>C-M-h</td>
    <td>Mark entire buffer</td>
    <td>C-x h</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Copy and Paste</span></td>
  </tr>
  <tr>
    <td>Cut region to kill ring</td>
    <td>C-w</td>
    <td>Copy region to kill ring</td>
    <td>M-w</td>
  </tr>
  <tr>
    <td>Cut through next char</td>
    <td>M-z &lt;char&gt;</td>
    <td>Paste (yank back)</td>
    <td>C-y</td>
  </tr>
  <tr>
    <td colspan="3">Replace last paste (yank) with previous kill</td>
    <td>M-y</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Transpose</span></td>
  </tr>
  <tr>
    <td>Transpose characters</td>
    <td>C-t</td>
    <td>Transpose words</td>
    <td>M-t</td>
  </tr>
  <tr>
    <td>Transpose lines</td>
    <td>C-x C-t</td>
    <td>Transpose sexps</td>
    <td>C-M-t</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Case Change</span></td>
  </tr>
  <tr>
    <td>Uppercase word</td>
    <td>M-u</td>
    <td>Lowercase word</td>
    <td>M-l</td>
  </tr>
  <tr>
    <td>Capitalize word</td>
    <td>M-c</td>
    <td>Uppercase region</td>
    <td>C-x C-u</td>
  </tr>
  <tr>
    <td>Lowercase region </td>
    <td>C-x C-l</td>
    <td colspan="2"></td>
  </tr>
</table>

<!-- Motion -->

<table>
  <tr>
    <th rowspan="2">Cursor Motion<br></th>
    <td colspan="4"><span style="font-weight:bold">Operation</span></td>
  </tr>
  <tr>
    <td colspan="2">Move</td>
    <td colspan="2">Delete</td>
  </tr>
  <tr>
    <td>Amount</td>
    <td>Forward</td>
    <td><span style="font-weight:bold">B</span>ackward</td>
    <td>Forward</td>
    <td><span style="font-weight:bold">B</span>ackward</td>
  </tr>
  <tr>
    <td>Characters</td>
    <td>C-f</td>
    <td>C-b</td>
    <td>C-d</td>
    <td>DEL</td>
  </tr>
  <tr>
    <td>Words</td>
    <td>M-f</td>
    <td>M-b</td>
    <td>M-d</td>
    <td>M-DEL</td>
  </tr>
  <tr>
    <td>Lines</td>
    <td>C-n</td>
    <td>C-p</td>
    <td>C-k (to EOL)</td>
    <td>C-SPC C-a C-w</td>
  </tr>
  <tr>
    <td>Sentences</td>
    <td>M-e</td>
    <td>M-a</td>
    <td>M-k</td>
    <td>C-x DEL</td>
  </tr>
  <tr>
    <td>Expressions</td>
    <td>C-M-f</td>
    <td>C-M-b</td>
    <td>C-M-k</td>
    <td>C-M-DEL</td>
  </tr>
  <tr>
    <td>Section</td>
    <td>C-M-a</td>
    <td>C-M-e</td>
    <td colspan="2" rowspan="3"></td>
  </tr>
  <tr>
    <td>Paragraphs</td>
    <td>M-}</td>
    <td>M-{</td>
  </tr>
  <tr>
    <td>Screen</td>
    <td>M-v</td>
    <td>C-v</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">End or Start of</span></td>
  </tr>
  <tr>
    <td>Line</td>
    <td colspan="2">C-e</td>
    <td colspan="2">C-a</td>
  </tr>
  <tr>
    <td>Buffer</td>
    <td colspan="2">M-&gt;</td>
    <td colspan="2">M-&lt;</td>
  </tr>
  <tr>
    <td>Defun</td>
    <td colspan="2">C-M-a</td>
    <td colspan="2">C-M-e</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Special Motion</span></td>
  </tr>
  <tr>
    <td colspan="3">Go to line</td>
    <td colspan="2">M-g g</td>
  </tr>
  <tr>
    <td colspan="3">Go to Char</td>
    <td colspan="2">M-g c</td>
  </tr>
  <tr>
    <td colspan="3">Back to indentation</td>
    <td colspan="2">M-m</td>
  </tr>
  <tr>
    <td colspan="3">Scroll current line to center/top/bottom</td>
    <td colspan="2">C-l</td>
  </tr>
</table>
<!-- Search & Replace -->

<table>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Search</span></td>
  </tr>
  <tr>
    <td>Search forward</td>
    <td>C-s</td>
    <td>Search backward</td>
    <td>C-r</td>
  </tr>
  <tr>
    <td>Regexp forward</td>
    <td>C-M-s</td>
    <td>Regexp backward</td>
    <td>C-M-r</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Replace</span></td>
  </tr>
  <tr>
    <td>Start query replace</td>
    <td>M-%</td>
    <td>Query replace word</td>
    <td>C-u M-%</td>
  </tr>
  <tr>
    <td>Query replace by regexp</td>
    <td>M-x query-replace-regexp</td>
    <td>Replace once</td>
    <td>y</td>
  </tr>
  <tr>
    <td>Skip once </td>
    <td>n</td>
    <td>Replace all</td>
    <td>!</td>
  </tr>
  <tr>
    <td>Back up to previous match</td>
    <td>^</td>
    <td>Exit query Replace</td>
    <td>RET</td>
  </tr>
</table>

<!--  Help -->

<table>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Help</span></td>
  </tr>
  <tr>
    <td>Tutorial</td>
    <td>C-h t</td>
    <td>Search command by word</td>
    <td>C-h a</td>
  </tr>
  <tr>
    <td>Describe bindings</td>
    <td>C-h b</td>
    <td>Describe keys</td>
    <td>C-h k</td>
  </tr>
  <tr>
    <td>Describe functions</td>
    <td>C-h f</td>
    <td>Find function on keys</td>
    <td>C-h K</td>
  </tr>
  <tr>
    <td>Get mode information</td>
    <td>C-h m</td>
    <td>Describe packages</td>
    <td>C-h P</td>
  </tr>
</table>

<!-- Programming -->

<table>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Programming</span></td>
  </tr>
  <tr>
    <td>Toggle node</td>
    <td>C-,</td>
    <td>Comment a region</td>
    <td>C-M-;</td>
  </tr>
  <tr>
    <td>Insert comment line</td>
    <td>M-;</td>
    <td>Find next error</td>
    <td>C-x '</td>
  </tr>
  <tr>
    <td>Start a shell in a window</td>
    <td>C-x t</td>
    <td>Start slime</td>
    <td>C-x j</td>
  </tr>
  <tr>
    <td>Toggle &lt;xxx&gt;-mode</td>
    <td>M-x &lt;xxx&gt;-mode</td>
    <td>Compile window</td>
    <td>M-x compile</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Shell</span></td>
  </tr>
  <tr>
    <td>Execute a shell command</td>
    <td>M-!</td>
    <td>Execute asynchronously</td>
    <td>M-&amp;</td>
  </tr>
  <tr>
    <td>Run command on a region</td>
    <td>M-|</td>
    <td>filter a region through a command</td>
    <td>C-u M-|</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Paredit</span></td>
  </tr>
  <tr>
    <td colspan="2">Before</td>
    <td>After</td>
    <td>Key</td>
  </tr>
  <tr>
    <td colspan="2">(foo (bar |baz) quux zot)</td>
    <td>(foo (bar |baz quux) zot)</td>
    <td>C-&lt;right&gt;</td>
  </tr>
  <tr>
    <td colspan="2">(foo (bar |baz quux) zot)</td>
    <td>(foo (bar |baz) quux zot)</td>
    <td>C-&lt;left&gt;</td>
  </tr>
  <tr>
    <td colspan="2">(foo bar (baz| quux) zot)</td>
    <td>(foo (bar baz| quux) zot)</td>
    <td>C-M-&lt;left&gt;</td>
  </tr>
  <tr>
    <td colspan="2">(foo (bar baz |quux) zot)</td>
    <td>(foo bar (baz |quux) zot)</td>
    <td>C-M-&lt;right&gt;</td>
  </tr>
</table>

<!-- Ediff -->

<table>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Ediff</span></td>
  </tr>
  <tr>
    <td>Start ediff</td>
    <td>M-x ediff</td>
    <td>Suspend/Quit</td>
    <td>z/q</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Move Around</span></td>
  </tr>
  <tr>
    <td>Pervious diff</td>
    <td>p or DEL</td>
    <td>Next diff</td>
    <td>n or SPC</td>
  </tr>
  <tr>
    <td>Jump to diff</td>
    <td>j</td>
    <td>Goto X's point</td>
    <td>gx</td>
  </tr>
  <tr>
    <td>Recenter</td>
    <td>C-l</td>
    <td>Scroll up/down</td>
    <td>v/V</td>
  </tr>
  <tr>
    <td>Scroll lt/rt</td>
    <td>&lt;/&gt;</td>
    <td>Swap Variants</td>
    <td>~</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Toggle Features</span></td>
  </tr>
  <tr>
    <td>Vert/Horiz split</td>
    <td>|</td>
    <td>Highlighting</td>
    <td>h</td>
  </tr>
  <tr>
    <td>Auto-refinement</td>
    <td>@</td>
    <td>Ignore whitespaces</td>
    <td>##</td>
  </tr>
  <tr>
    <td>Ignore case</td>
    <td>#c</td>
    <td>Focus/hide regions</td>
    <td>#f/#h</td>
  </tr>
  <tr>
    <td>read-only in buf X</td>
    <td>X</td>
    <td>wide display</td>
    <td>m</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">Manipulate</span><br></td>
  </tr>
  <tr>
    <td>Copy A/B's region to B/A</td>
    <td>a/b</td>
    <td>Restore buf X's old diff</td>
    <td>rx</td>
  </tr>
  <tr>
    <td>Refine current region</td>
    <td>*</td>
    <td>Update diff regions</td>
    <td>!</td>
  </tr>
  <tr>
    <td>Save buf x</td>
    <td>wx</td>
    <td>Save diff output</td>
    <td>wd</td>
  </tr>
  <tr>
    <td colspan="4"><span style="font-weight:bold">System</span></td>
  </tr>
  <tr>
    <td>Show registry</td>
    <td>R</td>
    <td>Diff output</td>
    <td>D</td>
  </tr>
  <tr>
    <td>Status information</td>
    <td>i</td>
    <td>Compare regions</td>
    <td>=</td>
  </tr>
</table>


<!-- Todo: Org-Mode, For Schemers -->




## Mode Guide

<table><tr><th>Mode Name</th><th>In basic mode？</th><th>Official Intro</th></tr><tr><td>Anzu</td><td></td><td>minor-mode which display search information in mode-line.</td></tr><tr><td>Async-Bytecomp-Package</td><td></td><td>Async-Bytecomp-Package minor mode (no indicator):Byte compile asynchronously异步的 packages installed with package.el.Async compilation of packages can be controlled by‘async-bytecomp-allowed-packages’.</td></tr><tr><td>Auto-Compile</td><td></td><td></td></tr><tr><td>Auto-Compile-On-Load</td><td></td><td>Before loading a library recompile it if it needs recompilation.A library needs to be recompiled if the source file is newer thanit’s byte-compile destination.&nbsp;&nbsp;Without this advice the outdatedbyte code file would be loaded instead.</td></tr><tr><td>Auto-Compile-On-Save</td><td></td><td>Toggle Auto-Compile mode in all buffers.With prefix ARG, enable Auto-Compile-On-Save mode if ARG is positive;otherwise, disable it.&nbsp;&nbsp;If called from Lisp, enable the mode ifARG is omitted or nil.Auto-Compile mode is enabled in all buffers where‘turn-on-auto-compile-mode’ would do it.See ‘auto-compile-mode’ for more information on Auto-Compile mode.</td></tr><tr><td>Auto-Composition</td><td>fundamental</td><td> Toggle Auto Composition mode.With a prefix argument ARG, enable Auto Composition mode if ARGis positive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp,enable the mode if ARG is omitted or nil.When Auto Composition mode is enabled, text characters areautomatically composed by functions registered in‘composition-function-table’.You can use ‘global-auto-composition-mode’ to turn onAuto Composition mode in all buffers (this is the default).</td></tr><tr><td>Auto-Compression</td><td>fundamental</td><td> Toggle Auto Compression mode.With a prefix argument ARG, enable Auto Compression mode if ARGis positive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp,enable the mode if ARG is omitted or nil.Auto Compression mode is a global minor mode.&nbsp;&nbsp;When enabled,compressed files are automatically uncompressed for reading, andcompressed when writing.</td></tr><tr><td>Auto-Encryption</td><td>fundamental</td><td> Toggle automatic file encryption/decryption (Auto Encryption mode).With a prefix argument ARG, enable Auto Encryption mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enablethe mode if ARG is omitted or nil.(fn &amp;optional ARG)</td></tr><tr><td>Auto-Revert</td><td></td><td></td></tr><tr><td>Blink-Cursor</td><td></td><td>Toggle cursor blinking (Blink Cursor mode).With a prefix argument ARG, enable Blink Cursor mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enablethe mode if ARG is omitted or nil.If the value of ‘blink-cursor-blinks’ is positive (10 by default),the cursor stops blinking after that number of blinks, if Emacsgets no input during that time.See also ‘blink-cursor-interval’ and ‘blink-cursor-delay’.This command is effective only on graphical frames.&nbsp;&nbsp;On text-onlyterminals, cursor blinking is controlled by the terminal.(fn &amp;optional ARG)</td></tr><tr><td>Bug-Reference-Prog</td><td></td><td></td></tr><tr><td>Column-Number</td><td></td><td> Toggle column number display in the mode line (Column Number mode).With a prefix argument ARG, enable Column Number mode if ARG ispositive, and disable it otherwise.If called from Lisp, enable the mode if ARG is omitted or nil.(fn &amp;optional ARG)</td></tr><tr><td>Company</td><td></td><td> "complete anything"; is an in-buffer completion framework.Completion starts automatically, depending on the values‘company-idle-delay’ and ‘company-minimum-prefix-length’.Completion can be controlled with the commands:‘company-complete-common’, ‘company-complete-selection’, ‘company-complete’,‘company-select-next’, ‘company-select-previous’.&nbsp;&nbsp;If these commands arecalled before ‘company-idle-delay’, completion will also start.Completions can be searched with ‘company-search-candidates’ or‘company-filter-candidates’.&nbsp;&nbsp;These can be used while completion isinactive, as well.The completion data is retrieved using ‘company-backends’ and displayedusing ‘company-frontends’.&nbsp;&nbsp;If you want to start a specific backend, callit interactively or use ‘company-begin-backend’.By default, the completions list is sorted alphabetically, unless thebackend chooses otherwise, or ‘company-transformers’ changes it later.regular keymap (‘company-mode-map’):key&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binding---&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-------ESC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandM-/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-completekeymap during active completions (‘company-active-map’):key&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binding---&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-------C-g&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-abortC-h&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-show-doc-bufferTAB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-complete-commonRET&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-complete-selectionC-n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-select-nextC-p&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-select-previousC-s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-search-candidatesC-w&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-show-locationESC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix Command&lt;down&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-select-next-or-abort&lt;down-mouse-1&gt;&nbsp;&nbsp;ignore&lt;down-mouse-3&gt;&nbsp;&nbsp;ignore&lt;f1&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-show-doc-buffer&lt;mouse-1&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-complete-mouse&lt;mouse-3&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-select-mouse&lt;remap&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix Command&lt;return&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-complete-selection&lt;tab&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-complete-common&lt;up&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-select-previous-or-abort&lt;up-mouse-1&gt;&nbsp;&nbsp;&nbsp;&nbsp;ignore&lt;up-mouse-3&gt;&nbsp;&nbsp;&nbsp;&nbsp;ignore&lt;remap&gt; &lt;scroll-down-command&gt;&nbsp;&nbsp;&nbsp;company-previous-page&lt;remap&gt; &lt;scroll-up-command&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-next-pageC-M-s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-filter-candidatesESC ESC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandM-/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-select-nextM-0 .. M-9&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-complete-numberM-n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-select-nextM-p&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-select-previousM-ESC ESC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;company-abort(fn &amp;optional ARG)</td></tr><tr><td>Company-Quickhelp</td><td></td><td> Toggle Company-Quickhelp-Local mode in all buffers.With prefix ARG, enable Company-Quickhelp mode if ARG is positive;otherwise, disable it.&nbsp;&nbsp;If called from Lisp, enable the mode ifARG is omitted or nil.Company-Quickhelp-Local mode is enabled in all buffers where‘company-quickhelp-local-mode’ would do it.See ‘company-quickhelp-local-mode’ for more information on Company-Quickhelp-Local mode.</td></tr><tr><td>Company-Quickhelp-Local</td><td></td><td> Provides documentation popups for ‘company-mode’ using ‘pos-tip’.</td></tr><tr><td></td><td></td><td></td></tr><tr><td>Counsel</td><td></td><td> Toggle Counsel mode on or off.Turn Counsel mode on if ARG is positive, off otherwise. Counselmode remaps built-in emacs functions that have counselreplacements. </td></tr><tr><td>Cua</td><td></td><td> Toggle Common User Access style editing (CUA mode).With a prefix argument ARG, enable CUA mode if ARG is positive,and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enable the modeif ARG is omitted or nil.CUA mode is a global minor mode.&nbsp;&nbsp;When enabled, typed textreplaces the active selection, and you can use C-z, C-x, C-c, andC-v to undo, cut, copy, and paste in addition to the normal Emacsbindings.&nbsp;&nbsp;The C-x and C-c keys only do cut and copy when theregion is active, so in most cases, they do not conflict with thenormal function of these prefix keys.If you really need to perform a command which starts with one ofthe prefix keys even when the region is active, you have threeoptions:- press the prefix key twice very quickly (within 0.2 seconds),- press the prefix key and the following key within 0.2 seconds, or- use the SHIFT key with the prefix key, i.e. C-S-x or C-S-c.You can customize ‘cua-enable-cua-keys’ to completely disable theCUA bindings, or ‘cua-prefix-override-inhibit-delay’ to changethe prefix fallback behavior.</td></tr><tr><td>Delete-Selection</td><td></td><td> Toggle Delete Selection mode.With a prefix argument ARG, enable Delete Selection mode if ARGis positive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp,enable the mode if ARG is omitted or nil.When Delete Selection mode is enabled, typed text replaces the selectionif the selection is active.&nbsp;&nbsp;Otherwise, typed text is just inserted atpoint regardless of any selection.&nbsp;&nbsp;Also, commands that normally deletejust one character will delete the entire selection instead.See ‘delete-selection-helper’ and ‘delete-selection-pre-hook’ forinformation on adapting behavior of commands in Delete Selection mode.(fn &amp;optional ARG)</td></tr><tr><td>Desktop-Save</td><td></td><td> Toggle desktop saving (Desktop Save mode).With a prefix argument ARG, enable Desktop Save mode if ARG is positive,and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enable the mode if ARGis omitted or nil.When Desktop Save mode is enabled, the state of Emacs is saved fromone session to another.&nbsp;&nbsp;In particular, Emacs will save the desktop whenit exits (this may prompt you; see the option ‘desktop-save’).&nbsp;&nbsp;The nexttime Emacs starts, if this mode is active it will restore the desktop.To manually save the desktop at any time, use the command ‘M-x desktop-save’.To load it, use ‘M-x desktop-read’.Once a desktop file exists, Emacs will auto-save it according to theoption ‘desktop-auto-save-timeout’.To see all the options you can set, browse the ‘desktop’ customization group.For further details, see info node ‘(emacs)Saving Emacs Sessions’.</td></tr><tr><td>Diff-Auto-Refine</td><td></td><td> Toggle automatic diff hunk highlighting (Diff Auto Refine mode).With a prefix argument ARG, enable Diff Auto Refine mode if ARGis positive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp,enable the mode if ARG is omitted or nil.Diff Auto Refine mode is a buffer-local minor mode used with‘diff-mode’.&nbsp;&nbsp;When enabled, Emacs automatically highlightschanges in detail as the user visits hunks.&nbsp;&nbsp;When transitioningfrom disabled to enabled, it tries to refine the current hunk, aswell.</td></tr><tr><td>Diff-Hl</td><td></td><td></td></tr><tr><td>Electric-Indent</td><td>fundamental</td><td> Toggle on-the-fly reindentation (Electric Indent mode).With a prefix argument ARG, enable Electric Indent mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enablethe mode if ARG is omitted or nil.When enabled, this reindents whenever the hook ‘electric-indent-functions’returns non-nil, or if you insert a character from ‘electric-indent-chars’.This is a global minor mode.&nbsp;&nbsp;To toggle the mode in a single buffer,use ‘electric-indent-local-mode’.</td></tr><tr><td>Electric-Pair</td><td></td><td> Toggle automatic parens pairing (Electric Pair mode).With a prefix argument ARG, enable Electric Pair mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enablethe mode if ARG is omitted or nil.Electric Pair mode is a global minor mode.&nbsp;&nbsp;When enabled, typingan open parenthesis automatically inserts the correspondingclosing parenthesis.&nbsp;&nbsp;(Likewise for brackets, etc.). To togglethe mode in a single buffer, use ‘electric-pair-local-mode’.</td></tr><tr><td>File-Name-Shadow</td><td>fundamental</td><td>Toggle file-name shadowing in minibuffers (File-Name Shadow mode).With a prefix argument ARG, enable File-Name Shadow mode if ARGis positive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp,enable the mode if ARG is omitted or nil.File-Name Shadow mode is a global minor mode.&nbsp;&nbsp;When enabled, anypart of a filename being read in the minibuffer that would beignored (because the result is passed through‘substitute-in-file-name’) is given the properties in‘file-name-shadow-properties’, which can be used to make thatportion dim, invisible, or otherwise less visually noticeable..</td></tr><tr><td>Flycheck</td><td></td><td></td></tr><tr><td>Flycheck-Color-Mode-Line</td><td></td><td></td></tr><tr><td>Font-Lock</td><td>fundamental</td><td>Toggle syntax highlighting in this buffer (Font Lock mode).With a prefix argument ARG, enable Font Lock mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enablethe mode if ARG is omitted or nil.When Font Lock mode is enabled, text is fontified as you type it: - Comments are displayed in ‘font-lock-comment-face’; - Strings are displayed in ‘font-lock-string-face’; - Certain other expressions are displayed in other faces&nbsp;&nbsp;&nbsp;according to the value of the variable ‘font-lock-keywords’.To customize the faces (colors, fonts, etc.) used by Font Lock forfontifying different parts of buffer text, use M-x customize-face.You can enable Font Lock mode in any major mode automatically byturning on in the major mode’s hook.&nbsp;&nbsp;For example, put in your~/.emacs: (add-hook 'c-mode-hook 'turn-on-font-lock)Alternatively, you can use Global Font Lock mode to automagicallyturn on Font Lock mode in buffers whose major mode supports itand whose major mode is one of ‘font-lock-global-modes’.&nbsp;&nbsp;Forexample, put in your ~/.emacs: (global-font-lock-mode t)Where major modes support different levels of fontification, youcan use the variable ‘font-lock-maximum-decoration’ to specifywhich level you generally prefer.&nbsp;&nbsp;When you turn Font Lock modeon/off the buffer is fontified/defontified, though fontificationoccurs only if the buffer is less than ‘font-lock-maximum-size’.To add your own highlighting for some major mode, and modify thehighlighting selected automatically via the variable‘font-lock-maximum-decoration’, you can use‘font-lock-add-keywords’.To fontify a buffer, without turning on Font Lock mode andregardless of buffer size, you can use M-x font-lock-fontify-buffer.To fontify a block (the function or paragraph containing point,or a number of lines around point), perhaps because modificationon the current line caused syntactic change on other lines, youcan use M-o M-o.You can set your own default settings for some mode, by setting abuffer local value for ‘font-lock-defaults’, via its mode hook.The above is the default behavior of ‘font-lock-mode’; you mayspecify your own function which is called when ‘font-lock-mode’is toggled via ‘font-lock-function’. </td></tr><tr><td>Global-Anzu</td><td></td><td> Toggle Anzu mode in all buffers.With prefix ARG, enable Global Anzu mode if ARG is positive;otherwise, disable it.&nbsp;&nbsp;If called from Lisp, enable the mode ifARG is omitted or nil.Anzu mode is enabled in all buffers where‘anzu--turn-on’ would do it.See ‘anzu-mode’ for more information on Anzu mode.</td></tr><tr><td>Global-Auto-Revert</td><td></td><td> Toggle Global Auto Revert mode.With a prefix argument ARG, enable Global Auto Revert mode if ARGis positive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp,enable the mode if ARG is omitted or nil.Global Auto Revert mode is a global minor mode that reverts anybuffer associated with a file when the file changes on disk.&nbsp;&nbsp;Use‘auto-revert-mode’ to revert a particular buffer.If ‘global-auto-revert-non-file-buffers’ is non-nil, this modemay also revert some non-file buffers, as described in thedocumentation of that variable.&nbsp;&nbsp;It ignores buffers with modesmatching ‘global-auto-revert-ignore-modes’, and buffers with anon-nil vale of ‘global-auto-revert-ignore-buffer’.When a buffer is reverted, a message is generated.&nbsp;&nbsp;This can besuppressed by setting ‘auto-revert-verbose’ to nil.This function calls the hook ‘global-auto-revert-mode-hook’.It displays the text that ‘global-auto-revert-mode-text’specifies in the mode line.</td></tr><tr><td>Global-Company</td><td></td><td> Toggle Company mode in all buffers.With prefix ARG, enable Global Company mode if ARG is positive;otherwise, disable it.&nbsp;&nbsp;If called from Lisp, enable the mode ifARG is omitted or nil.Company mode is enabled in all buffers where‘company-mode-on’ would do it.See ‘company-mode’ for more information on Company mode.</td></tr><tr><td>Global-Eldoc</td><td></td><td> Toggle Global Eldoc mode on or off.With a prefix argument ARG, enable Global Eldoc mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enablethe mode if ARG is omitted or nil, and toggle it if ARG is ‘toggle’.If Global Eldoc mode is on, ‘eldoc-mode’ will be enabled in allbuffers where it’s applicable.&nbsp;&nbsp;These are buffers that have modesthat have enabled eldoc support.&nbsp;&nbsp;See ‘eldoc-documentation-function’.</td></tr><tr><td>Global-Flycheck</td><td></td><td> Toggle Flycheck mode in all buffers.With prefix ARG, enable Global Flycheck mode if ARG is positive;otherwise, disable it.&nbsp;&nbsp;If called from Lisp, enable the mode ifARG is omitted or nil.Flycheck mode is enabled in all buffers where‘flycheck-mode-on-safe’ would do it.See ‘flycheck-mode’ for more information on Flycheck mode.</td></tr><tr><td>Global-Font-Lock</td><td>fundamental</td><td>Toggle Font-Lock mode in all buffers.With prefix ARG, enable Global Font-Lock mode if ARG is positive;otherwise, disable it.&nbsp;&nbsp;If called from Lisp, enable the mode ifARG is omitted or nil.Font-Lock mode is enabled in all buffers where‘turn-on-font-lock-if-desired’ would do it.See ‘font-lock-mode’ for more information on Font-Lock mode.</td></tr><tr><td>Global-Git-Commit</td><td></td><td>Edit Git commit messages.This global mode arranges for ‘git-commit-setup’ to be calledwhen a Git commit message file is opened.&nbsp;&nbsp;That usually happenswhen Git uses the Emacsclient as $GIT_EDITOR to have the userprovide such a commit message.</td></tr><tr><td>Global-Page-Break-Lines</td><td></td><td> Toggle Page-Break-Lines mode in all buffers.With prefix ARG, enable Global Page-Break-Lines mode if ARG is positive;otherwise, disable it.&nbsp;&nbsp;If called from Lisp, enable the mode ifARG is omitted or nil.Page-Break-Lines mode is enabled in all buffers where‘page-break-lines-mode-maybe’ would do it.See ‘page-break-lines-mode’ for more information on Page-Break-Lines mode.</td></tr><tr><td>Global-Prettify-Symbols</td><td></td><td> Toggle Prettify-Symbols mode in all buffers.With prefix ARG, enable Global Prettify-Symbols mode if ARG is positive;otherwise, disable it.&nbsp;&nbsp;If called from Lisp, enable the mode ifARG is omitted or nil.Prettify-Symbols mode is enabled in all buffers where‘turn-on-prettify-symbols-mode’ would do it.See ‘prettify-symbols-mode’ for more information on Prettify-Symbols mode.</td></tr><tr><td>Global-Rinari</td><td></td><td> Toggle Rinari minor mode in all buffers.With prefix ARG, enable Global Rinari mode if ARG is positive;otherwise, disable it.&nbsp;&nbsp;If called from Lisp, enable the mode ifARG is omitted or nil.Rinari minor mode is enabled in all buffers where‘rinari-launch-maybe’ would do it.See ‘rinari-minor-mode’ for more information on Rinari minor mode.</td></tr><tr><td>Global-Undo-Tree</td><td></td><td>Toggle Undo-Tree mode in all buffers.With prefix ARG, enable Global Undo-Tree mode if ARG is positive;otherwise, disable it.&nbsp;&nbsp;If called from Lisp, enable the mode ifARG is omitted or nil.Undo-Tree mode is enabled in all buffers where‘turn-on-undo-tree-mode’ would do it.See ‘undo-tree-mode’ for more information on Undo-Tree mode.</td></tr><tr><td>Global-Whitespace-Cleanup</td><td></td><td>Toggle Whitespace-Cleanup mode in all buffers.With prefix ARG, enable Global Whitespace-Cleanup mode if ARG is positive;otherwise, disable it.&nbsp;&nbsp;If called from Lisp, enable the mode ifARG is omitted or nil.Whitespace-Cleanup mode is enabled in all buffers where‘turn-on-whitespace-cleanup-mode’ would do it.See ‘whitespace-cleanup-mode’ for more information on Whitespace-Cleanup mode.</td></tr><tr><td>Goto-Address-Prog</td><td></td><td></td></tr><tr><td>Guide-Key</td><td></td><td>Toggle guide key mode.In guide key mode, Guide following keys to an input key sequenceautomatically and dynamically.With a prefix argument ARG, enable guide key mode if ARG ispositive, otherwise disable.</td></tr><tr><td>Hes</td><td></td><td>Toggle highlighting of escape sequences.(fn &amp;optional ARG)</td></tr><tr><td>Historian</td><td></td><td>historian minor mode</td></tr><tr><td>Immortal-Scratch</td><td></td><td>When the scratch buffer is killed, immediately respawn it.(fn &amp;optional ARG)</td></tr><tr><td>Indent-Guide</td><td></td><td></td></tr><tr><td>Intero-Global</td><td></td><td></td></tr><tr><td>Ipretty</td><td></td><td>Toggle ipretty mode globally.&nbsp;&nbsp;&nbsp;With no argument, this command toggles the mode.&nbsp;&nbsp;&nbsp;Non-null prefix argument turns on the mode.&nbsp;&nbsp;&nbsp;Null prefix argument turns off the mode.</td></tr><tr><td>Ivy</td><td></td><td>Toggle Ivy mode on or off.Turn Ivy mode on if ARG is positive, off otherwise.Turning on Ivy mode sets ‘completing-read-function’ to‘ivy-completing-read’.Global bindings:key&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binding---&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-------ESC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix Command&lt;remap&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandM-s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandM-s /&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sanityinc/swiper-at-point&lt;remap&gt; &lt;switch-to-buffer&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-switch-buffer&lt;remap&gt; &lt;switch-to-buffer-other-window&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-switch-buffer-other-windowMinibuffer bindings:key&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binding---&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-------C-c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandC-g&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minibuffer-keyboard-quitTAB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-partial-or-doneC-j&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-immediate-doneRET&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-alt-doneC-o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hydra-ivy/bodyC-r&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-reverse-i-searchC-s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-next-line-or-historyC-v&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-scroll-up-commandESC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandSPC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self-insert-commandS-SPC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-restrict-to-matchesC-RET&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-immediate-doneC-'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-avy&lt;next&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-scroll-up-command&lt;prior&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-scroll-down-command&lt;remap&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix Command&lt;up&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-previous-line-or-historyC-c C-a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-toggle-ignoreC-c C-o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-occurC-c C-s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-rotate-sort&lt;remap&gt; &lt;backward-delete-char-untabify&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-backward-delete-char&lt;remap&gt; &lt;backward-kill-word&gt;&nbsp;&nbsp;&nbsp;&nbsp;ivy-backward-kill-word&lt;remap&gt; &lt;beginning-of-buffer&gt;&nbsp;&nbsp;&nbsp;ivy-beginning-of-buffer&lt;remap&gt; &lt;delete-backward-char&gt;&nbsp;&nbsp;ivy-backward-delete-char&lt;remap&gt; &lt;delete-char&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-delete-char&lt;remap&gt; &lt;describe-mode&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-help&lt;remap&gt; &lt;end-of-buffer&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-end-of-buffer&lt;remap&gt; &lt;forward-char&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-forward-char&lt;remap&gt; &lt;kill-line&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-kill-line&lt;remap&gt; &lt;kill-ring-save&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-kill-ring-save&lt;remap&gt; &lt;kill-word&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-kill-word&lt;remap&gt; &lt;next-line&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-next-line&lt;remap&gt; &lt;previous-line&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-previous-line&lt;remap&gt; &lt;scroll-down-command&gt;&nbsp;&nbsp;&nbsp;ivy-scroll-down-command&lt;remap&gt; &lt;scroll-up-command&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-scroll-up-commandC-M-a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-read-actionC-M-j&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-immediate-doneM-RET&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-callC-M-n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-next-line-and-callC-M-o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-dispatching-callC-M-p&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-previous-line-and-callM-i&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-insert-currentM-j&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-yank-wordM-n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-next-history-elementM-o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-dispatching-doneM-p&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-previous-history-elementM-r&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-toggle-regexp-quoteM-v&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ivy-scroll-down-command</td></tr><tr><td>Ivy-Historian</td><td></td><td>historian minor mode</td></tr><tr><td>Line-Number</td><td>fundamental</td><td>Toggle line number display in the mode line (Line Number mode).With a prefix argument ARG, enable Line Number mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enablethe mode if ARG is omitted or nil.Line numbers do not appear for very large buffers and bufferswith very long lines; see variables ‘line-number-display-limit’and ‘line-number-display-limit-width’.</td></tr><tr><td>Magit-Auto-Revert</td><td></td><td>Toggle Magit Auto Revert mode.With a prefix argument ARG, enable Magit Auto Revert mode if ARGis positive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp,enable the mode if ARG is omitted or nil.Magit Auto Revert mode is a global minor mode that revertsbuffers associated with a file that is located inside a Gitrepository when the file changes on disk.&nbsp;&nbsp;Use ‘auto-revert-mode’to revert a particular buffer.&nbsp;&nbsp;Or use ‘global-auto-revert-mode’to revert all file-visiting buffers, not just those that visita file located inside a Git repository.This global mode works by turning on the buffer-local mode‘auto-revert-mode’ at the time a buffer is first created.&nbsp;&nbsp;Thelocal mode is turned on if the visited file is being tracked ina Git repository at the time when the buffer is created.If ‘magit-auto-revert-tracked-only’ is non-nil (the default),then only tracked files are reverted.&nbsp;&nbsp;But if you stage apreviously untracked file using ‘magit-stage’, then this modenotices that.Unlike ‘global-auto-revert-mode’, this mode never reverts anybuffers that are not visiting files.The behavior of this mode can be customized using the optionsin the ‘autorevert’ and ‘magit-autorevert’ groups.This function calls the hook ‘magit-auto-revert-mode-hook’.</td></tr><tr><td>Mouse-Wheel</td><td>fundamental</td><td>Toggle mouse wheel support (Mouse Wheel mode).With a prefix argument ARG, enable Mouse Wheel mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enablethe mode if ARG is omitted or nil.</td></tr><tr><td>Origami</td><td></td><td></td></tr><tr><td>Page-Break-Lines</td><td></td><td></td></tr><tr><td>Paredit-Everywhere</td><td></td><td></td></tr><tr><td>Prettify-Symbols</td><td></td><td></td></tr><tr><td>Projectile</td><td></td><td>Minor mode to assist project management and navigation.When called interactively, toggle ‘projectile-mode’.&nbsp;&nbsp;With prefixARG, enable ‘projectile-mode’ if ARG is positive, otherwise disableit.When called from Lisp, enable ‘projectile-mode’ if ARG is omitted,nil or positive.&nbsp;&nbsp;If ARG is ‘toggle’, toggle ‘projectile-mode’.Otherwise behave as if called interactively.key&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binding---&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-------C-c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandC-c p&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-command-mapC-c p ESC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-project-buffers-other-bufferC-c p !&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-run-shell-command-in-rootC-c p &amp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-run-async-shell-command-in-rootC-c p 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandC-c p D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-diredC-c p E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-edit-dir-localsC-c p F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-file-in-known-projectsC-c p I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-ibufferC-c p P&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-test-projectC-c p R&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-regenerate-tagsC-c p S&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-save-project-buffersC-c p T&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-test-fileC-c p V&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-browse-dirty-projectsC-c p a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-other-fileC-c p b&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-switch-to-bufferC-c p c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-compile-projectC-c p d&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-dirC-c p e&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-recentfC-c p f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-fileC-c p g&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-file-dwimC-c p i&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-invalidate-cacheC-c p j&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-tagC-c p k&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-kill-buffersC-c p l&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-file-in-directoryC-c p m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-commanderC-c p o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-multi-occurC-c p p&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-switch-projectC-c p q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-switch-open-projectC-c p r&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-replaceC-c p s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandC-c p t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-toggle-between-implementation-and-testC-c p u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-run-projectC-c p v&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-vcC-c p x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandC-c p z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-cache-current-fileC-c p x e&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-run-eshellC-c p x s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-run-shellC-c p x t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-run-termC-c p s g&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-grepC-c p s s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-agC-c p 4 C-o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-display-bufferC-c p 4 a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-other-file-other-windowC-c p 4 b&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-switch-to-buffer-other-windowC-c p 4 d&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-dir-other-windowC-c p 4 f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-file-other-windowC-c p 4 g&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-file-dwim-other-windowC-c p 4 t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;projectile-find-implementation-or-test-other-window</td></tr><tr><td>Rainbow-Delimiters</td><td></td><td></td></tr><tr><td>Recentf</td><td></td><td>Toggle "Open Recent" menu (Recentf mode).With a prefix argument ARG, enable Recentf mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enableRecentf mode if ARG is omitted or nil.When Recentf mode is enabled, a "Open Recent" submenu isdisplayed in the "File" menu, containing a list of files thatwere operated on recently.</td></tr><tr><td>Savehist</td><td></td><td>Toggle saving of minibuffer history (Savehist mode).With a prefix argument ARG, enable Savehist mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enablethe mode if ARG is omitted or nil.When Savehist mode is enabled, minibuffer history is savedperiodically and when exiting Emacs.&nbsp;&nbsp;When Savehist mode isenabled for the first time in an Emacs session, it loads theprevious minibuffer history from ‘savehist-file’.This mode should normally be turned on from your Emacs init file.Calling it at any other time replaces your current minibufferhistories, which is probably undesirable.</td></tr><tr><td>Shell-Dirtrack</td><td>fundamental</td><td>Toggle directory tracking in this shell buffer (Shell Dirtrack mode).With a prefix argument ARG, enable Shell Dirtrack mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enablethe mode if ARG is omitted or nil.The ‘dirtrack’ package provides an alternative implementation ofthis feature; see the function ‘dirtrack-mode’.</td></tr><tr><td>Show-Paren</td><td></td><td>Toggle visualization of matching parens (Show Paren mode).With a prefix argument ARG, enable Show Paren mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enablethe mode if ARG is omitted or nil.Show Paren mode is a global minor mode.&nbsp;&nbsp;When enabled, anymatching parenthesis is highlighted in ‘show-paren-style’ after‘show-paren-delay’ seconds of Emacs idle time.</td></tr><tr><td>Symbol-Overlay</td><td></td><td></td></tr><tr><td>Tooltip</td><td>fundamental</td><td>Toggle Tooltip mode.With a prefix argument ARG, enable Tooltip mode if ARG is positive,and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enable the modeif ARG is omitted or nil.When this global minor mode is enabled, Emacs displays helptext (e.g. for buttons and menu items that you put the mouse on)in a pop-up window.When Tooltip mode is disabled, Emacs displays help text in theecho area, instead of making a pop-up window.</td></tr><tr><td>Transient-Mark</td><td></td><td></td></tr><tr><td>Undo-Tree</td><td>fundamental</td><td>Toggle Transient Mark mode.With a prefix argument ARG, enable Transient Mark mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enableTransient Mark mode if ARG is omitted or nil.Transient Mark mode is a global minor mode.&nbsp;&nbsp;When enabled, theregion is highlighted with the ‘region’ face whenever the markis active.&nbsp;&nbsp;The mark is "deactivated" by changing the buffer,and after certain other operations that set the mark but whosemain purpose is something else--for example, incremental search,&lt;, and &gt;.You can also deactivate the mark by typing C-g orM-ESC ESC.Many commands change their behavior when Transient Mark mode isin effect and the mark is active, by acting on the region insteadof their usual default part of the buffer’s text.&nbsp;&nbsp;Examples ofsuch commands include M-;, M-x flush-lines, M-x keep-lines,M-%, C-M-%, M-x ispell, and C-_.To see the documentation of commands which are sensitive to theTransient Mark mode, invoke C-h d and type "transient"or "mark.*active" at the prompt.</td></tr><tr><td>Whitespace-Cleanup</td><td></td><td>Toggle undo-tree mode.With no argument, this command toggles the mode.A positive prefix argument turns the mode on.A negative prefix argument turns it off.Undo-tree-mode replaces Emacs’ standard undo feature with a morepowerful yet easier to use version, that treats the undo historyas what it is: a tree.The following keys are available in ‘undo-tree-mode’:&nbsp;&nbsp;key&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binding---&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-------C-x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandESC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandC-_&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-undoC-/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-undoC-?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-redo&lt;remap&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandC-x r&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandC-x u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizeM-_&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-redo&lt;remap&gt; &lt;redo&gt;&nbsp;&nbsp;undo-tree-redo&lt;remap&gt; &lt;undo&gt;&nbsp;&nbsp;undo-tree-undo&lt;remap&gt; &lt;undo-only&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-undoC-x r U&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-restore-state-from-registerC-x r u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-save-state-to-registerWithin the undo-tree visualizer, the following keys are available:&nbsp;&nbsp;key&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binding---&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-------C-b&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-switch-branch-leftC-f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-switch-branch-rightC-n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-redoC-p&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-undoC-q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizer-abortESC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix CommandSPC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;scroll-up-command,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizer-scroll-left-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;negative-argument.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizer-scroll-right0 .. 9&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;digit-argument&lt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizer-scroll-left&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizer-scroll-right?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;describe-modeb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-switch-branch-leftd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizer-toggle-difff&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-switch-branch-rightg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;revert-bufferh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;describe-moden&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-redop&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-undoq&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizer-quits&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizer-selection-modet&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizer-toggle-timestampsDEL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;scroll-down-commandS-SPC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;scroll-down-command&lt;C-down&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-redo-to-x&lt;C-up&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-undo-to-x&lt;down&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-redo&lt;left&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-switch-branch-left&lt;mouse-1&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizer-mouse-set&lt;next&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizer-scroll-up&lt;prior&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualizer-scroll-down&lt;remap&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prefix Command&lt;right&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-switch-branch-right&lt;up&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-undoM-{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-undo-to-xM-}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-redo-to-x&lt;remap&gt; &lt;backward-char&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-switch-branch-left&lt;remap&gt; &lt;backward-paragraph&gt;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-undo-to-x&lt;remap&gt; &lt;forward-char&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-switch-branch-right&lt;remap&gt; &lt;forward-paragraph&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-redo-to-x&lt;remap&gt; &lt;next-line&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-redo&lt;remap&gt; &lt;previous-line&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undo-tree-visualize-undo</td></tr><tr><td>Whole-Line-Or-Region</td><td></td><td>Toggle use of whole-line-or-region minor mode.This minor mode allows functions to operate on the current line ifthey would normally operate on a region and region is currentlyundefined.Optional ARG turns mode on iff ARG is a positive integer.</td></tr><tr><td>Window-Numbering</td><td></td><td>A minor mode that assigns a number to each window.</td></tr><tr><td>Winner</td><td></td><td>Toggle Winner mode on or off.With a prefix argument ARG, enable Winner mode if ARG ispositive, and disable it otherwise.&nbsp;&nbsp;If called from Lisp, enablethe mode if ARG is omitted or nil, and toggle it if ARG is ‘toggle’.Winner mode is a global minor mode that records the changes inthe window configuration (i.e. how the frames are partitionedinto windows) so that the changes can be "undone" using thecommand ‘winner-undo’.&nbsp;&nbsp;By default this one is bound to the keysequence ‘C-c &lt;left&gt;’.&nbsp;&nbsp;If you change your mind (while undoing),you can press ‘C-c &lt;right&gt;’ (calling ‘winner-redo’).</td></tr></table>
