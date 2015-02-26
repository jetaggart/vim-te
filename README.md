# vim-te

Universal test running either synchronously or asynchronously. Vim interface to [te](https://github.com/jetaggart/te). Only supports terminal vim on *nix right now. If you know Vimscript, help is much appreciated.


# Installation

The `te` executable must be on your PATH. Please visit [te](https://github.com/jetaggart/te) and follow the instructions there.

Install the vim plugin your way. For example with Vundle:

```
Plugin 'jetaggart/vim-te'
```


## Usage

`<leader>ta` => test all

`<leader>tf` => test file

`<leader>tl` => test line number

`<leader>tt` => run last test

To run synchronously, just run the commands above. To run asynchronously, run
`te listen` at a shell of your choice and run the commands above.

## License

Copyright (c) Jeff Taggart.  Distributed under the same terms as Vim itself.
See `:help license`.
