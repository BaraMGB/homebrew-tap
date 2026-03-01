cask "nextstudio" do
  version "0.01-alpha.1"
  sha256 "75b37e2d21f0fa50fabd2db1314cb8de7958ea153820673efa6ba9592654f12d"

  url "https://github.com/BaraMGB/NextStudio/releases/download/v#{version}/NextStudio-0.01-Darwin.dmg"
  name "NextStudio"
  desc "Digital Audio Workstation (DAW)"
  homepage "https://github.com/BaraMGB/NextStudio"

  app "NextStudio.app"

  zap trash: [
    "~/Library/Application Support/NextStudio",
    "~/Library/Caches/NextStudio",
    "~/Library/Preferences/com.nextstudio.app.plist",
  ]

  caveats do
    <<~EOS
      NextStudio is not code-signed. On first launch:
        1. Right-click NextStudio in Applications → "Open"
        2. Click "Open" in the dialog

      Or via Terminal:
        xattr -d com.apple.quarantine /Applications/NextStudio.app
    EOS
  end
end
