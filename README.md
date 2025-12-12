# R Shiny 项目模板

这是一个基于 R Shiny 的 Web 应用程序开发模板项目。

## 项目特性

- **Shiny Web 应用框架**: 使用 R Shiny 构建交互式 Web 应用
- **数据科学工具包**: 集成 tidyverse 生态系统
- **可视化**: 使用 ggplot2 进行数据可视化
- **数据处理**: 使用 dplyr 进行数据操作
- **仪表板**: 使用 shinydashboard 构建专业仪表板
- **调试支持**: 集成 vscDebugger 包进行 R 代码调试
- **开发容器**: 预配置的 VS Code 开发环境

## 项目结构

```
.
├── .devcontainer/          # VS Code 开发容器配置
├── .roo/                   # Roo 配置文件
├── .vscode/                # VS Code 工作区配置
├── example.R               # Shiny 应用示例（Hello Shiny）
├── example.Rmd             # R Markdown 示例
├── setup.R                 # 依赖安装脚本
├── README.md               # 项目说明文档
└── AGENTS.md               # 代理指导文档
```

## 快速开始

### 环境要求

- Docker
- VS Code
- Dev Containers 扩展

### 使用模板

1. **克隆或下载此模板**
   ```bash
   git clone <repository-url>
   cd <your-project-directory>
   ```

2. **在 VS Code 中打开项目**
   - 安装 "Dev Containers" 扩展
   - 按 `Ctrl+Shift+P` (Windows/Linux) 或 `Cmd+Shift+P` (macOS)
   - 选择 "Dev Containers: Reopen in Container"

3. **自动安装依赖**
   - 开发容器创建后会自动运行 `setup.R` 脚本
   - 安装所有必需的 R 包

4. **运行示例应用**
   ```bash
   R -f example.R
   ```

5. **访问示例应用**
   - 在浏览器中打开 `http://localhost:9000`
   - 查看 "Hello Shiny!" 示例应用

## 基于此模板开发

### 创建新的 Shiny 应用

1. **复制示例文件**
   ```bash
   cp example.R my_app.R
   ```

2. **修改应用代码**
   - 编辑 `my_app.R` 文件
   - 定义您的 UI 和服务器逻辑
   - 使用 `shinyApp(ui, server)` 运行应用

3. **运行您的应用**
   ```bash
   R -f my_app.R
   ```

### 自定义依赖

1. **编辑 setup.R**
   - 添加您需要的 R 包到 `packages` 向量
   - 保存文件

2. **重新安装依赖**
   ```bash
   R -f setup.R
   ```

## 配置说明

### 开发容器配置

- **代理设置**: 配置了 HTTP/HTTPS 代理 (http://host.docker.internal:10808)
- **R 工具链**: 使用 radian 作为 R 终端
- **LSP 支持**: 安装了 languageserver 提供代码补全
- **镜像源**: 使用清华大学镜像源加速 R 包下载

### VS Code 设置

- R 路径: `/usr/bin/R`
- R 终端: `/usr/local/bin/radian`
- 扩展: R、调试器、拼写检查等

## 调试

- 使用 VS Code 的 R 调试功能
- 安装了 vscDebugger 包支持断点调试
- 在终端中查看 R 脚本输出

## 常用命令

```bash
# 安装依赖
R -f setup.R

# 运行示例应用
R -f example.R

# 在 R 交互式终端中工作
radian
```

## 许可证

本项目采用 [LICENSE](LICENSE) 中指定的许可证。

## 贡献

欢迎提交 Issue 和 Pull Request 来改进模板。

## 联系方式

如有问题，请通过 GitHub Issues 联系我们。