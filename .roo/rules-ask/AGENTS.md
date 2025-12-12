# AGENTS.md - Ask Mode

This file provides guidance to agents when working with code in this repository.

## 文档和解释规则
- **项目类型**: R语言Shiny Web应用开发项目
- **主要文件**: example.R包含完整的Shiny应用示例
- **依赖管理**: setup.R是唯一的依赖管理文件

## 项目结构说明
- **空文件**: app.py和requirements.txt为空，项目主要使用R
- **R Markdown**: example.Rmd展示基本用法
- **开发环境**: 使用.devcontainer/进行容器化开发

## 关键概念
- **Shiny框架**: R的Web应用框架，使用ui/server模式
- **容器化开发**: 通过Docker确保环境一致性
- **镜像加速**: 使用清华大学镜像源提高下载速度