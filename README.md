# custom-fd.yazi

Run `fd` searches with custom arguments.

## Installation

Clone this plugin into your Yazi plugins directory:

```sh
mkdir -p ~/.config/yazi/plugins
git clone https://github.com/trumpeter122/custom-fd.yazi ~/.config/yazi/plugins/custom-fd.yazi
```

## Usage

Add this to your `~/.config/yazi/keymap.toml`:

```toml
[[mgr.prepend_keymap]]
on   = ["F", "c"]
run  = "plugin custom-fd"
desc = "Run fd with custom args"
```

When triggered, you'll be prompted for `fd` arguments. For example: `-t f --hidden --exclude .git`.

Note that, the keybindings above are just examples, please tune them up as needed to ensure they don't conflict with your other commands/plugins.

## License

This plugin is MIT-licensed. For more information check the [LICENSE](LICENSE) file.
