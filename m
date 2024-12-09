Return-Path: <blinux-list+bncBD6J3OOK2IIBBTPI3G5AMGQEDKRH6YI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 428FC9E8A68
	for <lists+blinux-list@lfdr.de>; Mon,  9 Dec 2024 05:38:39 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-466911d43f4sf77884121cf.3
        for <lists+blinux-list@lfdr.de>; Sun, 08 Dec 2024 20:38:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733719118; cv=pass;
        d=google.com; s=arc-20240605;
        b=Md20MzfYAtPXLW6n6uPw391HbxvaY9/9jFLnuyfzsBRZ4lfBU0LSXDcD+pZoci57uq
         4QyWxLQmUGYyBc8jRax5A635sr96rEN7BZ1S7jDZwcJLcWjOyNfEdsuFWcAFu1Zawu9V
         HFq+Is1EeZ6otbaY8uOIPqJci9jCB7djaBaIVSzRe26Tuit8nm9jqSNiRC+LrZYsfWNw
         oD2xn08cn2LwFljwemsi3WCjVJoijAKVGAX6qEm4Mo03Q9GrcgLNLC1aOLIbQ6813laD
         uAiBMYlKaVBX875E4vg5gS7U7TP8Dh5Vm0DhVjgOjyBxoQdyvLh+VoDXLBKdv7RqS3kd
         tlpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to;
        bh=iVI5exohMncwxP64B8ZCZye5yNJpzprfHQmAG5Az22I=;
        fh=mWfknkBpHCuK65Ek4Dy/JcFiSibD/jF6yokHXnRQfeM=;
        b=i1uIk398RI4wTN5m98g1dlnyLS3h/1Bo7PlQ8FXsrw7qusujZWsl8Soc6DMER8GtVS
         po0vwzvCzwwTRQf8RUJv+wMeg2my1u35n6lMvrfpcih75Saly+cS1S95Nn0elPlmxd33
         7GPAU1qbE3Mq8xZWRrOaJxoGGPKO49Dtbb0AMZbNtPav0mtWyzIpFNDseR3j3jFoME6J
         ajol/k6erIyQH8V1rc31dfR9V+U+OU1m+2uhi1Ui4/4e6ohs6nmSzu+WpOi+Ijfma1nW
         UcO8DhIoL71zzQBWoZ7BneChfJFGdY7KugQEkUd+EbANcNC0oJKlM1yHc0M4L1tfuVwe
         tjiw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.19 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733719118; x=1734323918;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iVI5exohMncwxP64B8ZCZye5yNJpzprfHQmAG5Az22I=;
        b=sVf2lXxmx53am3zJc7XIL5YQu6kmEhIAqlpVUjWOvJEbd9O9HpHHWY+7dRMsWTTIfJ
         8JFoyn9MJKmNkYm+xTMLI6qw7Lvkj2wU3IgC3f/UIgk49pnidsgnGKK3wSbLIwyC/Jk/
         MfbEkkR64Ts2dh1GTuAaHvDGZDnNGwFVyV0RDZNhC8b0dh+FZhjiIhPQcISqpmfwgIbm
         uASCK+HiBg/5An5CdJOHgNTaXAYXp2Ul+urNPcKH63rjwtbNl5huRqRxCdZtf0A+B3mC
         Nxz6Tpc61jOaFiaa1ZtLwM10+Ls/aXp5+k/vCrEl19b7zPtexNo51xBOadcbEYv87bnu
         xvdQ==
X-Forwarded-Encrypted: i=2; AJvYcCU0vrWm1zObidrDPix3YQShi1Hso+y7VZ+8S0aNzfzd4ISTOUUYvtwVd+XNhF27qrH1rfbe0g==@lfdr.de
X-Gm-Message-State: AOJu0YyAbHHRlOvRHj6MjA0tMC9otxOscxtHPN67r39lMSrr4HnmpwSC
	Ax4hepBnE5zJMwptT0HvA+Uv2XPl7yt/UxYNWUoCIoHyjtptV7ZraSGw2DY34lE=
X-Google-Smtp-Source: AGHT+IGD0v0fdfQE2Y5v656UkcXEiEfwwE0+7+fFeAMU4MjY023HTGWsqmvEO75/zc6gIOLs7LnIZA==
X-Received: by 2002:a05:622a:13c8:b0:467:692b:7569 with SMTP id d75a77b69052e-467692b797bmr22762071cf.52.1733719117705;
        Sun, 08 Dec 2024 20:38:37 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a91:b0:466:9e59:9807 with SMTP id
 d75a77b69052e-46727c99b99ls73250671cf.1.-pod-prod-05-us; Sun, 08 Dec 2024
 20:38:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVxF3npaxUtesfv5R6d0mdVHXw4YHCGeqoprhUKZ67OyhGiZHqti2u4wAKLA84901LzCP2Bg7vwI0LPGg==@gapps.redhat.com
