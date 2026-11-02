class SwiftDeadCode < Formula
  desc "Find and remove dead code in SwiftPM packages and Xcode projects"
  homepage "https://github.com/ivan-magda/swift-dead-code"
  url "https://github.com/ivan-magda/swift-dead-code/releases/download/0.1.2/swift-dead-code-0.1.2-macos.zip"
  sha256 "7678e4e04d607cbdf797e8b213f9f0cd9abc58499bfb119576da0d1634d6417a"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "swift-dead-code"
  end

  def caveats
    <<~EOS
      `swift-dead-code scan` also needs Periphery 3.8.0:
        https://github.com/ivan-magda/swift-dead-code#install
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/swift-dead-code --version").strip
  end
end
