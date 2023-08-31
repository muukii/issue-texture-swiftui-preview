#if DEBUG
import SwiftUI
import AsyncDisplayKit
import TextureSwiftSupport
import SwiftUISupport
import TextureBridging

class Node: ASDisplayNode {

  private let textNode: ASTextNode = .init()

  override init() {
    super.init()
    self.backgroundColor = .red
    automaticallyManagesSubnodes = true

    textNode.attributedText = NSAttributedString(string: "Hello, world!")
  }

  override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
    LayoutSpec {
      textNode
    }
  }

}

@available(iOS 17, *)
#Preview(traits: .portrait, body: {
  NodeView(node: Node())
})

#endif
