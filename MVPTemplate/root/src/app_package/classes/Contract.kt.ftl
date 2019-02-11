package ${packageName}.${folderName}

import android.arch.lifecycle.LifecycleObserver
import ${packageName}.${baseFolderName}.BaseView

interface ${className}Contract {

    interface View : BaseView<Presenter> {

    }

    interface Presenter : LifecycleObserver {

    }

}
