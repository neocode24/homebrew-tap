cask "veil" do
  version "0.5.0"
  sha256 "86497bb91ffea12f10c2127ea081ce10b02a509c3fdd4fda1383df85f7afe997"

  url "https://github.com/neocode24/Veil/releases/download/v#{version}/Veil-v#{version}.zip"
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
