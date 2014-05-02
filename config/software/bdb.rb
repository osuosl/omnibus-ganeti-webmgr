name "bdb"
version "4.7.25"

source :url => "http://download.oracle.com/berkeley-db/db-#{version}.tar.gz",
       :md5 => "ec2b87e833779681a0c3a814aa71359e"

relative_path "db-#{version}/build_unix"

build do
  configure_command = ["../dist/configure",
                       "--prefix=#{install_dir}/embedded",
                       "--enable-shared"]

  make_binary = 'make'

  command configure_command.join(" ")
  command "#{make_binary} -j #{max_build_jobs}"
  command "#{make_binary} -j #{max_build_jobs} install"
end
