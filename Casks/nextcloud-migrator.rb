cask "nextcloud-migrator" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm: "97b88934a756c5b6b68bb96662be778fc21f0a90118bb212b73706249d9f7e34", intel: "824d87f78593b0237929c9c2bb9adbddd85ba0d53721afe5613b3d03c67b5d63"

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
