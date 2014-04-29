
name 'ganeti-webmgr'
maintainer 'CHANGE ME'
homepage 'CHANGEME.com'

replaces        'ganeti-webmgr'
install_path    '/opt/ganeti-webmgr'
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1

# creates required build directories
dependency 'preparation'

# ganeti-webmgr dependencies/components
# dependency 'somedep'

# version manifest file
dependency 'version-manifest'

exclude '\.git*'
exclude 'bundler\/git'
