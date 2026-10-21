cask "emulator-bar" do
  version "0.1.0"
  sha256 "807033b20ce205f3e7e759800eb6506e3dd50180975769ddc6746a56c34e705b"

  url "https://github.com/ale24dev/emulator-bar/releases/download/v#{version}/Emulator-Bar-#{version}-aarch64.zip"
  name "Emulator Bar"
  desc "Menu bar app to control Android emulators and iOS simulators"
  homepage "https://github.com/ale24dev/emulator-bar"

  depends_on arch: :arm64
  depends_on :macos

  app "Emulator Bar.app"

  zap trash: [
    "~/Library/Application Support/com.alediaz.emulatorbar",
    "~/Library/Caches/com.alediaz.emulatorbar",
    "~/Library/LaunchAgents/Emulator Bar.plist",
    "~/Library/Preferences/com.alediaz.emulatorbar.plist",
    "~/Library/Saved Application State/com.alediaz.emulatorbar.savedState",
    "~/Library/WebKit/com.alediaz.emulatorbar",
  ]

  caveats <<~EOS
    Emulator Bar is not signed or notarized, so macOS Gatekeeper blocks the
    first launch. Either right-click the app in /Applications and choose Open,
    or remove the quarantine attribute:

      xattr -dr com.apple.quarantine "/Applications/Emulator Bar.app"
  EOS
end
