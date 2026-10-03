cask "lirrly" do
  version "0.4.3"
  sha256 "787139cc393a0d185dd319edfebf8920c2e7dcd10101144b48614cc9dd0e2c93"

  url "https://github.com/m55h11r11/wispralt/releases/download/v#{version}/Lirrly_#{version}_aarch64.dmg"
  name "Lirrly"
  desc "Voice dictation that pastes clean text into any app"
  homepage "https://lirrly.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Lirrly.app"

  zap trash: [
    "~/Library/Application Support/com.mshrmnsr.lirrly",
    "~/Library/Caches/com.mshrmnsr.lirrly",
    "~/Library/HTTPStorages/com.mshrmnsr.lirrly",
    "~/Library/Preferences/com.mshrmnsr.lirrly.plist",
    "~/Library/Saved Application State/com.mshrmnsr.lirrly.savedState",
    "~/Library/WebKit/com.mshrmnsr.lirrly",
  ]

  caveats <<~EOS
    Lirrly needs Accessibility permission to paste into other apps:
      System Settings → Privacy & Security → Accessibility → enable Lirrly

    Your Groq API key is stored in the macOS Keychain and is not removed by
    `brew uninstall --zap`; delete the "com.mshrmnsr.lirrly" entry in Keychain
    Access if you want it gone.
  EOS
end
