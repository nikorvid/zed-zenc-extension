# Zenc for Zed

A minimal Zed extension for the [Zenc](https://github.com/zenc-lang/zenc) programming language.

## Features

- **File recognition**: Opens `.zc` files as Zenc source code
- **Syntax highlighting**: Zenc keywords, types, and C-compatible grammar support
- **LSP integration**: Automatically launches `zc-lsp` for completions, diagnostics, and go-to-definition

## Requirements

- [Zenc compiler](https://github.com/zenc-lang/zenc) (`zc`) and tooling installed
- `zc-lsp` must be available on your system `PATH`

## Installation

### From source

```bash
git clone https://github.com/nikorvid/zed-zenc-extension.git ~/.config/zed/extensions/zenc
```

Then restart Zed.

### Verifying the LSP

Open any `.zc` file in Zed. If `zc-lsp` is correctly installed, you should see language server features (diagnostics, completions) appear automatically.

To check the LSP status, open the command palette (`Ctrl+Shift+P` / `Cmd+Shift+P`) and run:

```
debug: open language server logs
```

## Configuration

If `zc-lsp` is not on your `PATH`, you can specify its location in `~/.config/zed/settings.json`:

```json
{
  "lsp": {
    "zc-lsp": {
      "binary": {
        "path": "/usr/local/bin/zc-lsp",
        "arguments": []
      }
    }
  }
}
```

## Structure

```
.
├── extension.toml
└── languages/
    └── zenc/
        ├── config.toml      # Language registration
        ├── highlights.scm   # Syntax highlighting queries
        ├── brackets.scm     # Bracket matching
        ├── indents.scm      # Indentation rules
        └── outline.scm      # Document outline / symbol list
```

## License

MIT
