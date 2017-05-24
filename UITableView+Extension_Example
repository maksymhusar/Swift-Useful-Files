// UITableView+Extension.swift, ReusableView.swift, NibLoadableView.swift used

class TestTableCell: UITableViewCell, ReusableView, NibLoadableView { }
	
override func viewDidLoad() {
    ...
    tableView.register(TestTableCell.self)
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let testCell: TestTableCell = tableView.dequeueReusableCell(for: indexPath)
    return testCell
}
