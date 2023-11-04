Return-Path: <blinux-list+bncBDYPVTOXSQEBBDN2TGVAMGQEMD2RS2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 535D97E1001
	for <lists+blinux-list@lfdr.de>; Sat,  4 Nov 2023 16:02:39 +0100 (CET)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-778a65923bdsf357125885a.3
        for <lists+blinux-list@lfdr.de>; Sat, 04 Nov 2023 08:02:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1699110158; cv=pass;
        d=google.com; s=arc-20160816;
        b=C2tunfUEGMhqHppNQuvXr2Li1phh6PkCFoQndw8GuIC7LhYP1bYzxKEAhPIIX3Nbfw
         7dL61IfND+98tMNFkKhy3vxkpsKnmQ5UhFjbpzliBzgvcHM0fvD0DJ6wmwZ8IMNEABk4
         Ws2mlB2q5iQjnxwJIVunGlkyorwGRvNblxBxityBXmmh9A5iypdgJn14PZFBeLwMJXpP
         OqaWN0vjGBfVF2UD2YMdPUF7qrycI6F1LLOKQJV3SQXi0fgdvvszaf9Xn4wiE+gZ55yS
         kQhXOqHuYPcyAzLr/OB1SVIaa1vg3VbjTxtzA0Jo6n1pMBOp+fSuiunBoo5AmKLRYWjF
         KpmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=VqU+ej9IvLKuZbjtsFRzdfdxa9AxgTo09hpulwrFq6E=;
        fh=+yZQLoL+cnacxeL2FwmVaUzeiDl5iQWuXdQF6l72Pgs=;
        b=RhNeQy+pwcXRtlKS8i3KbZm6aphpBlTrI7jg6PLk3oer4x+/N52nb0gRKLk4bwTESw
         RMvK57J8TUH4DDewc3cdl986QCO4PBbxIPoDhcqRNkSpc1Nqdge2OKIG+EIZDHVHV5U2
         3AsJEWSYD4W742onXWqx40FTBeJvFgd/dKWxmDcXEgSXWUN68sEuo72z29a4B3R96gPe
         4Ugx+YEkCtzECiUChhSLv3SFfEVQjbkIkjNB3Zjsk4BfI5RdIxT1DpyKWexC/bzbn7s6
         yUE74koUHOXSOs/3/EjTcRzIvPxTsbtSJ5u1nWUIpjpLokdzdhFZbUAMUvEtGDaWoYm9
         nljg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699110158; x=1699714958;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VqU+ej9IvLKuZbjtsFRzdfdxa9AxgTo09hpulwrFq6E=;
        b=nMFJBmYm8j4Z0bDqSIdxzjGWGXKPITxQJMYHmOnDOI272MqOj+kAPGloT5DNuMLwTf
         MHFkR9HYMMHlJjTAbhHkfUqUXMa/DIIq3oX2BGOcwcsHr5RNHslVDDCFU2jytW2qNF6w
         01Ngbl2guCOc5PF1FGfavJfx/cw8i1Ski1UcSOEFazFI7c/VoHqkpTCNfbhXEG7ZI0fM
         w115zDGWV2bo0rRG7VUFh2hNEDGnyZHmg7ul3yy59QVQgjK99LiFvWhAvPiUgoMSy1+g
         Ka0jnIgvlJ1qNezxGS8pFATvB2ZHbFmxmP1VSg23OXT4HNHwuHl5AIqNjqLl53y3Zlaq
         o3gg==
X-Gm-Message-State: AOJu0YytbHejH5bbm72iLzQwMcZCQV36c4I1W/JHZY5uvO9oIiJG+Wrm
	886zrsd2NNMx22bDCj3+87rpag==
X-Google-Smtp-Source: AGHT+IGDlfmOSXtYqRLEc2kMys9DBn8BaLdoSuuXrDphwsmbLYoLSzV2bSvbCehMmhu0T/pSau/n9Q==
X-Received: by 2002:a05:622a:1386:b0:41e:1777:b474 with SMTP id o6-20020a05622a138600b0041e1777b474mr30670823qtk.31.1699110157737;
        Sat, 04 Nov 2023 08:02:37 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:60d:b0:419:693a:afb1 with SMTP id
 z13-20020a05622a060d00b00419693aafb1ls3755100qta.0.-pod-prod-09-us; Sat, 04
 Nov 2023 08:02:37 -0700 (PDT)
