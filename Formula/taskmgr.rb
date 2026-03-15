class Taskmgr < Formula
  desc "Task Manager for the command line"
  homepage "https://github.com/jchas2/taskmgr-cli"
  version "1.3.0"

  if Hardware::CPU.arm?
    url "https://github.com/jchas2/taskmgr-cli/releases/download/v#{version}/taskmgr-#{version}-macos-arm64.tar.gz"
    sha256 "PLACEHOLDER_ARM64_SHA"
  else
    url "https://github.com/jchas2/taskmgr-cli/releases/download/v#{version}/taskmgr-#{version}-macos-x64.tar.gz"
    sha256 "PLACEHOLDER_X64_SHA"
  end

  def install
    bin.install "taskmgr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskmgr --version")
  end
end
