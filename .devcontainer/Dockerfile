# [Choice] Python version (use -bookworm or -bullseye variants on local arm64/Apple Silicon): 3, 3.13, 3.12, 3.11, 3.10, 3.9, 3-bookworm, 3.13-bookworm, 3.12-bookworm, 3.11-bookworm, 3.10-bookworm, 3.9-bookworm, 3-bullseye, 3.13-bullseye, 3.12-bullseye, 3.11-bullseye, 3.10-bullseye, 3.9-bullseye, 3-buster, 3.12-buster, 3.11-buster, 3.10-buster, 3.9-buster
ARG VARIANT=3-bookworm
FROM python:${VARIANT}

# >>> SPEEDUP zh-CN
RUN test -f /etc/apt/sources.list && \
    sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list || \
    sed -i 's/security.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list || \
    exit 0

# Compatible with DEB822
RUN test -f /etc/apt/sources.list.d/debian.sources && \
    sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list.d/debian.sources || \
    sed -i 's/security.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list.d/debian.sources || \
    exit 0

# Setup pypi mirrors
RUN pip config set --global global.index-url "https://mirrors.aliyun.com/pypi/simple" || \
    exit 0 
# && pip config set global.extra-index-url "<url1> <url2>..." # extra index like pytorch 

# <<< SPEEDUP zh-CN

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    # Remove imagemagick due to https://security-tracker.debian.org/tracker/CVE-2019-10131
    && apt-get purge -y imagemagick imagemagick-6-common 

# Temporary: Upgrade python packages due to https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-40897 and https://github.com/advisories/GHSA-2mqj-m65w-jghx
# They are installed by the base image (python) which does not have the patch.
RUN python3 -m pip install --upgrade \
    setuptools==75.6.0 \
    gitpython==3.1.41

# [Optional] If your pip requirements rarely change, uncomment this section to add them to the image.
# COPY requirements.txt /tmp/pip-tmp/
# RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
#    && rm -rf /tmp/pip-tmp

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1

# Install R
RUN apt-get update -qq && \
    # 安装你需要的包
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
    r-base r-base-dev r-cran-boot r-cran-class \
    r-cran-cluster r-cran-codetools r-cran-foreign \
    r-cran-kernsmooth r-cran-lattice r-cran-mass \
    r-cran-matrix r-cran-mgcv r-cran-nlme r-cran-nnet \
    r-cran-rpart r-cran-spatial r-cran-survival && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# SeppedUP CRAN
RUN echo 'options("repos" = c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))' >> ~/.Rprofile

# Dependencies: VS Code Plugin --> radian, rmarkdown --> pandoc
RUN pip install -U radian && \
    wget https://github.com/jgm/pandoc/releases/download/3.6.4/pandoc-3.6.4-1-amd64.deb && \
    dpkg -i pandoc-3.6.4-1-amd64.deb && rm pandoc-3.6.4-1-amd64.deb

# Recommend R add-ons
# Dependencies: VS Code Plugin --> languageserver, rmarkdown
RUN R -e 'install.packages(c("languageserver", "rmarkdown", "httpgd"), repos = getOption("repos"))'