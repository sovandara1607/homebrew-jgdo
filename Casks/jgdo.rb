cask "jgdo" do
  version "0.1.16"
  sha256 "9378e1fa67214094700b7867f6f2b383370cb8d9eb2259c183a1a23f718f781d"

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
