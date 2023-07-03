part of resource;

class ResourceDetailPage extends StatefulWidget {
  final int resourceId;
  const ResourceDetailPage({super.key, required this.resourceId});

  @override
  State<ResourceDetailPage> createState() => _ResourceDetailPageState();
}

class _ResourceDetailPageState extends State<ResourceDetailPage> {



  Resource? _resource;
  bool _loading = true;


  Future<void> _getInfo() async {
    try{
      final result = await getIt.get<MyFindResourceByIdApi>().request(R(data: {"id":widget.resourceId}));
      _resource =result;
    } on AppException catch(e){
      showIosDialog(e.getMessage);
    }
    _loading = false;
    setState(() {});
  }



  @override
  void setState(VoidCallback fn) {
    if(mounted){
      super.setState(fn);
    }
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(_getInfo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("瞬间"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
        ],
      ),
      body: IfWidget(expression: ()=>_resource!=null, trueBuild: (){
        return MyLoadingMoreCustomScrollView(
          slivers: [

            //用户信息展示
            Row(
              children: [
                DefaultAvatarWidget(_resource!.user.picture,size: 58,),
                SizedBox(width: 12),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 58
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("${_resource!.user.getShowUserName}")
                    ],
                  ),
                ).expanded,
                FilledButton(onPressed: (){

                }, child: Text("添加关注"))
              ],
            ).defaultPadding12.toSliverWidget,

            //内容展示
            Text('${_resource!.content}',style: context.textTheme.bodyLarge).defaultPadding12.toSliverWidget,

            SizedBox(height: 12,).toSliverWidget,

            //发布时间展示
            Text("${_resource!.createdate}",style: context.textTheme.labelSmall).defaultPadding12.toSliverWidget,
            _CommentsWidget(_resource!.id.toString())
          ],
        );
      },elseBuild: (){
        if(_loading){
          return LoadingWidget();
        }
        return Center(
          child: Text("获取资源失败"),
        );
      }),

      floatingActionButton: Row(
        children: [
          CupertinoTextField().expanded,
          ElevatedButton(onPressed: (){

          }, child: Text("添加评论"))
        ],
      ),
    );
  }
}


///评论组件
class _CommentsWidget extends JpaListWidget<Comment,MyResourceFindCommenApi> {
  final String resourceId;

  _CommentsWidget(this.resourceId);
  @override
  Widget buildLayout(BuildContext context, Comment item, int index) {
    return Container(
      child: Text('text'),
    );
  }

  @override
  JpaPageLoadingMore<Comment, MyResourceFindCommenApi> get sourceList => _CommentRepo(resourceId);

}

class _CommentRepo extends JpaPageLoadingMore<Comment,MyResourceFindCommenApi>{
  final String resourceId;

  _CommentRepo(this.resourceId);
  @override
  Comment covertData(Map<String, dynamic> json) {
    return Comment.fromJson(json);
  }

  @override
  Map<String, dynamic> get params => {
    "resourceId": resourceId
  };
}

