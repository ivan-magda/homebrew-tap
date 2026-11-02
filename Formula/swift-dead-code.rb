class SwiftDeadCode < Formula
  desc "Find and remove dead code in SwiftPM packages and Xcode projects"
  homepage "https://github.com/ivan-magda/swift-dead-code"
  url "https://github.com/ivan-magda/swift-dead-code/releases/download/0.1.0/swift-dead-code-0.1.0-macos.zip"
  sha256 "354dd699d5e62012c75ade0ab3fda8038ca50879f551cc88c7bae767f2ec1e03"
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
