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
#' buttonUI()
lcUI <- function(tabTitle = '采购调价单',
                    colTitles = c('上传数据', '显示区域'),
                    widthRates = c(4, 8),
                    func_left = buttonUI_left,
                    func_right = buttonUI_right) {
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
buttonUI_left <- function() {
  res <- tagList(
    tsui::uiTemplate(templateName = '采购调价表'),
    tsui::mdl_file(id = 'uploadfile', label ='上传excel数据表'),
    shiny::actionButton(inputId = 'btn_view' , label = '预览数据'),
    shiny::actionButton(inputId = 'btn_upload' , label = '上传数据'),
    br(),
    hr(),
    shiny::h4('按图号查询最新外购调价信息,不输入表示全部'),
    tsui::mdl_text2(id = 'txt_purchasePriceAdj_chartNo',label = '按图号查询',value = ''),
    shiny::actionButton(inputId = 'btn_purchaseAdj_query' , label = '查询数据'),
    tsui::mdl_download_button(id = 'btn_download',label = '下载数据')
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
buttonUI_right <- function() {
  res <- tagList(tsui::uiScrollX(tsui::mdl_dataTable(id = 'view_data', label = '出口')))
  return(res)
  
}
