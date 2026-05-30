# 我的博客

基于 Hugo + PaperMod 主题的个人博客，支持本地开发预览和远程部署。

## 技术栈

- **框架**: Hugo
- **主题**: PaperMod
- **部署**: Nginx + 服务器

## 快速开始

### 1. 环境准备

确保已安装 Hugo：
```bash
# Windows (使用 scoop)
scoop install hugo

# 或使用 Chocolatey
choco install hugo-extended
```

### 2. 本地开发

```bash
# 克隆项目
git clone <your-repo-url>
cd my-blog

# 安装主题（首次需要）
git submodule update --init --recursive

# 启动本地服务器（带草稿预览）
hugo server -D

# 访问 http://localhost:1313 预览
```

### 3. 创建新文章

```bash
# 创建新文章
hugo new content posts/my-new-post.md

# 或手动创建文件 content/posts/my-new-post.md
```

文章头部格式：
```yaml
---
title: "文章标题"
date: 2026-05-31
draft: false  # true 表示草稿，不会发布
tags: ["标签1", "标签2"]
categories: ["分类"]
summary: "文章摘要"
---
```

### 4. 本地预览

```bash
# 预览所有文章（包括草稿）
hugo server -D

# 仅预览已发布文章
hugo server

# 访问 http://localhost:1313
```

### 5. 构建和部署

```bash
# 构建静态文件
hugo --minify

# 构建后的文件在 public/ 目录
# 部署到服务器
bash update.sh
```

## 目录结构

```
my-blog/
├── archetypes/      # 文章模板
├── content/         # 博客内容
│   └── posts/       # 文章目录
├── public/          # 构建输出（Git 忽略）
├── themes/          # 主题目录
│   └── PaperMod/    # PaperMod 主题
├── hugo.toml        # Hugo 配置
├── update.sh        # 部署脚本
└── README.md
```

## 配置说明

主要配置在 `hugo.toml`：

- `baseURL`: 博客访问地址
- `title`: 博客标题
- `theme`: 使用的主题
- `params`: 主题参数（主题、阅读时间、目录等）

## 常用命令

| 命令 | 说明 |
|------|------|
| `hugo server -D` | 启动本地服务器（含草稿） |
| `hugo server` | 启动本地服务器（仅已发布） |
| `hugo new content posts/xxx.md` | 创建新文章 |
| `hugo --minify` | 构建生产版本 |
| `bash update.sh` | 部署到服务器 |

## 工作流程

1. **本地开发**: `hugo server -D` 启动预览
2. **写文章**: 在 `content/posts/` 创建 Markdown 文件
3. **预览效果**: 浏览器访问 `http://localhost:1313`
4. **发布**: 修改 `draft: false`，提交代码
5. **部署**: 运行 `bash update.sh` 推送到服务器

## 注意事项

- `.gitignore` 已配置忽略 `themes/PaperMod`，使用 submodule 管理
- `public/` 目录构建后生成，无需提交
- 部署脚本 `update.sh` 假设服务器使用 Nginx，路径为 `/var/www/html/`
