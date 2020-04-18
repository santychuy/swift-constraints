import UIKit

extension UIView {

    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, centerX: NSLayoutXAxisAnchor?, centerY: NSLayoutYAxisAnchor?, centerXConstant: CGFloat = 0, centerYConstant: CGFloat = 0, widthView: NSLayoutDimension?, heightView: NSLayoutDimension?, padding: UIEdgeInsets = .zero, size: CGSize = .zero, multiplierPadding: UIEdgeInsets = .zero, multiplierSize: CGSize = .zero){
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top{
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        if let leading = leading{
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        if let bottom = bottom{
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        if let trailing = trailing{
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        if let centerX = centerX{
            centerXAnchor.constraint(equalTo: centerX, constant: centerXConstant).isActive = true
        }
        if let centerY = centerY{
            centerYAnchor.constraint(equalTo: centerY, constant: centerYConstant).isActive = true
        }
        if size.width != 0 || multiplierSize.width != 0{
            if let widthView = widthView{
                widthAnchor.constraint(equalTo: widthView, multiplier: multiplierSize.width).isActive = true
            }else{
                widthAnchor.constraint(equalToConstant: size.width).isActive = true
            }
        }
        if size.height != 0 || multiplierSize.height != 0{ //Check about any error
            if let heightView = heightView{
                heightAnchor.constraint(equalTo: heightView, multiplier: multiplierSize.height).isActive = true
            }else{
                heightAnchor.constraint(equalToConstant: size.height).isActive = true
            }
        }
    }
    
}
