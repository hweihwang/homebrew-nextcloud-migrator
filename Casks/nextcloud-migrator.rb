cask "nextcloud-migrator" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm: "1d7a078e4cde650dbdb6efe36b7268cb2dd60da4819142a521fb0172eae0831a", intel: "71fae1c8977e724a71ef2a384b86777f75887c28b2ef22094a1e9d0289cb9295"

  url "https://github.com/hweihwang/nextcloud-migrator-releases/releases/download/v#{version}/Nextcloud-Migrator-mac-#{arch}.dmg",
      verified: "github.com/hweihwang/nextcloud-migrator-releases/"
  name "Nextcloud Migrator"
  desc "Desktop migration tool for Nextcloud - media, files, tasks, and more."
  homepage "https://github.com/hweihwang/nextcloud-migrator"

  depends_on macos: ">= :ventura"

  app "Nextcloud Migrator.app"

  uninstall quit: "com.hweihwang.nextcloud-migrator"

  zap trash: [
    "~/Library/Application Support/Nextcloud Migrator",
    "~/Library/Caches/com.hweihwang.nextcloud-migrator",
    "~/Library/Preferences/com.hweihwang.nextcloud-migrator.plist",
    "~/Library/Saved Application State/com.hweihwang.nextcloud-migrator.savedState",
    "~/.nextcloud-migrator",
  ]
end
