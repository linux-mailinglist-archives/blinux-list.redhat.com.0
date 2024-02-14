Return-Path: <blinux-list+bncBC3NDNGRUAMRB7W3WCXAMGQEA3KENZA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 692678541B2
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 04:05:36 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6805f615543sf96339836d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 13 Feb 2024 19:05:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707879935; cv=pass;
        d=google.com; s=arc-20160816;
        b=SB5OaFVtWiouhI1lQeMVBgaF9PsJyLjmuazQ+TtWzJxfjcIm+h75YlWmef+9SRVueU
         LV3aIRCPJGyEg+RQNIJLdhcSKia+6CvS7Im7GY5ARSJIOFVJdCf27jNu7YZJXUmTgNwL
         FamR+u1Ch/mMcWLa/yT6yVnTMOqHnvnbVqcNWnY7ilec4frYA/tdPrhmRJjfIMGossbO
         gE+BKl9fzu2u3oeI6RbRckYeuadeBqrHIcbV/j3SO++HnaUuF91VW105iSBmGBjAyt+r
         zI17RIifxsveFC5r7hXzRhLfXNqePpylUMLcApsu5S2xTve39diDmyqNYwRgoOaWM1hU
         fJ2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=nfN790MQtVeYWzXfjDY4qfioAnI91VjPP1KNGMZXnho=;
        fh=W8wRgoKxT796SDi50JMIE5WUJwR4OMxh2epYKNhh5+I=;
        b=SRA85Fp7bLDb4gVhygiF2I7tYR2PU70DierGb0x/I4nCPmNiQo6gDn2vn5Jh8r+f/r
         NPX004uMHcWxveTPbDAS4kI1DZuG93ur+hXJwEnTRzHx8bTVyWqJ2QBOpMpo5ykjsac9
         SywEVemdurccjeEEgpXpioxabhFMRaTe/6xJ9Zl+MIvcF225fZ7qfPvRJiIOXLhvnlGT
         LH/zlkfH2mw4ivCU5gylm5PfOryVEx7RiLfcIuHURT6TWW+1v9fisFXkFkWenaEJl1fk
         i0rdaqUZN2l7tn/uyOMVY8QxVtGm0blTRMgDKwBlEjwpNATnrhL/uJvJalW5t42Fp99k
         F6EA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707879935; x=1708484735;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nfN790MQtVeYWzXfjDY4qfioAnI91VjPP1KNGMZXnho=;
        b=TL1gH9Ek3bRPcCEDKFyuBC7btouq0tVhX8P5CIAwPwiMd+2ydnsvgnKjIzOVVS73DF
         vFM6bYgPt4RGgGVJdiBOqBHqkNCWyhCAv8xM3KhekoTGPlpjO64fIHeBvruLe5YxnP+o
         EtKgddAVoj1eMx4BnPagi5Js3WGgWg3qBeoTj12zxh3deUkzERB9SCOrAXKiy1KkdFOr
         1GPYHz7++1Z6IUP0p5lj6UVyY9/oqecWSE+0Dz7Z+SNOVLKbrHedNuL4J4MDeGKgdE12
         l6NZ1jqfEG6ia7yP43F0DGkpY19Itw/YQhd1CRK34TTHRN0JQAGGPVCNiYEOjahDpGOM
         u2DQ==
X-Forwarded-Encrypted: i=2; AJvYcCUy3YrRKY/XsrBW5aiJBOiWEO2HD5cYoXpQO4HYmn7jYGHI2ejLpuK//9UKfRRQkosf71HGu97zQ6YZI5wZIf8S98XOgMuGZDKr
X-Gm-Message-State: AOJu0Yyu5zSJywAmDXUeWMUzO90YmiYYPja4+/QXhtDc3cqHJW/NIlE6
	RqEnKDIiA44xMK8VGyVQTwmTd2tWnDNi2f/2YCBl+US/LKJ1sfCyDCarHm45QsY=
X-Google-Smtp-Source: AGHT+IH4EBwjSpxWxVs862Rqbs0EzIzvTHyDpGt56s3aUXUuUvz+6ovqKfMrn8M47nOMFaD0eQMm+A==
X-Received: by 2002:a05:6214:d63:b0:68c:4c5e:a310 with SMTP id 3-20020a0562140d6300b0068c4c5ea310mr1626506qvs.42.1707879935091;
        Tue, 13 Feb 2024 19:05:35 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2a48:b0:68c:cca7:f6d5 with SMTP id
 jf8-20020a0562142a4800b0068ccca7f6d5ls4129065qvb.0.-pod-prod-09-us; Tue, 13
 Feb 2024 19:05:34 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWCXy+aUZUx2nyP24tO5sVdiYCrJMRM3cAoauVJKz3BIxqECEOd436JRoyz9WiI3pNRNOHe1lfi8TNHdg8hxflvVF6pYU6/Ciy03bQM
