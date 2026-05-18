cask "veil" do
  version "0.6.0"
  sha256 "ef5b2b6a3ed7523710734d36c160b090dee401852896b52122e1023997b88fb5"

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
