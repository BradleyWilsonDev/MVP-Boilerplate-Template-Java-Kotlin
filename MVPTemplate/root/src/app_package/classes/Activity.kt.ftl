package ${packageName}.${folderName} 

import android.arch.lifecycle.LifecycleOwner
import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import ${packageName}.R

class ${className} : AppCompatActivity(), ${className}Contract.View, LifecycleOwner {

    private lateinit var presenter: ${className}Contract.Presenter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})
        ${className}Presenter.createAndAttach(this)
    }

    override fun attachPresenter(presenter: ${className}Contract.Presenter) {
        this.presenter = presenter
        lifecycle.addObserver(presenter)
    }
}