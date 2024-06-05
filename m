Return-Path: <blinux-list+bncBDYPVTOXSQEBBA5LQKZQMGQEXY524MQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 064828FD310
	for <lists+blinux-list@lfdr.de>; Wed,  5 Jun 2024 18:42:46 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5ba607d4c50sf1747652eaf.0
        for <lists+blinux-list@lfdr.de>; Wed, 05 Jun 2024 09:42:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717605764; cv=pass;
        d=google.com; s=arc-20160816;
        b=zI8VJbufJCClRq3og33n+51s7ecJV5LKddqUZIKLtKTHIhqmhO4L/mVEYE3Yl4Eu92
         ILbrCYLyu4FXADmRzzYZ+lbhimQ8rUlWJtXfJUwmTo/ABhjuDVtcao8Vf7+defXwXqCL
         0z3aT6HDtUxZzFtWI13Nv1iRpd+vKHulVq1wqswTzvmyXltfUAujJ/lnJfLznWDT29MU
         vQ7u3Cf8vfkqmTqKDzRw/M58hcb7pwNAZOjiykghJweRq6mXwilPdpdoAEYQEJafHgDR
         l9I+0hPwtbJDfBqYe3hvLxm4MdAA6Kl3BWRK1hXGmywlfzifiHYhq/qZRbBxdjaStOus
         FARw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=T9M1nDmGgX5fVXaavsRaPprIEjHtbcKIkY/MXoBk7yU=;
        fh=3mOfreUqpok6h4dI/UpTG7zvMCgizbpWfRE1KVMK3Dg=;
        b=Goe+ZvZSZBzakUQmP5clVW8yNTwOMnlBqZQ9E2nHV0Xew8gjPvtCuhF2HCSWoYALMD
         ep6Vp8X45LSvv20Sjru0S/TC8T3gp14w6hKZZJT11Tob2S3opljbDoLLLWfjnq3uUwLp
         xg6qOI2uhnt58LS+U6g4O+ewIi+0N4TTaGZxKH9ZgXeNUyVRfz9D2TS6ttB00G3BH6Sx
         eVQ6ZO4nVntXk49J1Ra5zzHFbnFBdFt6nG6RtB8T++zxo/0/UDN5qXP8MziZatKvwOIm
         K0mQe/BbxvhtdKXNbNsMDOURKHEHpvj8gMxw51ZgLIUpBGFncNO1miKji1nPeQn5n3B1
         Cnqw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717605764; x=1718210564;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T9M1nDmGgX5fVXaavsRaPprIEjHtbcKIkY/MXoBk7yU=;
        b=OYrt2C8a3x6ymSugbqnhPaxCAIhwXsKfjDqhQnd8R1zTPiIe/erGkbxNdev049RHB6
         hC58RUkTKKw7UjiDkMt7727L3Q2oKGgjs9zbEjqpbSB2MEWlQ1tV1kBwJ7n1iHTjRnlT
         oFu1nc9fHVM/XvQXhCXjkNtppNFwfzLtVigLL1SAmb3CVZPzSAyEpsn5gXv6ZSOq85Hw
         CkeBuywdlw69oraT3WhfmaRHJ8xVuRHldboJrMVKZjFiK3bfnYFbU94ifWaH8PwMhrXz
         HWNHnklj21MJWyplePpK1Vh76MAmq/JLVTQZ8U3069k2/mGLNejLrMaHzuj1ApMU3qOA
         ynZg==
X-Forwarded-Encrypted: i=2; AJvYcCVoe/lWBWH0Ewy0DDWkpGSJh4cGsVE4PJfVHnnSl8Oib9oq3uTDaR1h32JukbPEZJxm1Rg1pdwWmfA0r0Jh5c8Kw9/uTKm2Wnpd
X-Gm-Message-State: AOJu0YznKoXWj6Q0iYuAjwkABKpPwZpnPIxzLROGo2hNdexGmexmggVW
	yXXjoj26PsbwLIXBt7wFLIpKiqAcndlHh/8wj6NqCChXFSFi31fjc1RmKi1pLTk=
X-Google-Smtp-Source: AGHT+IEqEVoDpkWjGdYqDPKYpnhAaRMTjnbriJhMfVceGBsZ/nDQZrPWkT2bdEAi8CL8DMIU+Zmstg==
X-Received: by 2002:a05:6820:82b:b0:5b9:8d0a:1332 with SMTP id 006d021491bc7-5ba78f0a4dcmr3390203eaf.2.1717605763967;
        Wed, 05 Jun 2024 09:42:43 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:1486:0:b0:5b9:77ab:4e75 with SMTP id 006d021491bc7-5b9ea57178dls1576378eaf.0.-pod-prod-03-us;
 Wed, 05 Jun 2024 09:42:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVM7IH0U1tCFyCvkTDJkyNqhUQyYrAwuxnHA9Tttu83dMuZvpiAHXznAQDN7sjyvuvQhoyBOQ0AP5YAfAKkXuTBJMiwuiz7DOcOcOHe
