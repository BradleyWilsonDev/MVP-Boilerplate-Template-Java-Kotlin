package ${packageName}.${folderName};

import android.arch.lifecycle.LifecycleObserver;
import ${packageName}.${baseFolderName}.BaseView;

public interface ${className}Contract {

    interface View extends BaseView<Presenter> {

    }

    interface Presenter implements LifecycleObserver {

    }

}
