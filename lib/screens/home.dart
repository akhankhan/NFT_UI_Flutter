part of 'path.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        margin: const EdgeInsets.only(bottom: 20.0, left: 15.0, right: 15.0),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            color: gray),
        child: TabBar(
          labelColor: primaryColorLight,
          unselectedLabelColor: lightGray,
          indicator:
              const UnderlineTabIndicator(borderSide: BorderSide(width: 0)),
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.home_rounded,
                size: 32,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search_rounded,
                size: 32,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.shopping_cart_rounded,
                size: 32,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person_rounded,
                size: 32,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: List.generate(
              nftList.length,
              (index) => NFTCard(
                  nftData: nftList[index],
                  handleClick: (context) =>
                      _goToNftDetail(context, nftList[index]))),
        ),
      ),
    );
  }
}

void _goToNftDetail(BuildContext context, nftData) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => NFTDetail(nftData: nftData)));
}
