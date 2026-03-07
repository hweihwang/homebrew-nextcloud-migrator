cask "nextcloud-migrator" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"
  sha256 arm: "98fc6d90f0ab462c494330c39859fb836e55be6395d814f36c2eb8e30d477c96", intel: "9b50b68b601fa23d414ab19e3a4b6cc3dff01fe4003ab2d1b913895766b03f47"

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
