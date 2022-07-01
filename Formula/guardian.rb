# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool."
  homepage "https://github.com/odpf/guardian"
  version "0.2.10-alpha5"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10-alpha5/guardian_0.2.10-alpha5_macos_arm64.tar.gz"
      sha256 "07e0800d9541150e68cc9e8a8fb48ed95f9b7f5a9b55232c06093dc9a2105b4f"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10-alpha5/guardian_0.2.10-alpha5_macos_x86_64.tar.gz"
      sha256 "34eb779630816eda36128e7efc4e35cda063e9cbb26cfd739a495735a955abb5"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10-alpha5/guardian_0.2.10-alpha5_linux_arm64.tar.gz"
      sha256 "086f585abaa668bede41e9f3145708da5a5778a285502ddbd26018eca304061b"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10-alpha5/guardian_0.2.10-alpha5_linux_armv6.tar.gz"
      sha256 "84830f6d30aec4c0e28cda429447b73a8c4374633024255c7a8312e350b3890c"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10-alpha5/guardian_0.2.10-alpha5_linux_x86_64.tar.gz"
      sha256 "ffd6d7faceba66a77539fadf694c50fcddec1ad324f673977b1dfb7599cb67ca"

      def install
        bin.install "guardian"
      end
    end
  end

  depends_on "git"
end
