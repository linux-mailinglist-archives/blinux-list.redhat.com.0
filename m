Return-Path: <blinux-list+bncBCLPHQH4XEIRBYGE222AMGQEEW7AEKI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id C28B6931D28
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2024 00:27:45 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-44dbd6ef5edsf62254491cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 15:27:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721082464; cv=pass;
        d=google.com; s=arc-20160816;
        b=UmK0SCrbxnitvq13nxyL4hM541LD8mtKAc752XQnerUMZTOXhLJ2eMlDbjaf3QtT2t
         00g3W3Ae9+j1OCZoCCyjLATnLJpncGKzCYPdJYP2R8e+cbG6SZhsUE6KN8CQ6r6qZdNr
         prCnXJIs1PViajMyWFxcUOV3Aa6jyLWIqNSQ9mVILvICVrENztOaIBu8Qyk01ZfI9gFI
         adx4ALmW+Z7E8jIgadovEuWdGYVEUeCP7npOVJhkf2QkN/XvT96vuk80AYUyphUgQ9dM
         JFLfjJJtAVPnCF16EOwSg7W9HXEYzY8sy6W4t02ALsVasmTOawx9kD4UvKa2099Phj8m
         Oxhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=SNcPDh5TPbzIJ2fBNglog3peZxG82o/5NljradKUh1w=;
        fh=YE1uQbEgGeZ2t+jKZG4qJZiCSDQfeymu3fGtpG1Z/oU=;
        b=kwfK17B4EgDAHjJEWwl2A6x/aStMxPHtdLiU1rKCK+JtMksR2mm6Ik2g9ua6joMaRR
         Vs77E6U9LL8OLa6+tx2X/nMNansjMrX1yLrMJJKtNPCflvNscciHDiEQl6ltUfeNtjYZ
         hiSxsl9T6d8eCY4hm0x2PkVDJJjdhR3JLrGmQyZt1/yYI7qeib6GIkzJK+5+ddOxpk5s
         qEEIiBAHjEaC3w8sVW1YWP39SlW7rfxAzptBn0WOdReSqK6yfPVY5bjqu04x6QSxTYVc
         wUdExeAuA/tx0mx26kicARYTsHYTXrr9aNrYttsUlAbIzvmv3bvwgmRp7ub5YZWwElGc
         a5zA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721082464; x=1721687264;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SNcPDh5TPbzIJ2fBNglog3peZxG82o/5NljradKUh1w=;
        b=OfSv435ED1YEAPagfjG5/d4FGf6lTNyZ78CmA24pnGCY/HV9phCv4QnCRXrbp0ME2t
         D/vCmg+TwEXlfDvYk8QJPWLI8+am3V/fvu1kuefoLckcYPLAFdPeEtQXMg/F6xbcahGK
         MJNdNq9ATvL63QUFo48Z2W4c89E85PWX6vKsuTp9iFPCxa5QxR19LYfY4QxtRBAQXZHe
         ExSlbFh2J7QNuQLxYC3HwgpdcSh8r+i9v8SralveuCy3tLfABRAmcAuvIHQCmV1rduOu
         g9jN/oh4/kRJPB2oG573ZYeKwcCps4Dz7PveoeU4DBMkkb2SgCWlItonXYLkvQ3QKarh
         Eb9Q==
X-Forwarded-Encrypted: i=2; AJvYcCX2dNlZSuJMmXEN09KOUAwFjaGEJpv/sSi9KiBDt+VR2WqBjsWvkVh7mNA64y/duoe8ssATyRsnoTL3KouhMtOgoMPm7NXxfz1B
X-Gm-Message-State: AOJu0YybdXoCxqraQuiOQ4ScM1u2fuahvCOpKMIXYRXkzQJodbXfM+kL
	rDPD5k/g5UZVnzc2z3HB52yuyetXA3KWHGmmXN9snjaaiKM3ypdquhXUdGcCNsk=
X-Google-Smtp-Source: AGHT+IHgdc6mn2/2lp4fur+LtA9PiSbN821yHmQPH8skdL1wSRpPMX661f91vMcyWwY4q+rFItlIng==
X-Received: by 2002:a05:622a:153:b0:446:63e9:dc82 with SMTP id d75a77b69052e-44f7acb0f55mr7460031cf.4.1721082464496;
        Mon, 15 Jul 2024 15:27:44 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5243:0:b0:447:dd69:eb84 with SMTP id d75a77b69052e-44d0319bbb0ls71789561cf.0.-pod-prod-01-us;
 Mon, 15 Jul 2024 15:27:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVvjeoGU0HkM0YVXSTmwf+avNC5lQUtQIeCfW0y/1EUi5/icOh2D8p/DPUgSVKmqR5OG8i2OesFAHLMbpdzB45tk1M0vfK8oB03UkIJ
