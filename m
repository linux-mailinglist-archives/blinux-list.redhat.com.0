Return-Path: <blinux-list+bncBDYPVTOXSQEBBJN7SS5AMGQEZ5OUIEI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F239D8FB0
	for <lists+blinux-list@lfdr.de>; Tue, 26 Nov 2024 02:08:54 +0100 (CET)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-515184812bbsf553147e0c.2
        for <lists+blinux-list@lfdr.de>; Mon, 25 Nov 2024 17:08:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732583333; cv=pass;
        d=google.com; s=arc-20240605;
        b=H7wBuBvaK9zVP4YUBgFiXWGKioRZxGjIpe5r3d6yJdmxfEflyHFYkYY7IHXFKwmkyU
         FiRI8hfXRLZGSCyJZ7KgoX8YHTv8BxysVBqvgPs2v+Z6a0pvD6S6CtOuq66/5t81Xjud
         VmRnRbb0xLsiIlL5DG4uQjIk+Eyg314uEA+zU2g/KsX5rjrYlEDrXU2I/oWHzL4nSNVk
         fYU2+y7SbtbS5XXHYQTbbtJIHs8r9Bjc+hZw0bsH5KdKLcYkAVSpsmq81I6p1mW3+heX
         6S+cyiyxeeeLE9vFAC9bsmySqCjnmu0saN+G0jpJ28IszlhCr4YtprRkb/Xxnb3jc2HX
         V0uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=3JHI1/ztWxRV1u7QPeGxC8ffMyO19ZSl7tZ94f7TyJ0=;
        fh=ptU2oOynFgEqGtWVOI78g65F7t3hYTT0mxftzoKtPDc=;
        b=X28RpD0AepXcxH8j7eimaiYWLgUzRohwlqEhDCrMMdp/4GXfIqHh3O3fpWHLHqfark
         pb64v25t/YHpGTMYJd36ELuoA5XKPh4uHNyZr5Z6kPViqCFD3TUDJ0rA8BjXPynBK12v
         t0f+IoVVZ9z5Bzp5W6q9wz2AABNzl6l9xJdttp/c9WUBSQnv1aHd590byzR8zD4c6Dw2
         j7hZEB33IbnNfH/JCHkNpgzYTUokCitoqbWY4Ei+DmH47/DIuWG8o49e5d8jy7eGGcBM
         d81pj3JwtiFskRXaF5JM8CDajOev4iQTyf/SmK0jsF+JHHdvvcd4fa9BniWZKOGSzDh/
         nvZw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732583333; x=1733188133;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3JHI1/ztWxRV1u7QPeGxC8ffMyO19ZSl7tZ94f7TyJ0=;
        b=nSAMaCqIIWtCmyYRNHK02BzKuI+9F83EKwS37JkBseX2BKS2xpldhtDsl3qhn5Fhdk
         hlqIBllwgP7M2QnJcfMTW+aJ98doSn+G0VN3OGwnkJxJLshGsRgAuJLrYKeLvDN7A+gy
         BIA1Fp/cDX9RsO8e0eo7XU3XHSyXqzfeD5Vnn86tKhEYUbXufimJXB+Ad13dbbEyTedN
         bjkfNI06d3TP9fkH0Ldur8GxSaeqCWmw6aeUGTlW55sRnVvds6xwM1GMrqX7nFkNJsmu
         VWksVHv4dTTPpHPaULBhlK2ivWGbBMfXb+r/64ZEdGJtpsupf6/uoGaWDk2uSttXitU+
         7sfQ==
X-Forwarded-Encrypted: i=2; AJvYcCWe8teIelnrXG4C/t5BcXY/VpDCC7qZ8RNdT1Cg1qvXKuoY7fU1jX+cVEC+9Qs0aWXdPduW6Q==@lfdr.de
X-Gm-Message-State: AOJu0Yy58a/ScgQ99PZ7lYNG4mIHf8iG1cBgrd7VEvOrkAkQOByUgW2B
	QFmwEBIueyhnoIxREJxxWM9F3K0QHii5FkjzzJzUJyRC1zFKv9Fp5Ml5ThJdiDw=
