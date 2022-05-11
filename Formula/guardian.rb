# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool."
  homepage "https://github.com/odpf/guardian"
  version "0.2.8-alpha4"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/odpf/guardian/releases/download/v0.2.8-alpha4/guardian_0.2.8-alpha4_macos_arm64.tar.gz"
      sha256 "ed43331fd1fa6d41de56c9a1eb00e70c7fc6dc7d34cf59457c911dbbbd10b002"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.8-alpha4/guardian_0.2.8-alpha4_macos_x86_64.tar.gz"
      sha256 "3a9ae253064d598025e4b18e01f9ac222b11429a4c1c429042b60e7fa8742fb9"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.8-alpha4/guardian_0.2.8-alpha4_linux_armv6.tar.gz"
      sha256 "a7d2a165116a0d4f5022b69acd90aafbcbc3651270f479f4d8a28a512a33e8e8"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.8-alpha4/guardian_0.2.8-alpha4_linux_arm64.tar.gz"
      sha256 "0643d1f4c9a77a156fe484d4b3085140d258005cdec4ce72cf2492b4fdc8c53c"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.8-alpha4/guardian_0.2.8-alpha4_linux_x86_64.tar.gz"
      sha256 "f0e0f4eb10bb11e9534daae30d47b1c5d979d79ee348f47aeb88ea694cf663a9"

      def install
        bin.install "guardian"
      end
    end
  end

  depends_on "git"
end
