# Vimspector-Jdtls

Java debug configurations for combination of vimspector and nvim-jdtls.

## Introduction

Vimspector provides java debug support for YouCompleteMe combination, and nvim-jdtls provides java debug support for nvim-dap combination. But there is no configuration suggestions for the combination of vimspector and nvim-jdtls. That is this plugin does.

## Install

Install [vimspector](https://github.com/puremourning/vimspector) and [nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls) first. With the plugin, use your favorite plugin manager to install, eg:

```
Plug 'elementdavv/vimspector-jdtls'
```

## Configurations

Configure vimspector and nvim-jdtls as described in their homepages.

For vimspector, install java gadget with `./install_gadget.py --force-enable-java` or `:VimspectorInstall vscode-java-debug`. Then make corresponding configurations. The gadget includes java-debug-server jar file that nvim-jdtls will need it.

For nvim-jdtls, install [eclipse.jdt.ls](https://github.com/eclipse/eclipse.jdt.ls). There is no need to download [java-debug](https://github.com/microsoft/java-debug) because vimspector has got it.

On complete configurations of vimspector and nvim-jdtls, the plugin does not need any configuration.

## Usage

The plugin provides one command:

```
VimspectorJdtlsStartDebug
```

and map it to \<Leader>\<F5>. You can remap to other keys as you like.

This command is to starting a java debug session. Once the session starts, others operations are all the same as in vimspector.

## Issues

`hotcodereplace` feature not supported.