X-Received: by 2002:a05:6808:2894:b0:3d1:ff56:f41b with SMTP id 5614622812f47-3d20426b949mr3186137b6e.11.1717605762234;
        Wed, 05 Jun 2024 09:42:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717605762; cv=none;
        d=google.com; s=arc-20160816;
        b=lwXdAbayjs7Km9I7mBYzcd62LFFeZjN05vqz9qKiuEQtDikB3HxOf7ZLfHkIiYX0TY
         7F6pbChuBCqTfwsYnHS44l2SO3F06XauTI++rCuIwlSQCDMlCvoS2W+a3zHznz/NHs57
         KfI/JhLENqrMrZkidMX9V0FlK4xOnsw69xefKEOQg90D+MYRCF8G71n8eYRAve+sgt3e
         b4xeOwrN88Zfq3Ljzpj0P/17ytbBBmSl+XexkMAoKw4D9J05t3qXCbxGS8ewEukkct3W
         6wKSuHoQd0uns4l6VFyf9pyDBjfUP6DIjHIIwDvpHyr5nJL05UqAzZGuq0OgRwW2ub3m
         wEXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=3emK+ZtW3MnTrVNvYJ/YTrwOSqNlUAbkr7k1VeUMz/w=;
        fh=dhZ+PU+EbN3sWMMTWeiK7THfWDmeVmv2WnEI+ph4A3M=;
        b=EtaF1i3MvSPs2r7l6Js1bGgDqhuRm3Vjcz5n8Sp14zNvCRUP/orA/C/3HT3OYMCkRq
         O5Rr2eXSfn4k0Mcex2E9UmIxijfS4h/4DfUk+KCfT5r2duUf83IcXF0TFvIO0I3Pu12s
         emXFUZrXgUxmkPA39Is2BWWEUu1O5UiFNI2f381WlnOJyMktToJTA76IhBe9ciQ6vPLf
         AL8c8F96X1RB1wVrOxsYkam6P47Hlo0Bzt18URBF+PrViJiU8ghAh1FcBDy4Gs2NdrCx
         XwS7bAVocI6H8+9CL8/u+NSrdssUvheINMlGjKmsuKosDz0fjo6BxtKZg/XEUoRjfObb
         W7xQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-795186627aesi421632585a.640.2024.06.05.09.42.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 09:42:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-393-AL-sprMkO8iyK_PU-jZAGA-1; Wed,
 05 Jun 2024 12:42:40 -0400
X-MC-Unique: AL-sprMkO8iyK_PU-jZAGA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B913E195C26C
	for <blinux-list@gapps.redhat.com>; Wed,  5 Jun 2024 16:42:39 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AA0C119560A7; Wed,  5 Jun 2024 16:42:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A798919560A3
	for <blinux-list@redhat.com>; Wed,  5 Jun 2024 16:42:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 28AC019560AE
	for <blinux-list@redhat.com>; Wed,  5 Jun 2024 16:42:39 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-82-Pm7b85s6MiavE-D6-eb-IQ-1; Wed,
 05 Jun 2024 12:42:36 -0400
X-MC-Unique: Pm7b85s6MiavE-D6-eb-IQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VvYCw4W9bz42N1;
	Wed,  5 Jun 2024 12:42:36 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VvYCw4Hrqzcbc; Wed,  5 Jun 2024 12:42:36 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VvYCw4DlCzcbC;
	Wed,  5 Jun 2024 12:42:36 -0400 (EDT)
Date: Wed, 5 Jun 2024 12:42:36 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>
cc: blinux-list@redhat.com
Subject: Re: on debian installed the makedeb stuff
In-Reply-To: <17034398-80bd-a55d-df1d-e662672ef6ea@hubert-humphrey.com>
Message-ID: <a0cc7745-b3b5-4a30-7a6d-227badd25c34@panix.com>
References: <44422bae-814f-be23-2399-3130753ef288@panix.com> <17034398-80bd-a55d-df1d-e662672ef6ea@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
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

It's on makedeb.org if you do the necessary steps and install the
prerequisites.
It won't be a short compile though.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 5 Jun 2024, Chime Hart wrote:

> Hi Jude: Well, some weeks ago I couldn't get makedeb working, as they have
> some tools to convert Arch packages to .deb files. Anyway, please inform where
> would I find this "mist"? Thanks in advance
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

