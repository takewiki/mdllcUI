#' 按纽生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' priceSummaryUI()
priceSummaryUI <- function(tabTitle = 'DM核价汇总表',
                          colTitles = c('上传数据', '显示区域'),
                          widthRates = c(4, 8),
                          func_left = priceSummary_left,
                          func_right = priceSummary_right) {
  #俩栏式设置，可以复制
  res = tsui::uiGen(
    tabTitle = tabTitle,
    colTitles = colTitles,
    widthRates = widthRates,
    func_left = func_left,
    func_right = func_right
  )
  return(res)
}


#' 上传数据
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_left()
priceSummary_left <- function() {
  res <- tagList(
    shiny::actionButton(inputId = 'btn_priceSummary_one' , label = '查看核价汇总表'),
    tsui::mdl_download_button(id = 'dl_priceSummary',label = '下载核价汇总表')
  )
  return(res)
  
}



#' 预览区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_right()
priceSummary_right <- function() {
  res <- tagList(tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_priceSummary', label = '核价汇总表查询')))
  return(res)
  
}
