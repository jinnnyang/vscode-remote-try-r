# AGENTS.md - Debug Mode

This file provides guidance to agents when working with code in this repository.

## 调试规则
- **R调试器**: 使用vscDebugger包进行R代码调试
- **Shiny应用调试**: 通过R -f example.R运行应用进行调试
- **容器调试**: 在Docker容器内进行调试，环境已预配置

## 调试环境配置
- **VS Code配置**: .devcontainer/devcontainer.json中已配置R调试相关设置
- **代理设置**: 容器内已配置HTTP/HTTPS代理 (http://host.docker.internal:10808)
- **日志查看**: 在VS Code的终端中查看R脚本输出

## 调试注意事项
- 容器化环境确保调试环境一致性
- 使用radian终端进行交互式调试
- Shiny应用调试需要在容器内运行