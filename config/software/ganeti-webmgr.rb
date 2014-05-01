name "ganeti-webmgr"

dependency 'python'
dependency 'pip'
dependency 'sqlite'

default_version "develop"

source :git => "git://github.com/osuosl/ganeti_webmgr"

relative_path "ganeti_webmgr"

pip_install = "embedded/bin/pip install -I"

env = {
  "CFLAGS"  => ["-I#{install_dir}/embedded/include",
                "-I#{install_dir}/embedded/include/openssl",
                "-I#{install_dir}/embedded/include/curl"].join(" "),
  "LDFLAGS" => "-L#{install_dir}/embedded/lib",
  "PATH"    => "#{install_dir}/embedded/bin:#{ENV["PATH"]}"
}

build do
  command "#{install_dir}/#{pip_install} -r requirements/production.txt", :env => env
  command "#{install_dir}/embedded/bin/python setup.py install", :env => env
end
