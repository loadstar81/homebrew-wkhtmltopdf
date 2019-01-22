cask "wkhtmltopdf0124" do
  name "wkhtmltopdf"
  version "0.12.4"
  homepage "https://wkhtmltopdf.org"
  sha256 "402209589279e092c94d17c76e6fdda6be5cadb21ce12e7c093c41f82b757506"

  url "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_osx-cocoa-x86-64.pkg"

  pkg "wkhtmltox-0.12.4_osx-cocoa-x86-64.pkg"

  uninstall pkgutil: "org.wkhtmltopdf.wkhtmltox",
            delete: [
                     "/usr/local/include/wkhtmltox",
                     "/usr/local/lib/libwkhtmltox.dylib",
                     "/usr/local/lib/libwkhtmltox.0.dylib",
                     "/usr/local/lib/libwkhtmltox.0.12.dylib",
                     "/usr/local/lib/libwkhtmltox.0.12.4.dylib",
                     "/usr/local/bin/wkhtmltoimage",
                     "/usr/local/bin/wkhtmltopdf",
                    ]
end
