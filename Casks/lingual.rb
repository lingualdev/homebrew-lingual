cask "lingual" do
    arch arm: "arm64", intel: "x64"
    version "0.1.0-alpha.7"
    sha256 "a0501c5d9a99e6f020ca79eb4231532852659490fd243793fd5cbca86100486a"

    url "https://registry.npmjs.org/@lingual/cli-darwin-#{arch}/-/cli-darwin-#{arch}-#{version}.tgz"

    livecheck do
        url "https://registry.npmjs.org/@lingual/cli-darwin-#{arch}/latest"
        strategy :json do |json|
            json["version"]
        end
    end

    name "Lingual CLI"
    desc "The CLI for the Lingual TMS"
    homepage "https://lingual.dev"

    binary "package/bin/lingual"
end
