// Needed files: 
1) [UITableView+Extension.swift](https://github.com/maksymhusar/Swift-Useful-Files/blob/master/Sources/Extensions/UITableView%2BExtension.swift)
2) [ReusableView.swift](https://github.com/maksymhusar/Swift-Useful-Files/blob/master/Sources/Protocols/ReusableView.swift)
3) [NibLoadableView.swift](https://github.com/maksymhusar/Swift-Useful-Files/blob/master/Sources/Protocols/NibLoadableView.swift)

```
class TestTableCell: UITableViewCell, ReusableView, NibLoadableView { }
	
class TestViewController: UIViewController, UITableViewDataSource {

	override func viewDidLoad() {
	    ...
	    tableView.register(TestTableCell.self)
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
	    let testCell: TestTableCell = tableView.dequeueReusableCell(for: indexPath)
	    return testCell
	}
}
```