X-Received: by 2002:a05:620a:1928:b0:7b6:cbc6:c88a with SMTP id af79cd13be357-7b6cbc6caa3mr863865085a.33.1733719116650;
        Sun, 08 Dec 2024 20:38:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733719116; cv=none;
        d=google.com; s=arc-20240605;
        b=ROldWcAL+Kx9nKm67UC4DGhNKPux1oCqIm8XK97Gp/waikZyshpZZMk7vzN3cnSnh6
         mN8evOGCr0QCaoQSdGIIioNxPJ8fujQOTxJSrmsMsraS27Owz7Zmkmq+we/GUWqVi3io
         dnA4hJ0s0g+hNWbp9jhD7q4F90l/i4vm4LrAUkppFfKEFSw8TnCwbBQIgIwGxlaP12iq
         +m2MZUktr6bNVGEDKbLrGcwsWJaG7M1uKgBR3M3M3Tgc6ptQ9sKFFEW1wGZ36e3hBg6A
         TSDyv40kv7kBGHVjuDJKat9k2oxZCTbNJZklcQmQadwpVbwPd+vaED/LBDWO9gURUd6i
         diiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=jIiMQimmxd7Gp1VpQQ+qW57qdbPK4v7eG8AUsfhCXrg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=kGrrRUwlGl06TRHa2XiFupJnssOMUGbcD2Uq5/ZBooKAighW+1cYMx1QI2/Lxk7WJb
         esxNni+Yhcl4a1Z15eu9U1u5MVM0WGR+TSEMjtOzFJTD1HtEF88A1DxxD6Rfa/Uso+aI
         9Q0MERWf8RVlPwqCkKBGJal/DwY0mB24RIFFCXZn+8/G7aeGbWdbHxVH/mJmgo65AbfK
         +bNuBO5gT2X60lGGjdguRQVsjvliJud4rcIkUX3cMPAsp2gfsO59+hwnOkEazuu4YTuc
         xwSj94QilICSQiymq0YjnQL2wkpwIVWLmwPmRH7+M0fgVcOEQpGEYrKg9atWV0/phI8m
         resw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.19 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b6d30a80b3si248667085a.488.2024.12.08.20.38.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 20:38:36 -0800 (PST)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-125-sUGcpIDEMI6iJhW_MG7Maw-1; Sun,
 08 Dec 2024 23:38:35 -0500
X-MC-Unique: sUGcpIDEMI6iJhW_MG7Maw-1
X-Mimecast-MFC-AGG-ID: sUGcpIDEMI6iJhW_MG7Maw
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6846D1956054
	for <blinux-list@gapps.redhat.com>; Mon,  9 Dec 2024 04:38:34 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6276F1956095; Mon,  9 Dec 2024 04:38:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5F9A9195608A
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 04:38:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D21801956087
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 04:38:33 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-70-cHsUlgyxOFWQ5q74kzeLpw-1; Sun,
 08 Dec 2024 23:38:31 -0500
