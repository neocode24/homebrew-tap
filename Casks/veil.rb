cask "veil" do
  version "0.3.2"
  sha256 "55fa84db433f16032abab821d5a9a52eb183da312cdfd04a026bb4ce2191d491"

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
