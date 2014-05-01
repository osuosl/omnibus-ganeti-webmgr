name "sqlite"
# The version is funky, because the download link has leading 0s
default_version "3.08.04.03"

source :url => "http://sqlite.org/2014/sqlite-autoconf-#{version.gsub('.','')}.tar.gz",
       :md5 => "0f5459cde43cb269e5120ecd2c671ced"

relative_path "sqlite-autoconf-#{version.gsub('.', '')}"

env = {
  "LDFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "LD_RUN_PATH" => "#{install_dir}/embedded/lib"
}

build do
  command [
            "sh configure",
            "--prefix=#{install_dir}/embedded",
            "--enable-readline=no"
           ].join(" "), :env => env
  command "make -j #{max_build_jobs}"
  command "make install", :env => env
end
