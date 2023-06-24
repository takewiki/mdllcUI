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
#' priceDetailUI()
priceDetailUI <- function(tabTitle = 'DM核价明细表',
                     colTitles = c('上传数据', '显示区域'),
                     widthRates = c(4, 8),
                     func_left = priceDetail_left,
                     func_right = priceDetail_right) {
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
priceDetail_left <- function() {
  res <- tagList(
    shiny::h4('输入DM单号,查看DM单明细表'),
    tsui::mdl_text2(id = 'txt_priceDetail_chartNo',label = '指定DM单号',value = ''),
    shiny::actionButton(inputId = 'btn_priceDetail_one' , label = '查看核价明细表'),
    tsui::mdl_download_button(id = 'dl_priceDetail',label = '下载核价明细表')
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
priceDetail_right <- function() {
  res <- tagList(tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_priceDetail', label = '核价明细表查询')))
  return(res)
  
}
