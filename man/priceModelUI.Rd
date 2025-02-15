% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/priceModel.R
\name{priceModelUI}
\alias{priceModelUI}
\title{按纽生成生成器界面}
\usage{
priceModelUI(
  tabTitle = "采购价格综合查询",
  colTitles = c("上传数据", "显示区域"),
  widthRates = c(4, 8),
  func_left = priceModel_left,
  func_right = priceModel_right
)
}
\arguments{
\item{tabTitle}{标题}

\item{colTitles}{主页标题}

\item{widthRates}{左右比例}

\item{func_left}{左函数}

\item{func_right}{右函数}
}
\value{
返回值
}
\description{
按纽生成生成器界面
}
\examples{
priceModelUI()
}
