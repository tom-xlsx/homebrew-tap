cask "legible" do
  version "0.13.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/tom-xlsx/legible/releases/download/v#{version}/Legible-#{version}.zip"
  name "Legible"
  desc "Markdown reader for macOS with a Quick Look extension"
  homepage "https://github.com/tom-xlsx/legible"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Legible.app"
  binary "#{appdir}/Legible.app/Contents/Resources/bin/legible"

  uninstall quit: "io.github.tom-xlsx.Legible"

  zap trash: [
    "~/Library/Application Support/Legible",
    "~/Library/Containers/io.github.tom-xlsx.Legible.QuickLook",
    "~/Library/Preferences/io.github.tom-xlsx.Legible.plist",
    "~/Library/Saved Application State/io.github.tom-xlsx.Legible.savedState",
    "~/Library/WebKit/io.github.tom-xlsx.Legible",
  ]

  caveats <<~EOS
    Legible is not notarised. If macOS refuses to open it the first time, go to
    System Settings > Privacy & Security, scroll down and click "Open Anyway".
    Open Legible once so macOS registers its Quick Look extension.
  EOS
end
