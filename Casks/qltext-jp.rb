cask 'qltext-jp' do
  version '1.0.0'
  sha256 'de9d0df486f7d7aa522879a314683a8ee2de4ca77ebb17ac64fda54999622934'

  url "https://github.com/mzp/qltext-jp/releases/download/#{version}/qltext-jp-#{version}.zip"
  name 'qltext-jp'
  homepage 'https://github.com/mzp/qltext-jp'

  qlplugin 'qltext-jp.qlgenerator'
end
