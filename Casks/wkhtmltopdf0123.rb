cask "wkhtmltopdf0123" do
  name "wkhtmltopdf"
  version "0.12.3"
  homepage "https://wkhtmltopdf.org"
  sha256 "c8aa0f9456444847d08c6c772e2e0e4244813e6a2911eba6c940439df9abd0f0"

  url "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.3/wkhtmltox-0.12.3_osx-cocoa-x86-64.pkg"

  pkg "wkhtmltox-0.12.3_osx-cocoa-x86-64.pkg"

  uninstall pkgutil: "org.wkhtmltopdf.wkhtmltox",
            delete: [
                     "/usr/local/include/wkhtmltox",
                     "/usr/local/lib/libwkhtmltox.dylib",
                     "/usr/local/lib/libwkhtmltox.0.dylib",
                     "/usr/local/lib/libwkhtmltox.0.12.dylib",
                     "/usr/local/lib/libwkhtmltox.0.12.3.dylib",
                     "/usr/local/bin/wkhtmltoimage",
                     "/usr/local/bin/wkhtmltopdf",
                    ]
end
