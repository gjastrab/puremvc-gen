# -*- ruby -*-

require 'rubygems'
require 'hoe'
require './lib/pure_m_v_c_gen/version.rb'

PKG_NAME      = "puremvc-gen"
PKG_BUILD     = ENV['PKG_BUILD'] ? '.' + ENV['PKG_BUILD'] : ''
version = PureMVCGen::Version::STRING.dup
if ENV['SNAPSHOT'].to_i == 1
  version << "." << Time.now.utc.strftime("%Y%m%d%H%M%S")
end
PKG_VERSION   = version
PKG_FILE_NAME = "#{PKG_NAME}-#{PKG_VERSION}"

Hoe.new(PKG_NAME, PKG_VERSION) do |p|
  p.rubyforge_name = 'gjastrab' # if different than lowercase project name
  p.developer('Greg Jastrab', 'gjastrab.dev@gmail.com')
  p.name = PKG_NAME
  p.version = PKG_VERSION
  #p.platform = Gem::Platform::RUBY
  p.author = "Greg Jastrab"
  p.email = "gjastrab.dev@gmail.com"
  p.description = %q(An ANT-based PureMVC generator.)
  p.summary = p.description # More details later??
  p.remote_rdoc_dir = PKG_NAME # Release to /PKG_NAME
  #  p.changes = p.paragraphs_of('CHANGELOG', 0..1).join("\n\n")
  p.need_zip = true
  p.need_tar = false
end

# vim: syntax=Ruby
