# AGENTS.md - Architect Mode

This file provides guidance to agents when working with code in this repository.

## 架构规则
- **Shiny应用架构**: 使用标准的ui/server函数分离架构
- **容器化架构**: 基于Docker的开发环境，确保环境一致性
- **依赖管理架构**: 统一的setup.R脚本管理所有R包依赖

## 架构决策
- **开发环境**: 使用.devcontainer/进行容器化开发而非本地安装
- **包管理**: 通过postCreateCommand自动安装依赖而非手动管理
- **镜像优化**: 使用清华大学镜像源加速CRAN和PyPI下载
- **工具链**: radian + languageserver + vscDebugger的完整R开发工具链

## 非标准架构选择
- 容器化确保环境一致性而非本地R安装
- 通过devcontainer.json配置而非项目内配置文件
- 自动依赖安装机制简化开发流程
- 集成调试支持 (vscDebugger) 而非外部调试工具