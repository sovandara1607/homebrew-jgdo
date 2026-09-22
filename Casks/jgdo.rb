cask "jgdo" do
  version "0.1.13"
  sha256 "cac8f6a7001225102b21d6a3708fe64864f40da2d9db0d5cec46cf15ae1d4448"

  url "https://github.com/sovandara1607/jgdo-releases/releases/download/v#{version}/JgDo-v#{version}.dmg",
      verified: "github.com/sovandara1607/jgdo-releases/"
  name "JgDo"
  desc "Menu bar window manager with snapping, app switching, and workspaces"
  homepage "https://jgdo.sovandara.lol/"

  depends_on arch:  :arm64
  depends_on macos: :golden_gate

  app "JgDo.app"

  zap trash: [
    "~/Library/Application Support/JgDo",
    "~/Library/Preferences/lonewolf.JgDo.plist",
  ]

  caveats do
    <<~EOS
      JgDo is ad-hoc signed, not yet notarized with a paid Developer ID.
      On first launch, Gatekeeper will block it — right-click JgDo in
      Applications and choose Open, or allow it via System Settings →
      Privacy & Security → "Open Anyway".
    EOS
  end
end
