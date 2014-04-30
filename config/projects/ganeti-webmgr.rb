
name 'ganeti-webmgr'
maintainer 'Lance Albertson'
homepage 'https://code.osuosl.org/projects/ganeti-webmgr'

replaces        'ganeti-webmgr'
install_path    '/opt/ganeti-webmgr'
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1

# creates required build directories
dependency 'preparation'

# ganeti-webmgr dependencies/components
dependency 'ganeti-webmgr'

# version manifest file
dependency 'version-manifest'

exclude '\.git*'
exclude 'bundler\/git'
