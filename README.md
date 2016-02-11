
# Nextleap project website

Nextleap project website

## Installation

### Prerequisites

  - ruby (rbenv or rvm recommended)
  - bundler
  - ImageMagick
  - node + rpm

### osx

Follow the guidelines to install:

  - rbenv + ruby-build: https://github.com/rbenv/rbenv#homebrew-on-mac-os-x
  - bundler: http://bundler.io/
  - ImageMagick: http://brewformulas.org/Imagemagick (if you use Homebrew of course)
  - node + rpm: https://nodejs.org/en/

### Linux

TODO: write instructions for Linux

### Windows

TODO: write instructions for Windows

## Usage

### Configuration

Copy the file `src/data/site.yaml.tmpl` to `src/data/site.yaml`.
If you intend to deploy the website on the server (and if you have the proper credentials of course), fill the `src/data/site.yaml` file with the information that were provided to you.

### Project Initialization

All the project assets and dependency are downloaded with the following commands:

```shell
cd src
rpm install
./node_modules/.bin/bower install
bundle install
```

### middleman commands

Here are the commands made available by middleman.

```shell
bundle exec middleman build [options]            # Builds the static site for deployment
bundle exec middleman help [COMMAND]             # Describe available commands or one specific command
bundle exec middleman server [options]           # Start the preview server
bundle exec middleman deploy [options]           # deploy the code on the server
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## Credits

We would not be able to setup this site without the help of Open Source software and its community.
Here is an non exhaustive list of the great projects thet this website uses:

  - [middleman]: http://middlemanapp.org
  - [ruby]: http://ruby-lang.org
  - [Compass]: http://compass-style.org
  - [Sprockets]: https://github.com/sstephenson/sprockets
  - [Autoprefixer]:https://github.com/postcss/autoprefixer
  - [Zurb Foundation]: http://foundation.zurb.com
  - [middleman-simple-thumbnailer]: https://github.com/kubenstein/middleman-simple-thumbnailer
  - [bundler]: http://bundler.io/
  - [ImageMagick]: http://www.imagemagick.org
  - [nodejs]: https://nodejs.org/en/


## License

The code of this website is under the GNU GPL v3 license.

The content of this website is under the "Creative Commons Attribution 4.0 International Public License".

A copy of both these licenses can be found in the `LICENSE` file.

All logo and trademarks mentioned and hosted on this repository are property of their respective owner, and are under their own license for use and redistribution. Please check directly with them.
