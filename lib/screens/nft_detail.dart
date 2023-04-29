part of 'path.dart';

class NFTDetail extends StatelessWidget {
  final nftData;
  const NFTDetail({Key? key, this.nftData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Place Bid',
          style: Theme.of(context).textTheme.headline3,
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NFTCard(
              nftData: nftData,
              height: 1.6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Inspired  by the pain of thousnad of mans wo fight each day to bring food ot hte table every day of the year',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                    onPrimary: primaryColorDark,
                    primary: primaryColorDark,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 70.0,
                      vertical: 24.0,
                    ),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
                child: Text(
                  'Place a bid',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
