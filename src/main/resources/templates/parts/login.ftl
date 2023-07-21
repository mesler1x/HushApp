<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> User Name: </label>
            <div class="col-sm-5">
                <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       placeholder="Enter username"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password: </label>
            <div class="col-sm-5">
                <input type="password" name="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       placeholder="Enter your password"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label"> Password: </label>
                <div class="col-sm-5">
                    <input type="password" name="password2"
                           class="form-control ${(password2Error??)?string('is-invalid', '')}"
                           placeholder="Retype password"/>
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label"> Email: </label>
                <div class="col-sm-5">
                    <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                           class="form-control ${(emailError??)?string('is-invalid', '')}"
                           placeholder="example@example.com"/>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${emailError}
                        </div>
                    </#if>
                </div>
            </div>
            <div>
                <div class="g-recaptcha btn-captcha" data-sitekey="6LdfUC4nAAAAAClf8DCFy5pDkvixKmFZKihk4haB"></div>
                <#if captchaError??>
                    <div class="alert alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>

        <style>
            .btn-register {
                padding-left: 200px;
                padding-right: 188px;
                margin-left: 189px;
                margin-right: 20px;
                margin-top: 7px;
            }
        </style>
        <style>
            .btn-captcha {
                padding-left: 80px;
                padding-right: 188px;
                margin-left: 189px;
                margin-right: 20px;
                margin-top: 7px;
            }
        </style>
        <style>
            .btn-login {
                padding-left: 200px;
                padding-right: 200px;
                margin-left: 189px;
                margin-right: 20px;
                margin-top: 7px;
            }
        </style>
        <#if !isRegisterForm>
            <a href="/registration" class="btn btn-primary btn-register">Register</a>
        </#if>
        <div>
            <button type="submit" class="btn btn-primary btn-login"><#if isRegisterForm>Create<#else>Log In</#if></button>
        </div>

    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit"><#if user??>Sign Out<#else>Log in</#if></button>
    </form>
</#macro>
