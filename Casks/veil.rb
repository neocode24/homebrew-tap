cask "veil" do
  version "0.1.0"
  sha256 "PLACEHOLDER_SHA256"

  url "https://github.com/neocode24/Veil/releases/download/v#{version}/Veil-#{version}.zip"
  name "Veil"
  desc "macOS menu bar app that softly blanks other monitors when fullscreen video is detected"
  homepage "https://github.com/neocode24/Veil"

  depends_on macos: ">= :sonoma"

  app "Veil.app"

  zap trash: [
    "~/Library/Preferences/com.neocode24.Veil.plist",
    "~/Library/Caches/com.neocode24.Veil",
  ]
end