X-Received: by 2002:a05:622a:2d5:b0:41e:9953:ff93 with SMTP id a21-20020a05622a02d500b0041e9953ff93mr5479794qtx.19.1699110154982;
        Sat, 04 Nov 2023 08:02:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1699110154; cv=none;
        d=google.com; s=arc-20160816;
        b=HBQ3ZKCQKeRmX2NcWyRGBBk1HRVfEmK6I5f/YK26P5DLbmL88s7BCNXgYTgMhw6AtB
         csi+zuub2oQCB5ImMhL1i5apZJ5T+JVUuxgAr/zxyjAp90CWWT/erEE31jwgKSrNI1bw
         pNsFNJiqfUfTXlFd5H7GHhljUChB3NZBJAUhhb3/BZsoCZlv8CvkaVVXJErKmitvcvo1
         viDO8cwR/vkIWhNHyresDZnEN5nYB5fRjWARxk6zVneqPpwLmR+tlhVjR8vHJsNRQkbi
         wmlsukxDEdBxvBiuQcMKhYVk9eTvtpxAaSjZFpbT6hwx4AKO/R7INjpQ+nESiPE4w2qp
         t22g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=mgevGKTAWDDF1qaJJqaRUFW1lFFdRyjkOhF9aO9XTJo=;
        fh=+yZQLoL+cnacxeL2FwmVaUzeiDl5iQWuXdQF6l72Pgs=;
        b=xtT3aW0jr2TbgcUPwDSiyPyApkJ3HdgGz7UcPze+7okWGZkQ0wWIuVYfuzo7Af6/QU
         tjmNz5xd5CHd9GQUqCLYtahXs53qt+hvnjikUEGUQTeWa1GAeSyAFBiZ0DkdKxzfglAJ
         3t1WhmXJgOFpAelV14jaCp5mWuVHOyk6dNsEoRiO7AoLQ5o0L/c7qy9Vh6kUbJ2YHiw3
         Xe40+m3hEWqoFVBAsSUz0hMZUmkabPFMqjWZNUJiHUlmHG0gUnGXeSnFIuc4FGv/HibD
         TPtNd8hcmj4Yo6sltO0sSsTGzTslYZwkfuObkQ+/81uVhxXfljF7ibxtTZtQ0jd+XfIz
         hu0g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id b3-20020ac85bc3000000b0040306253e31si3212987qtb.416.2023.11.04.08.02.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Nov 2023 08:02:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-142-aCtsJdO6MxidTXgNwiphug-1; Sat, 04 Nov 2023 11:02:33 -0400
X-MC-Unique: aCtsJdO6MxidTXgNwiphug-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 70870185A781
	for <blinux-list@gapps.redhat.com>; Sat,  4 Nov 2023 15:02:33 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 6CE112166B27; Sat,  4 Nov 2023 15:02:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 64CFE2166B26
	for <blinux-list@redhat.com>; Sat,  4 Nov 2023 15:02:33 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42FB080F8F2
	for <blinux-list@redhat.com>; Sat,  4 Nov 2023 15:02:33 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-664-TmmL4SOTNYiRRn7zaHruNA-1; Sat,
 04 Nov 2023 11:02:31 -0400
X-MC-Unique: TmmL4SOTNYiRRn7zaHruNA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SN17C0KNZz4PMy;
	Sat,  4 Nov 2023 11:02:31 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SN17C06sbzcbc; Sat,  4 Nov 2023 11:02:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SN17C02QbzcbC;
	Sat,  4 Nov 2023 11:02:30 -0400 (EDT)
Date: Sat, 4 Nov 2023 11:02:30 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>, 
    blinux-list@redhat.com
Subject: Re: How to setup Audacity Arch Linux
In-Reply-To: <fd258794-2bcb-4287-8278-cb74b583f683@gmail.com>
Message-ID: <7176d930-e174-59b7-b6e6-ac9be11e9ea2@panix.com>
References: <fd258794-2bcb-4287-8278-cb74b583f683@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Wireplumber needs to be installed since it's replacing
pipewire-media-manager shortly and pipewire-jack also needs to be
installed if not already.  What runs jack is jackd and it can have some
complicated parameters.
Maybe choose alsa for mic and make sure capture isn't muted.
beyond that if the audacity arch wiki hasn't helped then it's time to go
to archlinux.org and to mailing lists and subscribe to arch-general and
ask on that list.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Sat, 4 Nov 2023, Pavel Vl=C4=8Dek wrote:

> Hi,
> I am unable to correctly setup Audacity. Arch Linux, Pipewire.
>
> In preferences, first combobox with label guest computer is set to alsa, =
and
> can be chandeg to jack audio connection kit. Second combo box is set as
> Pipewire, I think it is for playing, can be changed to default or hdmi. T=
hirt
> I think for recording is set to pipewire and can be changed to default an=
d
> alsa. What am I doing wrong? When I use gnome-sound-recorder for mic
> verification, all works as expected. I tried to switch to jack audio
> connection kit, I choosed my hdmi to play and my family controller (inter=
nal
> mic), but after recording, I get information about sound loss in selected
> regions.
>
> Thanks,
> Pavel
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

