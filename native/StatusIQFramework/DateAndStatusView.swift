/*
     Copyright (c) 2021, ZOHO CORPORATION PRIVATE LIMITED
   All rights reserved.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

import UIKit

class DateAndStatusView: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet var statusImageView: UIImageView!
    @IBOutlet var dateLabel: UILabel!
    
    func instanceFromNib() -> DateAndStatusView {
        if let incidentDetailView = self.loadNib() as? DateAndStatusView {
            return incidentDetailView
        }
        return self
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.containerView.setCardViewDesign()
        self.setFont()
    }
    
    fileprivate func setFont() {
        self.dateLabel.font = StatusIQCommonUtil.getFont(withSize: 13)
    }
    
    func setValues(statusImage : UIImage, date : String) {
        self.statusImageView.image = statusImage
        self.dateLabel.text = date
    }

}
