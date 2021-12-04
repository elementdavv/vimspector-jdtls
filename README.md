# Vimspector-Jdtls

Java debug configurations for combination of vimspector and nvim-jdtls.

## Introduction

Vimspector provides java debug support for YouCompleteMe combination, and nvim-jdtls provides java debug support for nvim-dp combination. But there is no configurations suggestion for combination of vimspector and nvim-jdtls. That is this plugin does.

## Install

Install [vimspector](https://github.com/puremourning/vimspector) and [nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls), and config them as described in their homepage. For vimspector, install java gadget with `./install_gadget.py --force-enable-java` or `:VimspectorInstall vscode-java-debug`. For nvim-jdtls, install [eclipse.jdt.ls](https://github.com/eclipse/eclipse.jdt.ls), no need to download another [java-debug](https://github.com/microsoft/java-debug) because vimspector has got it.

As for this plugin, use your favorite plugin manager to install, eg:

```
Plug 'elementdavv/Vimspector-Jdtls'
```

## Configurations

Config vimspector and nvim-jdtls as described in their homepage. For vimspector, install java gadget with `./install_gadget.py --force-enable-java` or `:VimspectorInstall vscode-java-debug`. For nvim-jdtls, install [eclipse.jdt.ls](https://github.com/eclipse/eclipse.jdt.ls). There is no need to download another [java-debug](https://github.com/microsoft/java-debug) because vimspector has got it.

On complete configurations of vimspector and nvim-jdtls, the plugin do not need any configuration.

## Usage

The plugin provide a command `VimspectorjdtlsStartJavaDebug` and map to <Leader><F5>. You can remap to other key as you like.

## Issues

hotcodereplace feature not supported.
