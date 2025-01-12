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

[!NOTE]
By using chiaki-ng, you acknowledge that it's not [notarized](https://developer.apple.com/documentation/security/notarizing_macos_software_before_distribution).

Notarization is a "security" feature by Apple.
You send binaries to Apple, and they either approve them or not.
In reality, notarization is about building binaries the way Apple likes it.

[Homebrew installation script](https://github.com/streetpea/homebrew-streetpea/blob/main/Casks/chiaki-ng.rb) is configured to
automatically delete `com.apple.quarantine` attribute, that's why the app should work out of the box, without any warnings that
"Apple cannot check chiaki-ng for malicious software"

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
