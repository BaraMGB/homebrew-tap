class Nextstudio < Formula
  desc "Digital Audio Workstation (DAW)"
  homepage "https://github.com/BaraMGB/NextStudio"
  version "0.01-alpha.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/BaraMGB/NextStudio/releases/download/v#{version}/NextStudio-0.01-Darwin.dmg"
      sha256 "placeholder"
    end
    on_intel do
      url "https://github.com/BaraMGB/NextStudio/releases/download/v#{version}/NextStudio-0.01-Darwin.dmg"
      sha256 "placeholder"
    end
  end

  depends_on "jack" => :optional

  def install
    prefix.install "NextStudio.app"
    bin.write_exec_script "#{prefix}/NextStudio.app/Contents/MacOS/NextStudio"
  end

  def caveats
    <<~EOS
      NextStudio is not code-signed. On first launch:
        1. Right-click NextStudio in Applications → "Open"
        2. Click "Open" in the dialog

      Or via Terminal:
        xattr -d com.apple.quarantine #{prefix}/NextStudio.app
    EOS
  end

  test do
    system "#{bin}/NextStudio", "--version"
  end
end
