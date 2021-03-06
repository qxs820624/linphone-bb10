/*
 * HomeSettingsView.qml
 * Copyright (C) 2015  Belledonne Communications, Grenoble, France
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import bb.cascades 1.4

import "../custom_controls"

ScrollView {
    verticalAlignment: VerticalAlignment.Fill
    horizontalAlignment: HorizontalAlignment.Fill

    Container {
        layout: StackLayout {
            orientation: LayoutOrientation.TopToBottom
        }
        verticalAlignment: VerticalAlignment.Fill
        horizontalAlignment: HorizontalAlignment.Fill
        leftPadding: ui.sdu(1)
        rightPadding: ui.sdu(1)
        
        SettingsHeader {
            text: qsTr("DEBUG") + Retranslate.onLanguageChanged
            
            gestureHandlers: TapHandler {
                onTapped: {
                    debugSettings.visible = !debugSettings.visible
                }
            }
        }
        
        SettingsDebugView {
            id: debugSettings
            visible: true
        }
        
        SettingsHeader {
            text: qsTr("AUDIO") + Retranslate.onLanguageChanged
            
            gestureHandlers: TapHandler {
                onTapped: {
                    audioSettings.visible = !audioSettings.visible
                }
            }
        }
        
        SettingsAudioView {
            id: audioSettings
            visible: false
        }
        
        SettingsHeader {
            text: qsTr("VIDEO") + Retranslate.onLanguageChanged
            
            gestureHandlers: TapHandler {
                onTapped: {
                    videoSettings.visible = !videoSettings.visible
                }
            }
        }
        
        SettingsVideoView {
            id: videoSettings
            visible: false
        }
        
        SettingsHeader {
            text: qsTr("SECURITY") + Retranslate.onLanguageChanged
            
            gestureHandlers: TapHandler {
                onTapped: {
                    securitySettings.visible = !securitySettings.visible
                }
            }
        }
        
        SettingsSecurityView {
            id: securitySettings
            visible: false
        }
        
        SettingsHeader {
            text: qsTr("NETWORK") + Retranslate.onLanguageChanged
            
            gestureHandlers: TapHandler {
                onTapped: {
                    networkSettings.visible = !networkSettings.visible
                }
            }
        }
        
        SettingsNetworkView {
            id: networkSettings
            visible: false
        }
    }
}