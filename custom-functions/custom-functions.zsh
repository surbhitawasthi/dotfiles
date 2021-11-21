function tvm () {
	sed -i '' "s/\/usr\/local\/opt\/terraform.*/\/usr\/local\/opt\/terraform@$1\/bin:\$PATH\"/" ~/.zshrc	
	export PATH="/usr/local/opt/terraform@$1/bin:$PATH"
	PATH=$(echo "$PATH" | sed -E 's/:\/usr\/local\/opt\/terraform@[[:digit:]]+\.[[:digit:]]+\/bin//')
}

