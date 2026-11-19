{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

let
  setup = ''
    set -e
    bundle install
    npm install --no-audit --no-fund
    npm run build:js
  '';
in
{
  # https://devenv.sh/packages/
  # Native libraries needed to compile Jekyll's gem dependencies.
  packages = [
    pkgs.git
    pkgs.gnumake
    pkgs.gcc
    pkgs.pkg-config
    pkgs.libffi
    pkgs.zlib
    pkgs.libyaml
  ];

  # https://devenv.sh/languages/
  languages.ruby = {
    enable = true;
    bundler.enable = true;
  };

  # Node is only used to build assets/js/main.min.js (see package.json).
  languages.javascript = {
    enable = true;
    npm.enable = true;
  };

  # Gems are installed into .devenv/state/.bundle (BUNDLE_PATH is set by
  # languages.ruby), so nothing goes into the global Ruby directory.

  # https://devenv.sh/scripts/
  scripts.site-setup.exec = setup;

  # Serve the site at http://localhost:4000 with live reload.
  # _config_docker.yml blanks `url` so links point at localhost.
  scripts.site-serve.exec = ''
    set -e
    [ -f assets/js/main.min.js ] || site-setup
    bundle exec jekyll serve \
      --config _config.yml,_config_docker.yml \
      --host 127.0.0.1 --port 4000 \
      --livereload --force_polling "$@"
  '';

  scripts.site-build.exec = ''
    set -e
    bundle exec jekyll build --config _config.yml,_config_docker.yml "$@"
  '';

  # https://devenv.sh/processes/  (start with `devenv up`)
  processes.jekyll.exec = "site-serve";

  # https://devenv.sh/tasks/
  # Install gems and build JS automatically the first time you enter the shell.
  tasks."site:setup" = {
    exec = setup;
    status = "test -f assets/js/main.min.js && bundle check >/dev/null 2>&1";
    before = [ "devenv:enterShell" ];
  };

  enterShell = ''
    echo "Academic Pages dev shell"
    echo "  site-serve   serve at http://localhost:4000 (live reload)"
    echo "  site-build   build into _site/"
    echo "  devenv up    run the server as a devenv process"
  '';

  # https://devenv.sh/tests/
  enterTest = ''
    site-build
    test -f _site/index.html
  '';
}
