require 'fileutils'

SKIP = %w{
  .
  ..
  .git
  .gitignore
  Rakefile
  README.md
} + File.open('.gitignore').read.split

def dotfiles
  Dir['*'] + Dir['.*'] - SKIP
end

def backup_dotfiles
  FileUtils.mkdir_p(backup_dir = File.expand_path("~/.dotfiles_#{Time.now.to_i}"))

  dotfiles.each do |dotfile|
    FileUtils.mv(
      File.expand_path("~/#{dotfile}"),
      File.expand_path("#{backup_dir}/#{dotfile}")
    ) if File.exists?(File.expand_path("~/#{dotfile}"))
  end
end

def symlink_dotfiles
  dotfiles.each do |dotfile|
    FileUtils.ln_s(
      File.expand_path(dotfile),
      File.expand_path("~/#{dotfile}")
    )
  end
end

def setup_vundle
  `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
  `vim +BundleInstall +qall`
end

desc 'backup and symlink this .shit'
task :backup_and_symlink_dotfiles do
  puts 'Backing up old .shit...'
  backup_dotfiles

  puts 'Symlinking this .shit...'
  symlink_dotfiles

  puts 'Setting up Vundle...'
  setup_vundle

  puts 'Done.'
end

task :default => :backup_and_symlink_dotfiles
