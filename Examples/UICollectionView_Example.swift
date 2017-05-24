// UICollectionView+Extension.swift, ReusableView.swift, NibLoadableView.swift used

class TestCollectionCell: UICollectionViewCell, ReusableView, NibLoadableView { }
	
class TestViewController: UIViewController, UICollectionViewDataSource {

	override func viewDidLoad() {
		...
		collectionView.register(TestCollectionCell.self)
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {        
		let testCell: TestCollectionCell = collectionView.dequeueReusableCell(for: indexPath)
		return testCell
	}
}