X-Received: by 2002:a67:f051:0:b0:46c:f77e:6f28 with SMTP id q17-20020a67f051000000b0046cf77e6f28mr1651018vsm.0.1707879934238;
        Tue, 13 Feb 2024 19:05:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707879934; cv=none;
        d=google.com; s=arc-20160816;
        b=Z8L/kcKyzvEwcnIHmGwbjuMG+h2tttHIFtoddQxDv5SisFwQXz38+fgzop2t8fLXz8
         IoGhXa7DZxEqzRu/GFKLEQsxnwMPciLtIx/F/VFwAQXy2orKV5ORm0G31EC7zu96YI48
         EcpNmUg1LCy0IxkHlOiqNZCqZm4WtZXlrjmduQG30CHAVlR7AWNDfXbCErC08Nnsqcwr
         Hl2W9206tJYCNZe0I6w+jF216iUrchd/udqgE+YUyE/AWlC4EGydHnCAWeiCPEp83MHY
         5GqfXT6iEMdMb983n103rmtJKgla6LbLRK/YoZFDhuRejJVDdKI8t2hkUCFMNbjPsclO
         Sm5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=1bMQajOXnwkjOnqXJrcPrXLGqExBcMCm+DpzQl1zyIo=;
        fh=dR59qV/DYI6CYkojjx1gXGB7E0BdGjvTDydrEKOyytY=;
        b=gLSInu65JKmHCuimx8VbYf0BMaIRklrulXVZsh/CpJ2FeMck8GuX9/c8+ibLiX3GRC
         i91DEzi0bV1Q4vYdas5V2jDNZxBKt44Dg+AH9ow81yZ1W57itpSxdq2FJMyLZglm1qXi
         jf33zinoiqJ0pQRlttkqqdji/Y+Ty9Juw/Ue04pnk6NDx/B8eTZclQwXU8w8acm18ZVE
         4G4GlWfmZJx0hd+sxSRjTsTd/lazRovWgPxTRBUeI0VvTYBcqyxXeVeLfbzzmPhcq1zO
         uwGTdgTGN2N9K2Ssi8RwUY7buGywUywdtcxqKSWJKG2Kw+gnf3pCv6CZsVavQxuVCgAY
         rNfA==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Forwarded-Encrypted: i=1; AJvYcCVRYcr++xNCOKDn+9+8RcKf1jqun/gY0+QwTjhZAE5FLNyuLuTLZkquNuFpuW9CtM9LQsi4AXjLqog2fU/U0Qcn6dUAtIYKdiCDlQ+D
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id c16-20020ac85190000000b0042c4518c61asi4185634qtn.236.2024.02.13.19.05.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 19:05:34 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) client-ip=103.168.172.147;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-108-330Q5H9aOrKyGZSKEn2YHQ-1; Tue, 13 Feb 2024 22:05:32 -0500
X-MC-Unique: 330Q5H9aOrKyGZSKEn2YHQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A933185A785
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 03:05:32 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 463A5C0335E; Wed, 14 Feb 2024 03:05:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 76B48C1596E
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 03:05:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D15F8493EA
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 03:05:30 +0000 (UTC)
Received: from fout4-smtp.messagingengine.com
 (fout4-smtp.messagingengine.com [103.168.172.147]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-466-zn7Tqp8pOjCZe39iSTCcEg-1; Tue, 13 Feb 2024 22:05:27 -0500
X-MC-Unique: zn7Tqp8pOjCZe39iSTCcEg-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailfout.nyi.internal (Postfix) with ESMTP id 7148D13800DF;
	Tue, 13 Feb 2024 22:05:27 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Tue, 13 Feb 2024 22:05:27 -0500
X-ME-Sender: <xms:9y3MZYZ1MNj-ggotDCCOtsEy-Zs7NYdFnMbXK-HV6EAb9b_rftgm1g>
    <xme:9y3MZTaKtmnG33VV7P3Lm1FsrFHMPvcz9f5k929ayZLBDCQJ3bkMmnF-IlG3uVwlo
    8SMfcYMlJfSZWzNk7Y>
X-ME-Received: <xmr:9y3MZS-1DThTCVLW7yG-ypFHCvPEmiM4as1XPN3he0ST1S45h19X-KeyeWOgP7NUH_iWMDLOf_--Utkm7SDt_ARTfG8uqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeigdehiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:9y3MZSrL1Ty__DpiYv4G8i2aaisUN6LAEj8dYBoY1BGJJP1gFZlgFQ>
    <xmx:9y3MZToBi-4ujy-yCQf_0JTt5bKiHjdjyBAC4FFwqKFUXD5dW71orw>
    <xmx:9y3MZQQ-qGIR3AIg1UsOKhocd-wlyhkoa24XmFThbFSO6Q-axns1-w>
    <xmx:9y3MZa072wVom7g3xGnWd0JR_x9nHSY2HTG5CjI3tMxphoAkoyXJ1w>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Feb 2024 22:05:26 -0500 (EST)
Date: Tue, 13 Feb 2024 19:05:25 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ssh  command line question?
In-Reply-To: <Pine.LNX.4.64.2402132148040.704913@users.shellworld.net>
Message-ID: <e2c1640b-d524-831f-6655-bb9d777fbec9@hubert-humphrey.com>
References: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net> <5c7007d6-dc29-7872-7fb9-d4d7224ac1ce@hubert-humphrey.com> <Pine.LNX.4.64.2402132148040.704913@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Hi Karen: Sorry, I didn't look at puntuation, as I hate it. You would
cd .ssh
then run
sudo mv known_hosts karen-known_hosts
So now you renamed it, so you can get the new finger print, but please 
wait-and-maybe more knowlegable folks will chime in.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

