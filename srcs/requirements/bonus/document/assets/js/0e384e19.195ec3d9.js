(self.webpackChunkinception_outline=self.webpackChunkinception_outline||[]).push([[671],{426:function(t,e,n){"use strict";n.r(e),n.d(e,{frontMatter:function(){return p},contentTitle:function(){return s},metadata:function(){return l},toc:function(){return d},default:function(){return c}});var o=n(2122),i=n(9756),r=(n(7294),n(3905)),a=["components"],p={sidebar_position:1},s="Intro",l={unversionedId:"intro",id:"intro",isDocsHomePage:!1,title:"Intro",description:"About Inception",source:"@site/docs/intro.md",sourceDirName:".",slug:"/intro",permalink:"/doc/docs/intro",editUrl:"https://github.com/facebook/docusaurus/edit/master/website/docs/intro.md",version:"current",sidebarPosition:1,frontMatter:{sidebar_position:1},sidebar:"tutorialSidebar",next:{title:"\u4e3b\u306a\u8ab2\u984c\u306e\u8981\u4ef6",permalink:"/doc/docs/requirements"}},d=[{value:"About Inception",id:"about-inception",children:[]},{value:"Installation",id:"installation",children:[]}],u={toc:d};function c(t){var e=t.components,n=(0,i.Z)(t,a);return(0,r.kt)("wrapper",(0,o.Z)({},u,n,{components:e,mdxType:"MDXLayout"}),(0,r.kt)("h1",{id:"intro"},"Intro"),(0,r.kt)("h2",{id:"about-inception"},"About Inception"),(0,r.kt)("p",null,"Inception\u306f\u3001",(0,r.kt)("strong",{parentName:"p"},"docker-compose"),"\u3092\u4f7f\u3044web\u30a2\u30d7\u30ea\u30b1\u30fc\u30b7\u30e7\u30f3\u30b5\u30fc\u30d3\u30b9\u306e\u69cb\u7bc9\u3092\u884c\u3046\u8ab2\u984c\u3067\u3059\u3002"),(0,r.kt)("p",null,(0,r.kt)("strong",{parentName:"p"},"docker-compose"),"\u3068\u306f\u3001dockerfile\u304b\u3089\u30d3\u30eb\u30c9\u3055\u308c\u305f\u30b3\u30f3\u30c6\u30ca\u306e\u6319\u52d5\u3084\u9023\u643a\u3092\u8a2d\u5b9a\u3057\u3001\u8907\u6570\u306e\u30b3\u30f3\u30c6\u30ca\u304b\u3089\u4e00\u3064\u306e\u30b5\u30fc\u30d3\u30b9\u3092\u69cb\u7bc9\u3059\u308b\u30c4\u30fc\u30eb\u3067\u3059\u3002"),(0,r.kt)("p",null,"\u3053\u308c\u3089\u306e\u8a2d\u5b9a\u306f\u3001",(0,r.kt)("strong",{parentName:"p"},"docker-compose.yml"),"\u306b\u8a18\u8f09\u3055\u308c\u307e\u3059\u3002"),(0,r.kt)("p",null,"Inception\u3067\u306f\u3001",(0,r.kt)("strong",{parentName:"p"},"nginx"),"\u3001",(0,r.kt)("strong",{parentName:"p"},"wordpress"),"\u3001",(0,r.kt)("strong",{parentName:"p"},"php-fpm"),"\u3001",(0,r.kt)("strong",{parentName:"p"},"mariadb"),"\u304c\u7a3c\u50cd\u3059\u308b\u30b3\u30f3\u30c6\u30ca\u3092\u8a2d\u5b9a\u3057\u3001web\u4e0a\u304b\u3089\u30a2\u30af\u30bb\u30b9\u3067\u304d\u308bwordpress\u30b5\u30fc\u30d3\u30b9\u3092\u69cb\u7bc9\u3057\u307e\u3059\u3002"),(0,r.kt)("h2",{id:"installation"},"Installation"),(0,r.kt)("p",null,"\u8ab2\u984c\u306e\u8981\u4ef6\u3092\u6e80\u305f\u3059\u305f\u3081\u3001/home/login/\u3078\u306e\u30c7\u30a3\u30ec\u30af\u30c8\u30ea\u4f5c\u6210\u3001/etc/hosts\u30d5\u30a1\u30a4\u30eb\u306e\u7de8\u96c6\u304c\u5fc5\u8981\u306b\u306a\u308a\u307e\u3059\u3002"),(0,r.kt)("pre",null,(0,r.kt)("code",{parentName:"pre",className:"language-Makefile",metastring:'title="Makefile"',title:'"Makefile"'},'...\nset_up: volume add_host extract_wp\n    docker-compose -f $(YML) up -d --build\n// highlight-start\n# root\u6a29\u9650\u304c\u5fc5\u8981\uff01\nvolume:\n    mkdir -p /home/ynakamot/data/mariadb\n    mkdir -p /home/ynakamot/data/wordpress\n\nadd_host:\n    echo "127.0.0.1 $(DOMAIN)" >> /etc/hosts\n// highlight-end\nextract_wp:\n...\n')),(0,r.kt)("p",null,"\u305d\u306e\u305f\u3081\u3001\u521d\u56de\u8d77\u52d5\u6642\u306e\u307f ",(0,r.kt)("inlineCode",{parentName:"p"},"sudo")," \u30b3\u30de\u30f3\u30c9\u7d4c\u7531\u3067\u306e ",(0,r.kt)("inlineCode",{parentName:"p"},"make set_up")," \u306e\u5b9f\u884c\u3092\u304a\u9858\u3044\u3057\u307e\u3059\u3002"),(0,r.kt)("pre",null,(0,r.kt)("code",{parentName:"pre",className:"language-shell",metastring:'title="\u521d\u56de\u30bb\u30c3\u30c8\u30a2\u30c3\u30d7"',title:'"\u521d\u56de\u30bb\u30c3\u30c8\u30a2\u30c3\u30d7"'},"sudo make set_up\n")),(0,r.kt)("p",null,"\u4e8c\u56de\u76ee\u4ee5\u964d\u306f ",(0,r.kt)("inlineCode",{parentName:"p"},"make")," \u306e\u307f\u3067\u554f\u984c\u3042\u308a\u307e\u305b\u3093\u3002"),(0,r.kt)("p",null,"\u7a3c\u50cd\u3057\u3066\u3044\u308b\u30b5\u30fc\u30d3\u30b9\u3092\u505c\u6b62\u3001\u30b3\u30f3\u30c6\u30ca\u3001\u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u3092\u524a\u9664\u3059\u308b\u969b\u306f\u3001 ",(0,r.kt)("inlineCode",{parentName:"p"},"make down")," \u3092\u304a\u9858\u3044\u3057\u307e\u3059\u3002"))}c.isMDXComponent=!0}}]);