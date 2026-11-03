# homebrew-streetpea

Here lies a tap for installing software from streetpea (i.e., `chiaki-ng`)

## How do I install these formulae?

`brew install streetpea/streetpea/<formula>`

Or `brew tap streetpea/streetpea` and then `brew install <formula>`.

Or, in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
tap "streetpea/streetpea"
brew "<formula>"
```

### Example: Installing chiaki-ng

```
brew install --cask streetpea/streetpea/chiaki-ng
```

chiaki-ng is signed and notarized, so it opens without a security exception. It needs a Mac with Apple silicon and macOS 13 or later.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
