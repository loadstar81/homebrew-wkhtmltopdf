cask "wkhtmltopdf01221" do
  name "wkhtmltopdf"
  version "0.12.2.1"
  homepage "https://wkhtmltopdf.org"
  sha256 "c2fd9b39182453ba9672f528e7a503928e51bc6a45c3117da06a5193af338d35"

  url "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.2.1/wkhtmltox-0.12.2.1_osx-cocoa-x86-64.pkg"

  pkg "wkhtmltox-0.12.2.1_osx-cocoa-x86-64.pkg"

  uninstall pkgutil: "org.wkhtmltopdf.wkhtmltox",
            delete: [
                     "/usr/local/include/wkhtmltox",
                     "/usr/local/lib/libwkhtmltox.dylib",
                     "/usr/local/lib/libwkhtmltox.0.dylib",
                     "/usr/local/lib/libwkhtmltox.0.12.dylib",
                     "/usr/local/lib/libwkhtmltox.0.12.2.dylib",
                     "/usr/local/bin/wkhtmltoimage",
                     "/usr/local/bin/wkhtmltopdf",
                    ]
end