X-Received: by 2002:a05:620a:6191:b0:79e:fc64:4236 with SMTP id af79cd13be357-7a17b701210mr39569685a.74.1721082463463;
        Mon, 15 Jul 2024 15:27:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721082463; cv=none;
        d=google.com; s=arc-20160816;
        b=v4V41oBEGAWN1VTlzgOubxR/TVTm1A7kuNXTEQQZOBfW2+wtcauFgbfW3GwVuGQCt9
         3lP3mfpUTvYOSpR9tlo4IWsb8dmhsC82WPqaILI0KVrydArklQVeIk20+4r+DQSz39Xu
         UntRkQkVezcwSfU7fp/nk0CvgVR/St0XLw9qoIByWpOD2/IAu1pzd4p36yf/BAb+6pw7
         ODF4pkRNlslPR6x3Cy25bfy0NRGknpDRWXrMp9E89a9xyT5mPbOArO7L0oF6L4uF+Qh8
         9NZ+LErAVbpKBVs+sLJUq7ygNNJTV+TVwv1WXNy2UmtKK4cUgpjLA7k9wi0jDde0n9oR
         JELA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=WLEyqwSWYRPQSIa/9KxNCtWkcSV3FewvSnfC1uVwkTs=;
        fh=Fku0pTnhkFLD6c/WL3jDDCEXY3oFpeV8DKFQ7ishoJY=;
        b=qRa64UyyO6UOG1pA+LWzPOlWX1osxM3sxb+ODLSYmhFQZkYmct5g/Mv/hwEK5DhpFC
         yg4oXRk2JaQhtvAsBzyKLay+mVr6BFs1IrPRlru97PMOFF7dYggb0oKVsnUa1WsK/w0B
         CE8KJod2haqotQwZZo5uHTIgDmwxEhiFK/7VIzFDAwjWdToe977HGfDm+ioUK+tT0gX2
         1Tw+vbCJjFx2H9M85k61wPt8dKc8Yd6f2PUbRnXbnPf9PCyQR4ek1x593T8jm3zg/w1d
         wyBlskObIV472CXNqRrnGb+7VjMVJ7R0heo7PTajo5dchAfdSOOEUWnxyKjYULs0YFCV
         MOKw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a160b7bd01si619104985a.134.2024.07.15.15.27.43
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 15:27:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-352-3p-QLcDQMManSEp_SQoQsw-1; Mon,
 15 Jul 2024 18:27:41 -0400
X-MC-Unique: 3p-QLcDQMManSEp_SQoQsw-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 194361955F3B
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 22:27:41 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 093761955F3B; Mon, 15 Jul 2024 22:27:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 06C551955F40
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 22:27:40 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7AD4719560B0
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 22:27:40 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-68-GmMJ-WGlPheEfP3C-oW-lg-1; Mon,
 15 Jul 2024 18:27:38 -0400
X-MC-Unique: GmMJ-WGlPheEfP3C-oW-lg-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 39548320AC;
	Mon, 15 Jul 2024 22:27:37 +0000 (UTC)
Message-ID: <3d70cf4b-0334-4038-a265-a319ca855afc@jasonjgw.net>
Date: Mon, 15 Jul 2024 18:27:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: how many Linux machines do you run?
To: Karen Lewellen <klewellen@shellworld.net>,
 Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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

I have three: a laptop with Linux installed, a server hosted by=20
linode.com, and my wireless router with OpenWRT running on it. I also=20
maintain one for relatives, but it isn't mine - I'm simply responsible=20
for administration.

The server supports DNS and mail (both inbound and outbound). It also=20
includes a Web server that runs an instance of Pleroma for social media=20
access via the ActivityPub standard. (Pleroma turned out to be easier to=20
install and maintain than Mastodon, so that's what I ultimately chose.)

I have other operating systems here too, for various reasons, but I use=20
Linux extensively. It is not a secondary option for me.

On 14/7/24 23:45, Karen Lewellen wrote:
> Hi all,
> =C2=A0many times I have shared that my entire Linux experience is tied to=
=20
> shell services.=C2=A0 Dreamhost for my=C2=A0 employer, shellworld for bot=
h my=20
> personal site, and an account with them.
> Because shellworld is still refusing to incorporate current email=20
> demands for ptr records=C2=A0 for host names, I am wondering how others=
=20
> manage their Linux experience.
> If Your host your own email, have the equal of a Linux shell with=20
> several browsers and convert tools and so forth.
> Do you use a single dedicated computer,=C2=A0 different hard drives,=20
> external USB drives, or partitions of a large drive?
> Aside from educating me, perhaps learning how uniquely one can run=20
> Linux might help others new to the concept.
> So, how does your Linux garden grow?
> Kare
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

