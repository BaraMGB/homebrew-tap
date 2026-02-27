class Jumake < Formula
  desc "CMake project initialization for JUCE"
  homepage "https://github.com/BaraMGB/JuMake"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BaraMGB/JuMake/releases/download/v#{version}/jumake-macos-arm64.tar.gz"
      sha256 "6034fef784648d6283385129b7120eab6f0fe65c55e4423e63a2f1eb8894b392"
    end
    on_intel do
      url "https://github.com/BaraMGB/JuMake/releases/download/v#{version}/jumake-macos-x64.tar.gz"
      sha256 "placeholder" # No x64 build yet
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BaraMGB/JuMake/releases/download/v#{version}/jumake-linux-arm64.tar.gz"
      sha256 "placeholder" # No ARM Linux build yet
    end
    on_intel do
      url "https://github.com/BaraMGB/JuMake/releases/download/v#{version}/jumake-linux-x64.tar.gz"
      sha256 "placeholder" # Update after testing
    end
  end

  def install
    bin.install "jumake"
  end

  test do
    system "#{bin}/jumake", "--version"
  end
end
