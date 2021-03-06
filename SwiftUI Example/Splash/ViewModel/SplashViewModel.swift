//
//  SplashViewModel.swift
//  Habits
//
//  Created by Davi Aquila on 2022-02-26.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    
    @Published var uiState: SplashUIState = .LOADING
    
    func onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            self.uiState = .FAILURE(errorMessage: "Erro no contato com o servidor")
            self.uiState = .GO_TO_SIGNIN
        }
    }
}


extension SplashViewModel {
    func goToSignIn() -> some View {
        return SplashViewRouter.makeSignInView()
    }
    
    func goToHome() -> some View {
        return SplashViewRouter.makeHomeView()
    }
}
