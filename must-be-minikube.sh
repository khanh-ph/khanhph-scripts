supported_context="minikube"
current_context=$(kubectl config current-context 2> /dev/null | sed -e 's/[^@]*@//' | sed -e 's/.*/&/')
[[ ${current_context} != ${supported_context} ]] && echo "WARN: Current context is not \""${supported_context}"\". Exiting." && exit 1
exit 0
