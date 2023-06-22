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
#' priceModelUI()
priceModelUI <- function(tabTitle = '采购价格综合查询',
                 colTitles = c('上传数据', '显示区域'),
                 widthRates = c(4, 8),
                 func_left = priceModel_left,
                 func_right = priceModel_right) {
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
priceModel_left <- function() {
  res <- tagList(
    shiny::h4('按图号查询最新采购价格，来源于采购发票或采购调价单,不输入表示全部'),
    tsui::mdl_text2(id = 'txt_priceModel_chartNo',label = '按图号查询',value = ''),
    shiny::actionButton(inputId = 'btn_priceModel_query' , label = '查询数据'),
    tsui::mdl_download_button(id = 'dl_priceModel',label = '下载数据')
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
priceModel_right <- function() {
  res <- tagList(tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_priceModel', label = '采购价格查询')))
  return(res)
  
}
