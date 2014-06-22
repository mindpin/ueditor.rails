do ->
  transP = (node)->
    node.tagName = 'p'
    node.setStyle()

  MINDPIN_UEDITOR_CONFIG =
    theme: 'mindpin'
    wordCount: false
    elementPathEnabled: false
    imageScaleEnabled: false
    serverUrl: null
    imagePopup: false
    iframeCssUrl: '/assets/ueditor/iframe.css'

    insertunorderedlist: { 'disc': '' }
    insertorderedlist: { 'decimal': '' }

    pasteplain: true
    filterTxtRules: {
      # '-' : 'script style object iframe embed input select',
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