package ${packageName};

import com.yourpackage.base.MvpPresenter;
import com.yourpackage.presentation.base.MvpView;

public interface ${className}Contract{
	
	interface ${className}View implements IBaseView {
		
	}

	interface ${className}Presenter<${className}View> implements IBasePresenter<${className}View> {
		
	}
}