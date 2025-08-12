- [+] Setup nvim-treesitter rainbow plugin so that it gets applied immediately,
  without need to reload - DONE: turned out that in my case, treesitter is preinstalled, so I had
  to use `lvim.builtin`
- [ ] Problem: when I open lvim with some directory specified - file searching
      happens over all system (?). I use `telescope` for that purpose. - NOT DONE: `project.nvim` is used for such purpose, which is integrated
      with telescope. I could not understand the logic of this plugin
- [ ] Whichkey
- [ ] how to delete selected without overriding copy buffer with it
- [+] nvim-cmp select first suggestion by default
- [ ] 'treesitter' annoying error on buffer close. Related to rainbow brackets.
- [+] formatting for HTML is broken. Seems like editor's settings, not ESLint's
  or Prettier's. But it is good to take a look in it as well.
- [ ] wrong LSP typescript path suggestions. Sometimes they are fine. Seems like
      it depends on how long the import is. If it is something like 3 and more
      `../`, it starts importing by symlink, which is not a good thing.
- [ ] LSP does not understand union type in TS and puts 'any' instead in template
- [-] clicking `.` should choose selected suggestion. UPDATE: should not work in typed word already matches suggestion, since for methods, then, I have to doublepress `.`.
- [~] make line wrap to be used only in `.md` files. Might be done
- [ ] buffer find command opens in normal mode, instead of insert.
- [ ] @ in nvim-tree opens file in external app. Looks great! Or not?
- [ ] nvim-cmp menu display timeout.
- [ ] Add `import all`
- [ ] improve colorscheme. Selection in vscode looks so much better. Also, errorLens extension for vscode, same thing
- [ ] toggleterm should have three fullscreen terminals (cmd+3).
- [ ] find files in telescope should keep search prompt if I did not click 'enter' on some suggestion.
      Otherwise, it is fine to clean it up
- [ ] lvim on opening should open lastest opened project with all state kept.
- [ ] If the project is changed, close all tabnine tabs.
- [ ] Global refactoring as in VsCode or IDEA
- [ ] Go through all available keybinds.
- [ ] slow down nvim-cmp suggestions. Eyes hurt.
- [ ] Telescope find fine seems to ignore normal mode commands like Paste or Yank
- [ ] border colors. make white
- [ ] <leader>F and :w format differently
- [ ] autosave does not get fired when I change smth with `dd`, for example
- [ ] bufferline, tweak with jump command. https://github.com/akinsho/bufferline.nvim/issues/652. BufferLinePick
- [ ] inconsistet accent
- [ ] if cmp matches completely, <CR> should return caret, not 'accept' suggestion
