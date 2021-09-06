class Grpctl < Formula
  desc "interact with gRPC services from your command line"
  homepage "https://github.com/njhale/grpctl"
  head "https://github.com/njhale/grpctl.git", :branch => "main"

  depends_on "go" => :build

  def install
    system "go build"
    bin.install "grpctl"
  end

  test do
    system "#{bin}/grpctl --help"
  end
end
