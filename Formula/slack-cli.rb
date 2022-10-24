class SlackCli < Formula
  desc ""
  license ""

  homepage "https://api.slack.com/future/tools/cli"
  version "1.14.0"
  sha256 "290b60a3798c13bfc11d815807d2115b8dca62532e9509eef8bfc2e8e1863b4a"
  url "https://downloads.slack-edge.com/slack-cli/slack_cli_#{version}_macOS_64-bit.tar.gz"

  livecheck do
    url "https://api.slack.com/future/tools/cli"
    regex(/href=.*?downloads\.slack-edge\.com\/.*?\bslack_cli_(\d+(?:\.\d+)+).*?\.tar\.gz/i)
  end

  def install
    bin.install "slack"
  end

  test do
    system "#{bin}/slack", "--version"
  end
end
