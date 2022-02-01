# Swift Collection View Demo

## What I did
1. Added image sets to Assets.xcassets

2. Created CustomCollectionViewController.swift and made this the ViewController for the Main layout
    - Made this a UICollectionvViewDataSource and UICollectionViewDelegate

3. Added elements to Main layout
    - Label at the top acting as the title with constraints on top and both sides
    - CollectionView to Main layout with constraints on all four sides
    - CollectionView created a default CollectionViewCell

4. Connected the collection view to CustomCollectionViewController as an IBOutlet

5. Created CustomCollectionViewCell.swift and made this the Class for the CollectionViewCell

6. Created AppIconRepo.swift to populate data

7. Wrote all necessary collectionView methods to populate the UI element
