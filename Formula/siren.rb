# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Siren < Formula
  desc "Universal data observability tool."
  homepage "https://github.com/odpf/siren"
  version "0.4.0"
  license "Apache 2.0"

  on_macos do
    url "https://github.com/odpf/siren/releases/download/v0.4.0/siren_0.4.0_macos_x86_64.tar.gz"
    sha256 "64b9bcfb7d1e7c12400f6ff0f8e770b977b964dd7df42165f301a6b248db2738"

    def install
      bin.install "siren"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Siren
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/siren/releases/download/v0.4.0/siren_0.4.0_linux_x86_64.tar.gz"
      sha256 "25128f93ff3e27fc050e3984ad9e1b427333d82a903429493a1bb0f673050be2"

      def install
        bin.install "siren"
      end
    end
  end

  depends_on "git"
end
