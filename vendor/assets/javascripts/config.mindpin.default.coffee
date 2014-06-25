_loadFile = window.UE.utils.loadFile

window.UE.utils.loadFile = (doc, obj, fn)->
  # TODO 
  # 如果将来要对文件加载进行精确控制
  # 例如要把一些目前的静态文件放到 assets pipeline 里的话
  # 就在这里修改扩展
  _loadFile doc, obj, fn

do ->
  transP = (node)->
    node.tagName = 'p'
    node.setStyle()

  MINDPIN_UEDITOR_CONFIG =
    # 主题样式
    theme: 'mindpin'
    themePath: '/ueditor/themes/'

    # 语言
    lang: 'zh-cn'
    langPath: '/ueditor/lang/'

    # iframe 内部样式
    iframeCssUrl: '/ueditor/themes/iframe.css'

    # html 查看工具
    sourceEditor: 'codemirror'
    codeMirrorJsUrl: '/ueditor/third-party/codemirror/codemirror.js'
    codeMirrorCssUrl: '/ueditor/third-party/codemirror/codemirror.css'

    # 关闭字数统计，关闭元素路径，关闭图片缩放，关闭图片操作浮层
    wordCount: false
    elementPathEnabled: false
    imageScaleEnabled: false
    imagePopup: false

    # 关闭服务器请求接口
    serverUrl: null

    # 无序和有序列表配置
    insertunorderedlist: { 'disc': '' }
    insertorderedlist: { 'decimal': '' }

    # 粘贴时的内容过滤
    pasteplain: true
    filterTxtRules: {
      'img': {$: {
        'src': true
      }}
      'span': {
        $: {
          'style': ['text-decoration']
        }
      }
      'a': {$: {
        'href': true  
      }}

      'strong': {$:{}}
      'p':    {$:{}}
      'br':   {$:{}}
      'div':  {$:{}}
      'ol':   {$:{}}
      'ul':   {$:{}}
      'li':   {$:{}}
      
      'caption': transP
      'th': transP
      'tr': transP
      'h1': transP
      'h2': transP
      'h3': transP
      'h4': transP
      'h5': transP
      'h6': transP

      'td':(node)->
        # 没有内容的td直接删掉
        txt = !!node.innerText();
        if txt
          node.parentNode.insertAfter(UE.uNode.createText(' &nbsp; &nbsp;'),node)
        node.parentNode.removeChild(node,node.innerText())
    }

  for key of MINDPIN_UEDITOR_CONFIG
    window.UEDITOR_CONFIG[key] = MINDPIN_UEDITOR_CONFIG[key]