X-MC-Unique: cHsUlgyxOFWQ5q74kzeLpw-1
X-Mimecast-MFC-AGG-ID: cHsUlgyxOFWQ5q74kzeLpw
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [0.0.0.0] ([208.107.97.40]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MG9kM-1tPxbG0MSS-0043EQ for
 <blinux-list@redhat.com>; Mon, 09 Dec 2024 05:38:30 +0100
Message-ID: <20241209.043800.647.26@[0.0.0.0]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: My Sound-Cards Are out of Order Again
Date: Sun, 08 Dec 2024 22:38:00 -0600
MIME-Version: 1.0
In-Reply-To: <41ed14fc-97e7-bfd8-b13e-ad14d429cc1a@hubert-humphrey.com>
References: <b5d047ff-5695-bbaa-d3c3-41ca7fd56396@hubert-humphrey.com>
	<20241209.040341.694.24@[0.0.0.0]>
	<41ed14fc-97e7-bfd8-b13e-ad14d429cc1a@hubert-humphrey.com>
User-Agent: POP Peeper Pro (5.5.3.0)
X-Provags-ID: V03:K1:3aoNtuw3iuBGHQGuovZ5zaWj4XKZ+OqR7+y2cFU4WxrtUsKmJ3B
 SCi7aRzenpCc0Ye8yPq8SA+y4/oSwRzvpAQmd45W1wtKFUmvpVgtWAWp7w+iFHXd9kmtYin
 MMG6iwOwvE6YHfg5QTWTGHc1DaZ3MSf88ntU8nqg3tttCuXVUwOW7ZvbSlzQReo6qWg6aur
 95TJsCWJv1CAg2+eZxrig==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Xw2a/gRX0Ws=;wnmLJgQTln/geqHUxr6rVCc3hEe
 o26Cn4SRTwU490tB3pfYjyCjeqxBN5eIx/HeslNXuW/7pEFxk2thwr/gIo7HTCjhlHQuL/9CH
 TXqDjPvh2FeDFFev5nKixIatB7Nvwr89cM6veLcvxvH1C2WXEEP+FDNA5m5KupWFoboeeuWkE
 3XCNpj5F7ksqOpZruGthLAb7SWerprbphOmExpTc/p3PcFnejzHKtGfFc+Zw194E/o3BexeSE
 HtQsjcA6kf/tQAMoPq7j+zcxwQwzHiReJJXOJ/Gg3cfiLC2Kdhrx7zuR3Sf6xgOtgNmdDbcgC
 /iwsYOPyNIxoZl9iudHmODH56h7eyCFYXZExKqviapuI+YPB8MFMZKAWmhOcq75KMw6Zt+v+h
 e7vsqB2VRlUhv39CBwNAjkJoOVvn3mm5BBVoQ9weMfegWHMIbwO1XXJIa7S2r6cg2chQbBPbG
 CIVLoibnfMNA6G8MgafZAzTD//CbuNWtGmuJ5cOL0SX6088PZbHGEc8K2F8YAYjPr3fH/BX0X
 htTRFhxescMJ8VkWhDlBe7gmLvWA0nB8/Jl9PNS8A13tHfVbgUf0Okv60IRYpFvCMns9z3e10
 Ofhd5Tr31pENnkn0YoUJR8evfuzQpRc3VAiWZPSv+56WSuyO7FY0/TNCeJMCqH3waf4h1+ClA
 fQJYlmcPThieMfU1DJHXtoDDmUg0RkIFet8lxgyhR9DeX1dEDX2wcsMLYTU0n6noNkM/mdY+4
 E+wWxEU4QxTASBkRAal5ArV7cXNfX3h/N2KbipNyCMs5G2ixEdYhyJQW+A9OSoBxIxLEt6xe4
 CVzdKXPC4dXZ9GNBcdLAEgTFmAiJGIYo2pwdPgNvnGH9t4gFDs+Dg8/8NxvumStbyPuwUoffs
 Vrq4AFERvD+fXtr631tKQ9cVnzWF0EzfHTA7W1RWfs7ybxuK5UG2RcE5p2EkgAkkIlNpCWENG
 4BfQO+pRZhr41gM4HFkhp3wAD2kpNvBt5Zr9ZeyCCePUzVF1leBJTDxowZdlgXvCMPCGcv/LN
 nbEif4eB4ZgEhncB5CstB62zBNnBCFrXofdLTjYDKsSsdAue7MN34cnLMq5Jw2jW2RIpEB3tv
 duywviONz9ca1g90F0IQ+5Q98BLnJj
X-Mimecast-MFC-PROC-ID: Z1gFphx9aITJ6dxAz6x-907hEmGMWCagQvE0fxN57tU_1733719110
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: DKFVa0TJVTxNZ32axu4_rn4bimLjtU4D5_xq7kj0FxE_1733719114
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.15.19 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

So if you're running pulse, you can make definitions in .config/pulse/defau=
lt.pa. If you're running alsa, I think you need to make your definitions in=
 /etc/modules-load.d, where you can make a configuration file that lists ha=
rdware ID's and modules in the order you want them.
The way you can have mpv use the pulse definitions is something like
audio-device=3Dpulse/alsa_output.pci-0000_00_1b.0.analog-stereo
in ~/.config/mpv/mpv.conf.

You see how it doesn't use /dev/hw:whatever? This way, it doesn't matter th=
e order the cards come in, it uses the actual sink name instead of the hard=
ware name.
----- Original Message -----
From: Chime Hart <chime@hubert-humphrey.com>
To: Rob Hudson <rob_hudson_3182@gmx.com>
Cc: blinux-list@redhat.com
Date: Sun, 8 Dec 2024 20:12:45 -0800 (PST)
Subject: Re: My Sound-Cards Are out of Order Again

> Hi Rob-and-thanks for a rapid reply: I think I am useing both, although I
> prefer alsa, but we have I think pulse running through vlc for an audio e=
ditor.
> When I type paplay or aplay, they both play in the same card. If there is=
 an
> accurate way of answering your question, please I will be `quite happy-an=
d-run
> commands. I am in TCSH. Thanks so much in advance
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

