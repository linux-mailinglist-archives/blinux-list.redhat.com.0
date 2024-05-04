Return-Path: <blinux-list+bncBCHY5TMQ6YERB6PY3CYQMGQES3IC3MY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCB18BBC4A
	for <lists+blinux-list@lfdr.de>; Sat,  4 May 2024 15:47:40 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5aa2faa7115sf1062031eaf.2
        for <lists+blinux-list@lfdr.de>; Sat, 04 May 2024 06:47:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714830459; cv=pass;
        d=google.com; s=arc-20160816;
        b=TQawZo5QpheQEm6UrunqVmpIQUXc9hvRvCFr0N4zYo1AtyUzNQ0MWkEcQLlqYP+ADq
         XSyy3/Yi00VygFMV31QBbicF6eP42TL4kDd8UXZ508OlKi//ANg6iN7waaOVknEcfPDH
         VciWz8dpBTIgbZp2g1D1Nh1lRdMLLK1A00JBPeYNXSpeBhHiSHp/N/z7Rk2y3g99g/At
         8cWk6huIkcXhjg5Pioe5/joK7oHV5zashB3ZSA2sSenc7m4YlD2lZjZMj+QD65Ff8sHE
         k2h6DCTNViqfu0tVunR6cTKH22Zj0BYQ6/4cN6COzr3INqemLiSex67X0/FkQ1wLjm/4
         UJWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=bF9UQZSgWq1fysp932rorslLGt0AEPkqVERIGtR1yc0=;
        fh=xSEDtGJL4481KPaOl/h7hmq3iyUCaqTu1RdX5Xbm55Y=;
        b=tcPY2453DawIIGyzymTRZLN1KfBEiPqSypqGvA6gv6P01apW0tVxlm6YCbXp8fLAr+
         MAMI5yJulZsaEEbuqwRZ/wHwsW5fPwexeV5YYZPgg20m8FAAeiVvaznAvGwahHHNlhcI
         oP8O6LgxEYPrI//hXTip+gHOjOn0JF+46zK+rqJZcACG7SeAdsl/Dwn+k5gmcMARqhV9
         o7x8EAm+26TOCPu5ZOeCV6r72kUB8AOhm1DKuD9g5LnQ0JJ6s0T3PvGf7UpGOikwG7tA
         jcDp7P+5CyIdCH28cQ+ID156S0ggWyzoiLjE+jrxQIg6DLoNLyke13hp3L1DhtDwtFKV
         E2Gw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714830459; x=1715435259;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bF9UQZSgWq1fysp932rorslLGt0AEPkqVERIGtR1yc0=;
        b=d2RkVlx0p5GXrnpp/Hacjp645n8L5sxz4sC8ndGLmtCiu+hjy+2U6MAKQ5lToXGphm
         VF4sfsHlQqOi9VoAQTF2PGJTqo6VNHS1wBAYopi2iEj3g/LGbsgmYMyN+H3FMxhRphYg
         zq5Ibpu8uqCbB+aSpe/aV2yGk95zxK0BAZ+PsOnVvL5xWDigK7lIBzQwqj8Wn9T7NWI+
         8I+OenXEZ7GWQzbkEcq45SYr1cZCm6WlF6hbarhT60YVw8VUvAzmYYFp166PLPRseymU
         7oSnFzs2XvAMpv5xh5c8+XE02Rd+VcHnG/jc1nDP0szYQ39e3vjfmcXdJnJh4D5I6qoG
         Y8Mw==
X-Forwarded-Encrypted: i=2; AJvYcCXCAIBDyQqw8lDanm117wPf6jMFh1nHWvARTLCrCFekYu4pZ7xhvT2EHGRSMUBIAqJ+k+mC1/GC5ZdpMjMFoGD2aW7e/EluUOYy
X-Gm-Message-State: AOJu0Yyrsw8HxhrVn3dITVUJjhKV4nTp9VlJPOSvGVnTxg0SxGn17iAQ
	HTVlOL2+8wvzBjl46uT6ufCBwhiU9YS4USZX4GWmItldJ3lODb8onD8bsG6B5VY=
