# AGENTS.md

This file provides guidance to agents when working with code in this repository.

## 项目特定命令
- **安装依赖**: `R -f setup.R` (在devcontainer创建后自动执行)
- **运行Shiny应用**: `R -f example.R` (示例应用)
- **R包管理**: 使用setup.R脚本统一管理依赖

## 开发环境配置
- **容器化开发**: 使用.devcontainer/中的Docker配置
- **代理设置**: 容器内已配置HTTP/HTTPS代理 (http://host.docker.internal:10808)
- **镜像加速**: 使用清华大学镜像源 (CRAN和PyPI)
- **R工具链**: radian作为R终端，languageserver提供LSP支持

## 项目结构特点
- **空文件**: app.py和requirements.txt为空，项目主要使用R
- **R Markdown支持**: example.Rmd展示基本用法
- **依赖管理**: setup.R是唯一的依赖管理方式，无其他配置文件

## 关键发现
- **Shiny应用模式**: 使用标准的ui/server函数结构
- **开发容器**: postCreateCommand自动运行setup.R安装R包
- **VS Code配置**: .devcontainer/devcontainer.json中配置了R特定设置
- **调试支持**: 安装了vscDebugger包用于R代码调试

## 非标准实践
- 使用Docker容器确保环境一致性而非本地R安装
- 通过devcontainer.json配置R路径和参数而非项目内配置
- 依赖自动安装机制 (postCreateCommand) 而非手动包管理