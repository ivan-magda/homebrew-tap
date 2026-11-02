class SwiftDeadCode < Formula
  desc "Find and remove dead code in SwiftPM packages and Xcode projects"
  homepage "https://github.com/ivan-magda/swift-dead-code"
  url "https://github.com/ivan-magda/swift-dead-code/releases/download/0.1.1/swift-dead-code-0.1.1-macos.zip"
  sha256 "e7323f8f81a3fbac25457ac9bfb8481a4a9a70cdc6e1e9b7021f393a6ab06b88"
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
