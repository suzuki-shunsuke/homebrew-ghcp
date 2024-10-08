# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghcp < Formula
  desc "Tool to fork a repository, commit files, create a pull request and upload assets using GitHub API
"
  homepage "https://github.com/suzuki-shunsuke/ghcp"
  version "1.16.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/suzuki-shunsuke/ghcp/releases/download/v1.16.0/ghcp_darwin_amd64.tar.gz"
      sha256 "ca5eb65ed4469148b539aa4b83e1fb77887fac3c36896df8e5cc8702e7488b1a"

      def install
        bin.install "ghcp"
      end
    end
    on_arm do
      url "https://github.com/suzuki-shunsuke/ghcp/releases/download/v1.16.0/ghcp_darwin_arm64.tar.gz"
      sha256 "56b0ed7135feb44a2a7ec6a8960ca1e4c15d64b45a4ecdb307fc91a4ebbf33ac"

      def install
        bin.install "ghcp"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/ghcp/releases/download/v1.16.0/ghcp_linux_amd64.tar.gz"
        sha256 "89d99fa73477c11a60b274e385b9e990125d411c73f971d4cf21069bf7db92c6"

        def install
          bin.install "ghcp"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/ghcp/releases/download/v1.16.0/ghcp_linux_arm64.tar.gz"
        sha256 "7de544bf3cd3fa2830671f078484f0aa2c9c8bec8d7e887835250e77a62cc775"

        def install
          bin.install "ghcp"
        end
      end
    end
  end

  test do
    system "#{bin}/ghcp --version"
  end
end
