package ${packageName}.${folderName};

import android.arch.lifecycle.Lifecycle;
import android.arch.lifecycle.OnLifecycleEvent;

public final class ${className}Presenter implements ${className}Contract.Presenter {

    private ${className}Contract.View view; 

    public static ${className}Presenter createAndAttach(
        ${className}Contract.View view) {
        ${className}Presenter presenter = new ${className}Presenter(view);
        view.attachPresenter(presenter);
        return presenter;
    }

    private ${className}Presenter(${className}Contract.View view) {
        this.view = view;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void start() {
        //Do - start
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void cleanup() {
        view = null;
    }
}