X-Google-Smtp-Source: AGHT+IEGtBJ/spx2l+ghY13q0YQxzEzyfRGhdgGqgkhYKCjSN615srUI8KqLQNShDuA0W3CR/QRQgA==
X-Received: by 2002:a4a:4b82:0:b0:5a4:9977:446b with SMTP id q124-20020a4a4b82000000b005a49977446bmr5679877ooa.6.1714830458983;
        Sat, 04 May 2024 06:47:38 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:221a:b0:5ae:1f6c:8983 with SMTP id
 006d021491bc7-5b1baef0dcdls1170876eaf.1.-pod-prod-01-us; Sat, 04 May 2024
 06:47:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXfVvr2OPD76jyxNj+jyG5Nv+gwGW2IbJteLplBoHX4H38QBxt/NgWwtm8s4ZYguX+NKPRgnbVCu/+cig+PVBBmE4vsHLx4+z7dL/Lz
X-Received: by 2002:a05:6830:1048:b0:6ee:29c2:6dea with SMTP id b8-20020a056830104800b006ee29c26deamr6078345otp.4.1714830455444;
        Sat, 04 May 2024 06:47:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714830455; cv=none;
        d=google.com; s=arc-20160816;
        b=OSYIlcH+2XVa68RZwojeYONyXnd92cWYKQ1OoqWZgkE49Kw14b3bcSs7pEu5VR/UrO
         CtJFOayNXuaTNegsCNJmNdZkBdydInkTtZXsCU/O6heQd10DCN8BwFBkuiCXKmN4vzlZ
         Ef7Ik306x/0Sw0lJ2qHeEzLhgdYl9LaezCjCCIwsh9X3z32udlCiyI+uHPbMRBTH1yMR
         x/doBC+oBe3krfUKPDES4oC4RclHu0y1wnKUIPaBgoUVFSoqAVX4QQHvrjyY4uIuPLtl
         fvWSJtXSH2Ie9U5jYacopwWFsP7uAaipI1NF6+zxNuVQz8LBZyeV5fPpZc2sP/mJ9s1M
         0eSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=4k1C4ZBNs0d9+AfXJ8NeuqRWizLj3h3IVoPpHQNcHOE=;
        fh=rxO9PFVw089yvtBGBYYz3fDqzkHV0uyfFn/RLj5UGQE=;
        b=nv6JwWBeixyhYizxV0DRBYccdywsEtdnaibjvQRcgzaLZQJz61ag8EytHK5IXoHO8t
         OoF89FkDc8/pxdu/831a/IIvYZvHh0/cyb7X6ImiWVf1MomFUa5QQiSEnL19pjYwOrm+
         GMpoTYvtjwqZWgXbK6SRKspeNg2JPPnKYrOfsaxichFD0+vDsq1YsDNJ9xUXkrtWprcy
         mbJauW+BqUYdF/FRahTrV7qW0qXJxO81hpKdgO0TfNk8LP+o5k55+fVlcIJ03+HxJ/gB
         5JSDn6TxKYoi28IlYNj+oC1cja7MUBiR+qXmO/Wm65KzxU9rGZe8irq/zBLfuEhonxBh
         lCfQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id f23-20020a05620a12f700b0078d6cc21128si5300138qkl.618.2024.05.04.06.47.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 06:47:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-8-mDMOQaFSMbK0Q24HwA05lQ-1; Sat,
 04 May 2024 09:47:30 -0400
X-MC-Unique: mDMOQaFSMbK0Q24HwA05lQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E81029AA387
	for <blinux-list@gapps.redhat.com>; Sat,  4 May 2024 13:47:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1A0C440C6CC1; Sat,  4 May 2024 13:47:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D557840C6CC0
	for <blinux-list@redhat.com>; Sat,  4 May 2024 13:47:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 83BC518065AA
	for <blinux-list@redhat.com>; Sat,  4 May 2024 13:47:29 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-377-4czoVzVJMnqjYnTB-022_A-1; Sat, 04 May 2024 09:47:24 -0400
X-MC-Unique: 4czoVzVJMnqjYnTB-022_A-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id 040953F9A3;
	Sat,  4 May 2024 16:47:18 +0300 (EEST)
