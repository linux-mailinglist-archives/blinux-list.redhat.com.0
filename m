Return-Path: <blinux-list+bncBCVPTHE7K4IOLNHUXUDBUBDHCHUXS@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 53517A4325E
	for <lists+blinux-list@lfdr.de>; Tue, 25 Feb 2025 02:18:34 +0100 (CET)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-220f87a2800sf168724505ad.0
        for <lists+blinux-list@lfdr.de>; Mon, 24 Feb 2025 17:18:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740446310; cv=pass;
        d=google.com; s=arc-20240605;
        b=A2M6JVDC7nviv3I2HxNPa1hUuptTQf8eGv/jCl3rkRHdxg4D3Ove3+juA2vG9EMaDM
         01zqpkTPMvAnA2HvxB5XOBkq/d4dGkHUvEg5E8wnE2ErdOZVAgMcQVEex34lSwBmCWjH
         p3XLa8tG0iRbTNNBVbXQJIGMAMGA6bmUnr+E9KUIOaaDoJHLzdwZOhb2IzDwDy88oPO2
         ftde9jjeXCQ7Vq4UyMT3Baoi6ehDC/kwaWmTGw2aUY6K31niY+fR6ICriDnzi3xsiYpS
         +wsuxBU2CsP4Gx/qpa9pXlB4RAMHck8U5004ltMvCoWH4fSM5lgsfDj49nc/cCJqN2UI
         IYNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=oFU1D5jU7W+Y/PDBwn2pcVoHqe1e81THxkOqGoapJfs=;
        fh=grRPiVM3FlqvyUyVKfhFpaLp2g7L5osJwRQHDapOVug=;
        b=EazZRCr+MO+zhifgtE3lUnJ3uMwTfXCnYwrNra7n7BhZkhzqUM210rBSUTeCYAMoHu
         Sevuc7XEGA49aV5oHJs6WPO6VNc2sMm74PZv8QcVGWKCdoenlDGtRf4UdC16MJc/PkVi
         PDhS/qXx4UYVJ2TjiGu0rdmx4r6y6YubDcNMhL7st8edT67IoHDjj1Mffz9RntYRNz/J
         0BZvwwx0pi7P/m1gzkHBKmd9pYIQ5hOjUHXXarom6CjTOxmVWhUbFnkc7hkzbjAKZIVP
         2dPcIrJqwtyBI0nZCnjNkDEqM8Oj1ffSHrONR/1vfHy4Z82hgvlzQrGhYwURrzRi4V6q
         iWqw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740446310; x=1741051110;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oFU1D5jU7W+Y/PDBwn2pcVoHqe1e81THxkOqGoapJfs=;
        b=FHOJBZi2tppp72eugfpXY1xM2yaOsdM2u1hrhK/yKtWYmtnId2ZvWqqGj2pQFkGi81
         IRU99rhlFaLriraWpnDoiK1zqDttSVxKxQQYKfhgnmv0KMtfH46jyPwysLED/yv+KS6G
         Zkd94HM62/axVlxotwsk/ixdYAYcZst9SqHZoj1NRZM+8q1QFKXnj0fY6Z55smpZ+HWv
         KGoRqYQBDa5LJuYPTxdzNHGiwYtnQ14VwZfan4gd9KeKEmAnOtzbR0nG5ZLGWAfeYNHn
         bt6laoJCztfltwZ/pKtncLLvGVXVor6b2dXbQONy4tydpqI1MIqoKt/dRCy37MJaO5MG
         IElg==
X-Forwarded-Encrypted: i=2; AJvYcCWGmhhI1vfKokXbLjvWzzA3c+hcAAe0pImj6fKq7/qgHZ1wWQn5fBr1HAxl7RB2UqsRuCO1sg==@lfdr.de
X-Gm-Message-State: AOJu0Yw8GG+6SLe+h1qJQ97otZgSZb9HOMFuUVtvBXF0QbLWjcIilR0B
	TctAiBXccNcfX2wGyvwNm0AnaGVsNOVhUfVT8vQ4pU2ISczTviyKDYusrmC/DxU=
X-Google-Smtp-Source: AGHT+IGdC2rsM+ThvUhFoRtkFcpbXMs7bPkE7NKmHt1cSr5RekEKL1JHGyBbOt1KS5GC49QA7vaLMQ==
X-Received: by 2002:a17:902:d485:b0:221:87a2:ff9c with SMTP id d9443c01a7336-221a11ab572mr231335695ad.52.1740446309533;
        Mon, 24 Feb 2025 17:18:29 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h=Adn5yVHH2URy2UHxQs56bWuD9Yi4MxtxH8NNiIuAiKu0zzNQ2w==
Received: by 2002:a17:903:22d2:b0:220:cad0:eb49 with SMTP id
 d9443c01a7336-221a042c042ls11352085ad.1.-pod-prod-03-us; Mon, 24 Feb 2025
 17:18:28 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW+igIFuSO64E72OuzrJxiwJJw8zfpJ3VFhA2D61c3aeZt+dThen/PAq2KJLl3RcT5nQKGfQeTVPXHWSg==@gapps.redhat.com