X-Google-Smtp-Source: AGHT+IFB3UeHU9NELukel2qQZxfLgOLDS36VyYUbQSHZO+Rw1bDUJaqYqCVpAm1ik+TtsDSDonVzIA==
X-Received: by 2002:a05:6122:4b1a:b0:50a:b728:5199 with SMTP id 71dfb90a1353d-515008718cbmr14417383e0c.7.1732583333435;
        Mon, 25 Nov 2024 17:08:53 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5d41:0:b0:6d3:fa96:8d4 with SMTP id 6a1803df08f44-6d4421c4b85ls26141746d6.0.-pod-prod-04-us;
 Mon, 25 Nov 2024 17:08:52 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUG2LaRSK2Q4tBJE0bW1LV5vYcC1roBqdekKBRi5vBJoZ2eehhZA12U63QrHJe5hDzDjzgtThSSuhO2iA==@gapps.redhat.com
X-Received: by 2002:a05:6214:130e:b0:6d4:19d2:2086 with SMTP id 6a1803df08f44-6d4511551a7mr256644796d6.36.1732583332555;
        Mon, 25 Nov 2024 17:08:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732583332; cv=none;
        d=google.com; s=arc-20240605;
        b=UhctkKvtjQC7WQ1pSb3BHfeJRrQur+ir80MJL6ccv1WjIGP0kh6jgNaUOLu7wzIcN7
         1IRGl2jZdrCKbpnTubGPcSf6y60GfcyLVCYwBPO63nFlzW87B2hboYxHesHtsaHqjABh
         xo+t8L43ZNx/wQTtum4pF0rwz6KeAYI+GC9gR/jN+qWUrKIBbQu8bJGEJCOliEsEnmaz
         MH5ntEyDevCsnOvX4UHzL2fFAzpsWm8G4uNsMIhqBpiSy4NPCH296XWW56DOAc2A9m9r
         pIBJ2WVeKp6eIv+3m9uKlRTRf0mfXP/ItFwPYaeFvSr2tFBhWg/3a+Ge4uZdiswSZcDJ
         uvuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=ew102YhCEciZ3BRahI6oRUTnOBG02F6yLxCL+gYfHmk=;
        fh=2V9hRfo2DNAS7GnshMu94v0ZtmRADnlqZRdr/9oaDhc=;
        b=GGSDvGm+GppRHRwiuMD+Brj+gz0KI8SZzWv++dw8CxgoTsLghYlvEiaft6T1Vu46CA
         h0uCgmPZlCBV6C8LiUz3TwxTRZA4gGTOQIA3Li+XxkYvlG/nzUjrwqCfMiyYCnH5UZSS
         1O7gmvI6n5K5E+cZMNUbQhRaHYaMcL9VeYsHwdWV0a7dqoyfJVosTX7MW9WlVTDFx21B
         yRfOXqGYDY/iZ9apDWYTSxpet+ZRQSnkE/19X7avJcQDXIKCGrWKwX738DrusmYjEwxo
         kdOxw4PtmR7Hf/on4vbMFdMBzMnZG3AbE0tmk04PleNbatsJbCspd1QPMAq0eDvyWvXp
         NtJw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d451a8328esi105052326d6.24.2024.11.25.17.08.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 17:08:52 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-65--4K8u3OJPW2-JyucVWFyZQ-1; Mon,
 25 Nov 2024 20:08:51 -0500
X-MC-Unique: -4K8u3OJPW2-JyucVWFyZQ-1
X-Mimecast-MFC-AGG-ID: -4K8u3OJPW2-JyucVWFyZQ
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 723F61956096
	for <blinux-list@gapps.redhat.com>; Tue, 26 Nov 2024 01:08:50 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6CB4A1955F40; Tue, 26 Nov 2024 01:08:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6A3B71956054
	for <blinux-list@redhat.com>; Tue, 26 Nov 2024 01:08:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E0462195419F
	for <blinux-list@redhat.com>; Tue, 26 Nov 2024 01:08:49 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-526-rLL9gQoANf-S8BA1ywZddQ-1; Mon,
 25 Nov 2024 20:08:47 -0500
