class Taskmgr < Formula
  desc "Task Manager for the command line"
  homepage "https://github.com/jchas2/taskmgr-cli"
  version "1.4.1"

  url "https://github.com/jchas2/taskmgr-cli/releases/download/v#{version}/taskmgr-#{version}-macos-arm64.tar.gz"
  sha256 "e8b23fe560d3291324e3722bdae6b806f562d0d056abc05d0534aa93b53c765d"

  def install
    bin.install "taskmgr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskmgr --version")
  end
end