X-Received: by 2002:a17:902:cecc:b0:210:f706:dc4b with SMTP id d9443c01a7336-221a0ed71c5mr198719845ad.13.1740446308219;
        Mon, 24 Feb 2025 17:18:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740446308; cv=none;
        d=google.com; s=arc-20240605;
        b=glp/AYMx4IXAyrS/Wf2qZc9j4WJFoNP0gfcKued91fV58qfXgJPjL6mc4gDcib19m4
         QbsDYRxij9zJ8oW9j78cN6tExyOHCqGLyuHL+R4aVJrumMMYkd8dTR7bHP4sjjFoTtTs
         kJaUGVf1SysoZD0wDPCXbLKBSeEdiMNNZQae2H76jOq8E1rRN1qJMP3UvEcv8FRiQapT
         Eh34hOWHJWxnqedIwZZSIfbjs7HY2TvjLjSeBgDa80wT0lrPb0nnWZh4UUvhsdpHSwjj
         i2fTX/7bmb20zu4hj3U8RX1LYtBYfdqypK4Ak/Qrj4XBO+/IDwMa4Qlu2gwt2GDzFrzK
         V+zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=oFU1D5jU7W+Y/PDBwn2pcVoHqe1e81THxkOqGoapJfs=;
        fh=fQue1LVswyroBUi493FuNRGs2h1etDPzgwP/d0K1aSw=;
        b=AcPwrAcxlejZTnOLoFF4+5qKJtXyYyBF3K3xiRkSuODNrDDC18gRNleqvoMdhvdtIK
         DmYW86ALNoHrbdK9c3Afu2yEvg4TRviW5VeuHiblJy5EUqFxE1ZGDztDKmTUg4vnrmwX
         uomB55Yn5R/V+eHi5SFVGP/KUeUjIPXNqLEkgXSv/AEFkkvZuV4RJlqZBNDm2dF4FV0Y
         ljBIOoNBEXoM44TK8WCVvCGBGcLBBW0J7dr7JjOMWKFcFxvpGjUzjzGc22VzFr4EKqpZ
         Ns/GBZt432jf/TbR/PKq8Sz31UZnp5QXhWKKc6TOICV/Q99vUurB8d0nFEeujL9JNgOz
         CLJA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d9443c01a7336-2230a086db7si7176215ad.189.2025.02.24.17.18.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 17:18:27 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-270-8MIVqMU3PPy0y20T7pl9UQ-1; Mon,
 24 Feb 2025 20:18:25 -0500
X-MC-Unique: 8MIVqMU3PPy0y20T7pl9UQ-1
X-Mimecast-MFC-AGG-ID: 8MIVqMU3PPy0y20T7pl9UQ_1740446304
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B1EE618D95EA
	for <blinux-list@gapps.redhat.com>; Tue, 25 Feb 2025 01:18:24 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AC60E19560AB; Tue, 25 Feb 2025 01:18:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A97F619560AA
	for <blinux-list@redhat.com>; Tue, 25 Feb 2025 01:18:24 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 28AA7180087A
	for <blinux-list@redhat.com>; Tue, 25 Feb 2025 01:18:24 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-192-ecfAERDAPsmxvEL_Vq2NHA-1;
 Mon, 24 Feb 2025 20:18:21 -0500
X-MC-Unique: ecfAERDAPsmxvEL_Vq2NHA-1
X-Mimecast-MFC-AGG-ID: ecfAERDAPsmxvEL_Vq2NHA_1740446301
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 361A640508;
	Mon, 24 Feb 2025 20:18:21 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id F000E1001C7; Mon, 24 Feb 2025 20:18:20 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id EDAC410008B;
	Mon, 24 Feb 2025 20:18:20 -0500 (EST)
Date: Mon, 24 Feb 2025 20:18:20 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Linux command line and youtube links?
In-Reply-To: <5fe25c77-e36b-c8e2-d327-fd1602f0dc7a@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2502242011040.2984313@users.shellworld.net>
References: <Pine.LNX.4.64.2502241937140.2983544@users.shellworld.net>
 <5fe25c77-e36b-c8e2-d327-fd1602f0dc7a@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: OIXr4ZNzxDV-iC2zazI_XXQi9fm76JFKFbslDFBQF1Q_1740446301
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4OH2f7QR9NbdaHnHN6UYjYk6kyjNStD_nNOTKV18tRw_1740446304
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Hi chime,
If I follow your suggestion,
  I could say save the article itself in lynx, open that file in lynx 
itself,  and if using your type of setup work through the saved file to 
the referenced YouTube links and incorporate them into either tool?
I am unsure I follow the  YouTube viewer reference, I have the links 
already.
need to ask on the freedos list about mpv for DOS, which did exist, cannot 
recall why I did not choose to run it at the time.
still, I would be downloading the audio in this case, mpxplay does a 
terrific job of playing what i use  when this kind of thing is needful.
Thanks for starting the discussion.
Karen



On Mon, 24 Feb 2025, Chime Hart wrote:

> Hi Karen: You could save those links in a file-and-download them with yt-dlp 
> or even just play them with mpv. In my case as I have both mpv and yt-dlp as 
> L Y N X externals, both actions are just a keystroke away. In addition you 
> would want youtube-viewer so you can examin specific youtube pages or type in 
> a concept to look around. I think I had asked Luke to install that but 
> haven't heard.
> Chime
>
>

