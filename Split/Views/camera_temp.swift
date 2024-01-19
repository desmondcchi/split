//
//  CameraView.swift
//  Split
//
//  Created by Desmond Chi on 1/3/24.
//

import SwiftUI
import AVFoundation

struct CameraViewTemp: UIViewControllerRepresentable {
    let camera: Camera
    let didFinishProcessingPhoto: (Result<AVCapturePhoto, Error>) -> ()
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self, didFinishProcessingPhoto: didFinishProcessingPhoto)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        return
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        camera.start(delegate: context.coordinator) { error in
            if let error = error {
                didFinishProcessingPhoto(Result.failure(error))
                return
            }
        }
        
        let viewController: UIViewController = UIViewController()
        viewController.view.backgroundColor = UIColor.black
        viewController.view.layer.addSublayer(camera.previewLayer)
        camera.previewLayer.frame = viewController.view.bounds
        return viewController
    }
    
    class Coordinator: NSObject, AVCapturePhotoCaptureDelegate {
        let parent: CameraViewTemp
        private var didFinishProcessingPhoto: (Result<AVCapturePhoto, Error>) -> ()
        
        init(_ parent: CameraViewTemp, didFinishProcessingPhoto: @escaping (Result<AVCapturePhoto, Error>) -> ()) {
            self.parent = parent
            self.didFinishProcessingPhoto = didFinishProcessingPhoto
        }
        
        func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
            if let error = error {
                didFinishProcessingPhoto(Result.failure(error))
                return
            }
            didFinishProcessingPhoto(Result.success(photo))
        }
    }
}