X-MC-Unique: rLL9gQoANf-S8BA1ywZddQ-1
X-Mimecast-MFC-AGG-ID: rLL9gQoANf-S8BA1ywZddQ
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Xy4G72G5hz4SMK;
	Mon, 25 Nov 2024 20:08:47 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Xy4G71THXzcbc; Mon, 25 Nov 2024 20:08:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Xy4G71PvCzcbV;
	Mon, 25 Nov 2024 20:08:47 -0500 (EST)
Date: Mon, 25 Nov 2024 20:08:47 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Jeffery Mewtamer <mewtamer@gmail.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Troubleshooting audio.
In-Reply-To: <CAO2sX335=vGsN2ie0GKShfs_gO+Zk1WDH8HNmQY8vpsQ5Rdwww@mail.gmail.com>
Message-ID: <83ec2f23-1c73-5177-8229-e470485bb174@panix.com>
References: <CAO2sX335=vGsN2ie0GKShfs_gO+Zk1WDH8HNmQY8vpsQ5Rdwww@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: -dv4MzL2oJWyZ0_AVUVjdbEhuEEy_pfptULyF8wx30A_1732583327
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vg7bcUT1LibiNbEPNTdYJ2so9pgPcPjY-2fhDalZ3L4_1732583330
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

What updates or update happened just before your onboard earphone jack
went away?  This would be before your most recent kernel update since the
most recent kernel update didn't help this problem. Maybe one of those
packages like udev connected stuff did this to you. udev because lots of
rules like blacklisting rules get written in that environment. I would
also check for .lock files in /var/lock and see if any of them are sound
system connected and erase those files and run commands to identify all
sound outputs and then set up your sound system again.

-----
Jude <jdashiel at panix dot com>
Q: What borders absolute stupidity?
A: Canada and Mexico.
-----


On Tue, 26 Nov 2024, Jeffery Mewtamer wrote:

> Okay, so I'm running Debian Testing and a few days ago, the audio from my
> desktops front 3.5mm audiojack just died for apparently no reason.
>
> Fortunately, I have a USB sound adapter that just worked when I plugged it
> in, so I didn't have to resort to a clean install to get Orca and espeakup
> speaking again, but while this works, it isn't ideal as:
>
> -The adaptor is a rather bulky dongle, the kind that would block adjacent
> USB ports if the ports on the front of my desktop weren't spaced out to
> accomodate such things, the kind where one is fearful an accident is going
> to lead to the dongle's connecter snapping off in the port.
> -The adaptor is louder than my on-board audio(using alsamixer's master
> volume, 30% from the adaptor is about 40% from the on board, 20% from the
> adaptor is maybe 25% from the on-board. This wouldn't be a problem on its
> own, but whereas the on-board, when it's working, lets me go down to 1% and
> only mutes at 0%, the adaptor mutes if I go below 18% and the 1% from the
> adaptor is louder than the 20% I often keep alsamixer at when usingthe
> on-board audio. Not uncomfortably loud, but still louder than I would
> prefer.
>
> Plugging and unpluging my earphones from the adapter's earphone jack is
> harder than doing so from the on-board jack... Plus, I frequently make the
> mistake of plugging into the on-board instead of the adapter.
>
> I suspect I could fix the issue by reinstalling Debian, but with how much
> I've altered my setup from a default Debian Testing with Speech and LXDE
> installation, and not knowing which, if any, of those alterations caused
> the problem(though I'm not aware of any changes I made right before the
> on-board cut out that would affect sound), I would rather fix it in my
> existing system than do a clean install.
>
> If it matters, best I can tell, selecting LXDE as desktop in Debian
> Testing's netinst defaults to pulseaudio as sound system and the only
> change I've made to pulse beyond keeping packages uptodate via aptitude was
> running scripts provided by Fenrir that make Orca and espeakup play nice,
> but that was weeks, if not months ago. And if It matters, I'm running AMD64
> kernel version 6.11.9, though I was running 6.11.7 when the problem started.
>
> Any help anyone can provide would be much appreciated.
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

