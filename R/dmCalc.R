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
#' dmCalcUI()
dmCalcUI <- function(tabTitle = 'DM单成本卷算',
                         colTitles = c('上传数据', '显示区域'),
                         widthRates = c(4, 8),
                         func_left = dmCalc_left,
                         func_right = dmCalc_right) {
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
dmCalc_left <- function() {
  res <- tagList(
    shiny::actionButton(inputId = 'btn_dmCalc_sync' , label = '同步DM单数据至中台ODS'),
    shiny::actionButton(inputId = 'btn_dmCalc_all' , label = '重算所有DM单'),
    shiny::h4('输入DM单号,只同步指定DM单数据'),
    tsui::mdl_text2(id = 'txt_dmCalc_chartNo',label = '指定DM单号',value = ''),
    shiny::actionButton(inputId = 'btn_dmCalc_one' , label = '运算指定DM单号')
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
dmCalc_right <- function() {
  res <- tagList(tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_dmCalc', label = '运算结果查询')))
  return(res)
  
}
