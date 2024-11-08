//
//  DetailViewController.swift
//  Project9
//
//  Created by Enzo Rossetto on 12/07/24.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    var webview: WKWebView!
    var detailItem: Petition?
    
    override func loadView() {
        webview = WKWebView()
        view = webview
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let detailItem else { return }
        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <style> body { font-size: 150%; } </style>
        </head>
        <body>
        <article>
        <h1>\(detailItem.title)</h1>
        <p>\(detailItem.body)</p>
        </article>
        </body>
        </html
        """
        
        webview.loadHTMLString(html, baseURL: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
