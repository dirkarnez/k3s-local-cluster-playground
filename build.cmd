@echo off
%USERPROFILE%\Downloads\k3d-windows-amd64.exe cluster create --agents 3 mycluster &&^
%USERPROFILE%\Downloads\k3d-windows-amd64.exe node ls &&^
kubectl get nodes &&^
kubectl get pods -A