Message-ID: <08f98aaf-e42e-40df-bc16-76822a05e000@harrastenurkka.fi>
Date: Sat, 4 May 2024 16:46:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: nvda2 speech and debian install error
To: Rastislav Kish <rastislav.kish@protonmail.com>, blinux-list@redhat.com
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
 <20240503123117.6vhsfjpfuhjgwxno@begin>
 <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
 <20240503125138.ccmtstpyuyyyyf3e@begin>
 <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
 <20240503130413.rxcx55qhjx64utco@begin>
 <11a8b732-c9a8-476f-94d8-34a1f8fe2bb7@harrastenurkka.fi>
 <7792665a-af52-4379-bf77-2adb056fbe7b@protonmail.com>
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
In-Reply-To: <7792665a-af52-4379-bf77-2adb056fbe7b@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: elias.stahlberg@harrastenurkka.fi
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as
 permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Original-From: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Reply-To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

hi

The server starts, I move nvda2speechd32.dll to the game folder, rename=20
it nvdaControllerClient32.dll so it replaces the existing dll file, but=20
still the orca specified via speech-dispatcher does not speak, I use=20
audiogame manager, could it affect this.

https://git.stormux.org/storm/audiogame-manager

On 5/4/24 01:37, 'Rastislav Kish' via blinux-list@redhat.com wrote:
> Hello Elias,
> nvda2speechd author here. Regarding the compilation error you got
> earlier, I believe this is caused by the speech-dispatcher dependency in
> the server's Cargo.toml, which seems to be still at 0.15.1 (while the
> latest version is 0.16.0).
> If you bump up the number and delete the Cargo.lock file, it should
> compile just fine. It's a bit unfortunate situation, in my opinion, Rust
> should have a from-scratch implemented crate for communication with
> speech dispatcher, instead of relying on libspeechd-dev and causing
> issues like these. I even wanted to write such a library, similar to the
> lib I wrote for C#, but I was not yet in such a heavy need to do so,
> thus we have what we have. :)
>
> As for n2s usage, the server is a standard TUI app, it's pretty much
> upto you how do you use it. You can run it temporarily in a terminal,
> for example if you want to play a game, or, if your usage will be more
> frequent, you can have it autostart upon your system boot up and then
> there will be no need to do anything. The server has no output unless
> something happens I believe, so if you start it up and it seemingly does
> nothing, it likely works properly.
> I think it prints out when a connection from clients is open/close, this
> is a good functionality because when something goes wrong, you can
> easily diagnose whether the clients and the server found each other and
> it also works as a good confirmation the client was started in the first
> place.
>
> n2s has a default port that will be used, which is mentioned in the
> readme. If the default port doesn't work for you for some reason, you
> can change it by setting up an environment variable, see the readme
> (don't forget to log out and back in after doing so to have it initialize=
d).
>
> The reason why a variable is used instead of a flag or config file is
> the need to communicate the settings to the clients, which can't accept
> flags because they're just libraries (well technically, maybe they
> could, now I'm not sure if dlls have access to the arguments of their
> process, but even if they did, messing in flags and cmd parameters to
> the interface of another apps would cause trouble in more situations
> than those where it would have actually worked), and config files are
> also tricky because one thing is your Linux FS and another the Wine
> space, you may want to sandbox Wine apps, etc. so it's overall the
> easiest option to just maintain an environment variable when necessary.
>
> Best regards
>
> Rastislav
>
> D=C5=88a 3. 5. 2024 o 15:08 'Elias St=C3=A5hlberg' via blinux-list@redhat=
.com
> nap=C3=ADsal(a):
>> yes, but e.g
>> this command does nothing, the server has to be started somehow, or is
>> it running all the time, I get the message command
>> not found
>>
>> ws://localhost:3457
>>
>> On 5/3/24 16:04, Samuel Thibault wrote:
>>> 'Elias St=C3=A5hlberg' via blinux-list@redhat.com, le ven. 03 mai 2024 =
15:57:53 +0300, a ecrit:
>>>> I have now installed the required packages, but where do I set the por=
t and
>>>> address of the server, how can I start the server, the command nvda2sp=
eechd
>>>> does nothing, command not found
>>> I can only point at the readme file.
>>>
>>> Samuel
>>>
>>> To unsubscribe from this group and stop receiving emails from it, send =
an email to blinux-list+unsubscribe@redhat.com.
>>>
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to blinux-list+unsubscribe@redhat.com.
>>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

