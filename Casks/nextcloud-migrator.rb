cask "nextcloud-migrator" do
  arch arm: "arm64", intel: "x64"

  version "0.1.4"
  sha256 arm: "d2ac4199df25547dc7be62d387e537cd11fa7ecceb2e98c604b2872ad9004fae", intel: "ade3d0e60fe6ff7c1ce2ecdd2a36bee38ef5c6cb466fd8c8e931835cd2f68e5b"

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
