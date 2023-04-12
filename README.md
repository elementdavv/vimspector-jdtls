# Vimspector-Jdtls
Java debug configuration of vimspector width nvim-jdtls.

## Introduction
Vimspector provides [java debug with YouCompleteMe](https://github.com/puremourning/vimspector#usage-with-youcompleteme), and nvim-jdtls provides [java debug with nvim-dap](https://github.com/mfussenegger/nvim-jdtls#debugger-via-nvim-dap). If you are using vimspector and nvim-jdtls as well, there is a little trouble to make them working together. That is what this plugin does.

## Install
Use your favorite plugin manager to install, eg:
```
Plug 'puremourning/vimspector'
Plug 'mfussenegger/nvim-jdtls'
Plug 'elementdavv/vimspector-jdtls'
```

## Configurations
With vimspector, install java gadget with `./install_gadget.py --force-enable-java` or `:VimspectorInstall vscode-java-debug`. The gadget includes a java-debug-server file(vscode-java-debug/server/com.microsoft.java.debug.plugin-*.jar) that will be used in nvim-jdtls configuration.

With nvim-jdtls, download [eclipse.jdt.ls](https://www.eclipse.org/downloads/download.php?file=/jdtls/milestones/1.9.0/jdt-language-server-1.9.0-202203031534.tar.gz), optional [vscode-java-test](https://github.com/microsoft/vscode-java-test/releases/download/0.38.2/vscjava.vscode-java-test-0.38.2.vsix), and optional [google-java-format](https://github.com/google/google-java-format/releases/download/v1.16.0/google-java-format-1.16.0-all-deps.jar) [eclipse-formatter-xml](https://github.com/redhat-developer/vscode-java/blob/master/formatters/eclipse-formatter.xml). 

Configure vimspector and nvim-jdtls as described in their documents.

This plugin does not need any configuration.

If you are using nvim-lspconfig, do not call lspconfig.jdtls.setup{}, else you will got two language server instances.

Refer to [wiki](https://github.com/elementdavv/vimspector-jdtls/wiki) for sample configurations.

## Usage
To trigger java debug, call command:
```
VimspectorJdtlsStartDebug
```

The command has been mapped to \<Leader>\<F5>(different than vimspector's default shortcut \<F5>). You can remap to other keys as you like.

After a java debug session is started, all functions provided by vimspector and nvim-jdtls are all available.

## License↴
[GPL3](LICENSE) ©Element Davv

Any questions and/or suggestions are appreciatiated.
