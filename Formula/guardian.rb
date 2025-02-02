# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool."
  homepage "https://github.com/odpf/guardian"
  version "0.2.10"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10/guardian_0.2.10_macos_x86_64.tar.gz"
      sha256 "230899a280c6b4a1d91de343947558c84ed87e1a88361031a87645d2ffab1322"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10/guardian_0.2.10_macos_arm64.tar.gz"
      sha256 "76b5b7387092be8e8d5195ac0dda1f5505fe370d81ef983fe437e684911e802a"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10/guardian_0.2.10_linux_x86_64.tar.gz"
      sha256 "bfa4cc35016962b3c4e83adfb6dd55fee6959745537acff0aa03809baaf104a3"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10/guardian_0.2.10_linux_armv6.tar.gz"
      sha256 "7fc1ea50d11e76f8a263d85c64a319c947367a067ae5a1984e352749b15dc1a6"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10/guardian_0.2.10_linux_arm64.tar.gz"
      sha256 "b8ff15c16b565440e7d9056fd105b53e70ad3520da0ece32423c1b6f666072e4"

      def install
        bin.install "guardian"
      end
    end
  end

  depends_on "git"
end
