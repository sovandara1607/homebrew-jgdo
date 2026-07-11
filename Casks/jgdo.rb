cask "jgdo" do
  version "0.1.1"
  sha256 "cdeea19825d6101c83ca7882eedbaa5444c5edabdded2712f9a509fa30b2fe1a"

  url "https://github.com/sovandara1607/jgdo-app/releases/download/v#{version}/JgDo-#{version}-arm64.dmg",
      verified: "github.com/sovandara1607/jgdo-app/"
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
