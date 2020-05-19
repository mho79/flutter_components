import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as customSlider;
import 'package:fluttercomponents/theme.dart';

void main() {
    runApp(MaterialApp(
        title: 'Flutter Tutorial',
        home: Filters(),
        theme: RelovedTheme.lightThemeData,
    ));
}

class Filters extends StatefulWidget{
    @override
    FilterListState createState() => FilterListState();
}

class FilterListState extends State<Filters>{
    double _minPrice = 50.0;
    double _maxPrice = 250.0;
    bool _conciergeOnly = false;
    final _categories = ['Mode', 'Schuhe', 'Taschen', 'Accessoires', 'Schmuck'];

    @override
    Widget build(BuildContext context) {
        final _expansionTileTheme = Theme.of(context).copyWith(
            dividerColor: RelovedColors.white,
            unselectedWidgetColor: RelovedColors.anthracite
        );
        return Scaffold(
            backgroundColor: RelovedColors.white,
            appBar: AppBar(
                backgroundColor: RelovedColors.white,
                title: Text(
                    'Filters'.toUpperCase(),
                    style: RelovedTypography.headline5
                ),
                centerTitle: true,
                leading: IconButton(
                    color: RelovedColors.anthracite,
                    icon: Icon(Icons.close),
                    tooltip: 'Close filters',
                    onPressed: () => print('menu pressed'),
                ),
                actions: <Widget>[
                    ButtonTheme(
                        padding: EdgeInsets.symmetric(horizontal: 23.0),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        minWidth: 0,
                        height: 0,
                        child: FlatButton(
                            onPressed:() => print('action pressed'),
                            child: Text(
                                'Reset',
                                style: Theme.of(context).textTheme.bodyText1.copyWith(
                                    color: RelovedColors.pinkRed,
                                    fontWeight: FontWeight.w700
                                ),
                            ),
                        ),
                    ),
                ],
            ),
            // body is the majority of the screen.
            body: ListView(
                children:  <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: RelovedColors.black.withOpacity(0.2))),
                        ),
                        child: ListTile(
                            contentPadding: EdgeInsets.fromLTRB(21.0, 11.0, 23.0, 11.0),
                            onTap: _showCategories,
                            title: Text(
                                "Category",
                                style: RelovedTypography.headline3,
                            ),
                            trailing: Icon(Icons.chevron_right, color: RelovedColors.anthracite),
                        ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: RelovedColors.black.withOpacity(0.2))),
                        ),
                        child: Theme(
                            data: _expansionTileTheme,
                            child: ListTileTheme(
                                contentPadding: EdgeInsets.fromLTRB(21.0, 10.0, 23.0, 10.0),
                                child: ExpansionTile(
                                    title: Text(
                                        'Color',
                                        style: RelovedTypography.headline3,
                                    ),
                                    onExpansionChanged: (bool expanding) => print('expanding: '+expanding.toString()),
                                    children: <Widget>[
                                        Container(
                                            height: 125,
                                            child: buildColorsList(),
                                        ),
                                    ],
                                ),
                            ),
                        ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: RelovedColors.black.withOpacity(0.2))),
                        ),
                        padding: EdgeInsets.fromLTRB(21.0, 25.0, 21.0, 25.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                        Container(
                                            child: Text(
                                                'Brand',
                                                style: RelovedTypography.headline3,
                                            ),
                                        ),
                                        ButtonTheme(
                                            padding: EdgeInsets.all(0),
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            minWidth: 0,
                                            height: 0,
                                            child: FlatButton(
                                                onPressed: () => print('see brand list'),
                                                child: Text(
                                                    'See list',
                                                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                                                        color: RelovedColors.pinkRed,
                                                        decoration: TextDecoration.underline,
                                                        fontWeight: FontWeight.w700
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                                SizedBox(height: 28.0),
                                Container(
                                    child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.symmetric(horizontal: 14.0),
                                            fillColor: RelovedColors.iceBlue,
                                            filled: true,
                                            hintText: 'Brand Search',
                                        ),
                                    ),
                                )
                            ],
                        ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: RelovedColors.black.withOpacity(0.2))),
                        ),
                        padding: EdgeInsets.fromLTRB(21.0, 18.0, 23.0, 18.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                Text(
                                    'Concierge',
                                    style: RelovedTypography.headline3,
                                ),
                                Switch(
                                    value: _conciergeOnly,
                                    onChanged: (value) {
                                        setState(() {
                                            _conciergeOnly = value;
                                        });
                                    },
                                    activeTrackColor: RelovedColors.lightPink,
                                    activeColor: RelovedColors.pinkRed,
                                ),
                            ],
                        ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: RelovedColors.black.withOpacity(0.2))),
                        ),
                        child: Theme(
                            data: _expansionTileTheme,
                            child: ListTileTheme(
                                contentPadding: EdgeInsets.fromLTRB(21.0, 14.0, 23.0, 14.0),
                                child: ExpansionTile(
                                    title: Text(
                                        'Size',
                                        style: RelovedTypography.headline3,
                                    ),
                                    onExpansionChanged: (bool expanding) => print('expanding: '+expanding.toString()),
                                    children: <Widget>[
                                        Container(
                                            height: 100,
                                            child: buildSizesList(),
                                        ),
                                    ],
                                ),
                            ),
                        ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: RelovedColors.black.withOpacity(0.2))),
                        ),
                        child: Theme(
                            data: _expansionTileTheme,
                            child: ListTileTheme(
                                contentPadding: EdgeInsets.fromLTRB(21.0, 14.0, 23.0, 14.0),
                                child: ExpansionTile(
                                    title: Text(
                                        'Material',
                                        style: RelovedTypography.headline3,
                                    ),
                                    onExpansionChanged: (bool expanding) => print('expanding: '+expanding.toString()),
                                    children: <Widget>[
                                        Container(
                                            height: 64,
                                            child: buildMaterialList(),
                                        ),
                                    ],
                                ),
                            ),
                        ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: RelovedColors.black.withOpacity(0.2))),
                        ),
                        child: Theme(
                            data: _expansionTileTheme,
                            child: ListTileTheme(
                                contentPadding: EdgeInsets.fromLTRB(21.0, 14.0, 23.0, 14.0),
                                child: ExpansionTile(
                                    title: Text(
                                        'Condition',
                                        style: RelovedTypography.headline3,
                                    ),
                                    onExpansionChanged: (bool expanding) => print('expanding: '+expanding.toString()),
                                    children: <Widget>[
                                        Container(
                                            height: 64,
                                            child: buildConditionList(),
                                        ),
                                    ],
                                ),
                            ),
                        ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: RelovedColors.black.withOpacity(0.2))),
                        ),
                        padding: EdgeInsets.fromLTRB(21.0, 28.0, 21.0, 28.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                Row(
                                    children: <Widget>[
                                        Text(
                                            'Price',
                                            style: RelovedTypography.headline3,
                                        ),
                                    ],
                                ),
                                SizedBox(height: 24.0),
                                SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                        inactiveTrackColor: RelovedColors.veryLightPink,
                                    ),
                                    child: customSlider.RangeSlider(
                                        lowerValue: _minPrice,
                                        upperValue: _maxPrice,
                                        min: 0.0,
                                        max: 500.0,
                                        divisions: 50,
                                        showValueIndicator: true,
                                        valueIndicatorFormatter: (int index, double value) {
                                            String price = value.toStringAsFixed(2);
                                            return '$price €';
                                        },
                                        onChanged: (double newLowerValue, double newUpperValue) => {
                                            setState(() {
                                                _minPrice = newLowerValue;
                                                _maxPrice = newUpperValue;
                                            }),
                                        },
                                    )
                                ),
                            ],
                        ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(21.0, 28.0, 21.0, 28.0),
                        child: RaisedButton(
                            onPressed: () => print('button pressed'),
                            child: Container(
                                height: 50.0,
                                child: Center(
                                    child: Text('Done', style: RelovedTypography.buttonText),
                                ),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }

    void _showCategories() {
        Navigator.of(context).push(
            MaterialPageRoute<void>(   // Add 20 lines from here...
                builder: (BuildContext context) {
                    final Iterable<Container> tiles = _categories.map((String category) {
                            return Container(
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: RelovedColors.black.withOpacity(0.2))),
                                ),
                                child: ListTile(
                                    onTap: () => print('category clicked'),
                                    title: Text(category, style: RelovedTypography.headline5),
                                    trailing: Icon(Icons.chevron_right, color: RelovedColors.anthracite),
                                )
                            );
                        },
                    );

                    final List<Widget> divided = ListTile.divideTiles(
                        context: context,
                        tiles: tiles,
                    ).toList();

                    return Scaffold(
                        backgroundColor: RelovedColors.white,
                        appBar: AppBar(
                            backgroundColor: RelovedColors.white,
                            title: Text(
                                'Category',
                                style: RelovedTypography.headline5
                            ),
                            centerTitle: true,
                            leading: IconButton(
                                color: RelovedColors.anthracite,
                                icon: Icon(Icons.arrow_back),
                                tooltip: 'Close categories',
                                onPressed: () {
                                    Navigator.pop(context);
                                }
                            ),
                        ),
                        body: ListView(children: divided),
                    );
                },
            ),
        );
    }

    Widget buildColorsList() {
        RandomColor _randomColor = RandomColor();
        final int itemCount = 10;
        return ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 21.0, right: 23.0, bottom: 29.0),
            itemBuilder: (BuildContext context, int index) {
                if (index >= itemCount) {
                    return null;
                }
                final color = _randomColor.randomColor();
                return _buildColors(context, color);
            },
            separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                    width: 14.0,
                );
            },
            itemCount: itemCount,
        );
    }

    Widget _buildColors(BuildContext context, Color color) {
        return ButtonTheme(
            padding: EdgeInsets.all(0),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minWidth: 0,
            height: 0,
            child: FlatButton(
                onPressed: () => print('selected color: '+color.toString()),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Container(
                            width: 72.0,
                            height: 72.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: RelovedColors.veryLightPink),
                                shape: BoxShape.circle,
                                color: color,
                            ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                            'Color',
                            style: RelovedTypography.filterText
                        ),
                    ],
                ),
            ),
        );
    }

    Widget buildSizesList() {
        final sizes = [32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58];
        return ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 21.0, right: 23.0, bottom: 29.0),
            itemBuilder: (BuildContext context, int index) {
                if (index >= sizes.length) {
                    return null;
                }
                return _buildSizes(context, sizes[index].toString());
            },
            separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                    width: 14.0,
                );
            },
            itemCount: sizes.length,
        );
    }

    Widget _buildSizes(BuildContext context, String name) {
        return ButtonTheme(
            padding: EdgeInsets.all(0),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minWidth: 0,
            height: 0,
            child: FlatButton(
                onPressed: () => print('selected size: '+name),
                child: Container(
                    width: 72.0,
                    height: 72.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: RelovedColors.veryLightPink),
                        shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: Text(
                            name,
                            style: Theme.of(context).textTheme.button.copyWith(color: RelovedColors.anthracite)
                        )
                    ),
                ),
            ),
        );
    }

    Widget buildMaterialList() {
        final materials = ['denim','cotton','leather','polyester','rayon'];
        return ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 21.0, right: 23.0, bottom: 29.0),
            itemBuilder: (BuildContext context, int index) {
                if (index >= materials.length) {
                    return null;
                }
                return _buildTag(context, materials[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                    width: 14.0,
                );
            },
            itemCount: materials.length,
        );
    }

    Widget buildConditionList() {
        final conditions = ['new with label','new without label','excellent','good','with flaws'];
        return ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 21.0, right: 23.0, bottom: 29.0),
            itemBuilder: (BuildContext context, int index) {
                if (index >= conditions.length) {
                    return null;
                }
                return _buildTag(context, conditions[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                    width: 14.0,
                );
            },
            itemCount: conditions.length,
        );
    }

    Widget _buildTag(BuildContext context, String name) {
        return ButtonTheme(
            padding: EdgeInsets.all(0.0),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minWidth: 0,
            height: 35.0,
            child: FlatButton(
                onPressed: () => print('selected condition: '+name),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 21.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: RelovedColors.veryLightPink),
                        borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                        child: Text(
                            name.toUpperCase(),
                            style: RelovedTypography.filterText
                        )
                    ),
                ),
            ),
        );
    }
}