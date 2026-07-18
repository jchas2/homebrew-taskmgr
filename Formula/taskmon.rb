class Taskmon < Formula
  desc "Task Monitor for the command line"
  homepage "https://github.com/jchas2/taskmon"
  version "1.7.5"

  url "https://github.com/jchas2/taskmon/releases/download/v#{version}/taskmon-#{version}-macos-arm64.tar.gz"
  sha256 "53d7636853226e9b1471668819f75890a0be92063e99f586c2a08efc693f5413"

  def install
    bin.install "taskmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskmon --version")
  end
end
