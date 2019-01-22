cask "wkhtmltopdf0125" do
  name "wkhtmltopdf"
  version "0.12.5"
  homepage "https://wkhtmltopdf.org"
  sha256 "2718c057249a133fe413b3c8cfb33b755a2e18a8e233329168f1af462cd6de5f"

  url "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox-0.12.5-1.macos-cocoa.pkg"

  pkg "wkhtmltox-0.12.5-1.macos-cocoa.pkg"

  uninstall pkgutil: "org.wkhtmltopdf.wkhtmltox",
            delete: [
                     "/usr/local/include/wkhtmltox",
                     "/usr/local/lib/libwkhtmltox.dylib",
                     "/usr/local/lib/libwkhtmltox.0.dylib",
                     "/usr/local/lib/libwkhtmltox.0.12.dylib",
                     "/usr/local/lib/libwkhtmltox.0.12.5.dylib",
                     "/usr/local/bin/wkhtmltoimage",
                     "/usr/local/bin/wkhtmltopdf",
                    ]
end
