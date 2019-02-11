package ${packageName}.${folderName}

import android.arch.lifecycle.Lifecycle
import android.arch.lifecycle.OnLifecycleEvent

class ${className}Presenter(
    private var view: ${className}Contract.View?
) : ${className}Contract.Presenter {

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    fun start() {
        //Do - start
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    fun cleanup() {
        view = null
    }

    companion object {
        fun createAndAttach(
            view: ${className}Contract.View
        ): ${className}Presenter {
            val presenter = ${className}Presenter(view)
            view.attachPresenter(presenter)
            return presenter
        }
    }

}