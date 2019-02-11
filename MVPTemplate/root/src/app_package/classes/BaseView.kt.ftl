package ${packageName}.${baseFolderName}

public interface BaseView<T> {

    fun attachPresenter(presenter: T)
}