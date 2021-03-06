class Goto < Formula
    include Language::Python::Virtualenv

    desc ""
    homepage ""
    url "https://github.com/biancasubion/goto/archive/1.3.5.tar.gz"
    head "https://github.com/biancasubion/goto.git"
    sha256 "417367720132a9917db61306af32965217b011e7e7e8e145cf3e18350929ac77"

    depends_on :python if MacOS.version <= :snow_leopard



    resource "flask" do
	url "https://pypi.python.org/packages/source/F/Flask/Flask-0.10.1.tar.gz"
	sha256 "4c83829ff83d408b5e1d4995472265411d2c414112298f2eb4b359d9e4563373"
    end

    resource "jinja2" do
	url "https://pypi.python.org/packages/source/J/Jinja2/Jinja2-2.8.tar.gz"
	sha256 "bc1ff2ff88dbfacefde4ddde471d1417d3b304e8df103a7a9437d47269201bf4"
    end

  resource "werkzeug" do
    url "https://pypi.python.org/packages/source/W/Werkzeug/Werkzeug-0.10.4.tar.gz"
    sha256 "9d2771e4c89be127bc4bac056ab7ceaf0e0064c723d6b6e195739c3af4fd5c1d"
  end

    def install
	virtualenv_install_with_resources
        bin.install "goto"
        prefix.install Dir["./*"]
    end 
end

