package ${packageName}.${folderName}; 

import android.arch.lifecycle.LifecycleOwner;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import ${packageName}.R;

public class ${className} extends AppCompatActivity implements ${className}Contract.View, LifecycleOwner {

    private ${className}Contract.Presenter presenter;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        ${className}Presenter.createAndAttach(this);
    }

    @Override
    public void attachPresenter(${className}Contract.Presenter presenter) {
        this.presenter = presenter;
        lifecycle.addObserver(presenter);
    }
}