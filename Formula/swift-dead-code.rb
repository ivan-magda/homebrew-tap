class SwiftDeadCode < Formula
  desc "Find and remove dead code in SwiftPM packages and Xcode projects"
  homepage "https://github.com/ivan-magda/swift-dead-code"
  url "https://github.com/ivan-magda/swift-dead-code/releases/download/0.1.3/swift-dead-code-0.1.3-macos.zip"
  sha256 "6d711f8e2897a51191b9eea1b127c7811c06e9eab0cb3ba7ec30b7bee2121fc4"
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
