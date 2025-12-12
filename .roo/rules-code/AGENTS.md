# AGENTS.md - Code Mode

This file provides guidance to agents when working with code in this repository.

## R代码开发规则
- **Shiny应用结构**: 使用标准的ui/server函数结构，示例见example.R
- **包依赖管理**: 所有R包依赖通过setup.R统一安装和管理
- **R Markdown**: example.Rmd展示基本用法，需要pandoc支持
- **调试支持**: 使用vscDebugger包进行R代码调试

## 开发环境配置
- **R终端**: 使用radian作为R终端 (配置在.devcontainer/devcontainer.json)
- **LSP支持**: languageserver提供代码补全和语法检查
- **容器化开发**: 所有开发在Docker容器中进行，确保环境一致性

## 非标准实践
- 依赖自动安装机制 (postCreateCommand) 而非手动包管理
- 通过devcontainer.json配置R路径和参数而非项目内配置
- 使用清华大学镜像源加速CRAN包下载