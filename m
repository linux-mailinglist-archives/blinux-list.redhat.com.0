Return-Path: <blinux-list+bncBCVPTHE7K4IJFJ7UXUDBUBHC3HKMK@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A142A43215
	for <lists+blinux-list@lfdr.de>; Tue, 25 Feb 2025 01:49:24 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-471fdc6bd41sf103734241cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 24 Feb 2025 16:49:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740444563; cv=pass;
        d=google.com; s=arc-20240605;
        b=C3EsFMg9EZC0JsKnfPazY2gw0B0Tn0ef6scB0lSrdlUaeBbUDtDyYgGlpGzfS1zFQu
         2L/mj3gveQCbE6WVNY0rGaYkh9qj3uhDO/owlC5FpehfncnKvpRiDQJCCrjRbEEeCNRj
         zPnUNFEf7yZ9vvvEoWcHxx9HcCahnArHGPVNbC10AfkPLC8EJcfj5oy2G+Ie4klIqzeu
         oqx2ZE5pSe1W1XQZtxgVzphTvaNU57W06gEw3G6Od2bPkja/LqvZQ/inuwVXmn0lTsms
         CBdO4GcveoIXH/THVCbC3OAeIyTBJSa4GZkDZZOtNRnIM77i8Gs6qaTZ7jcz9VUrb1Ib
         S6Ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=sWl9PZ23pI/5JB2RRzW6bKYR8M+DrB/nuslJocB3eqs=;
        fh=otrax9D6/Gm2t0F+YtvMdVFLY4qF55z4pkujYhsxUyM=;
        b=Fm5Okg/uHwsqC+qvbnVe5wC4PWLxUNfNpsxyDCf9qx3D6h5J9ises5S/KBAPiYWKHZ
         hlJ+oYcfd96184kjkiqOIGV+8Udr45ppSrv2IMpASGKuaQU/IxBlBwBwPj/dWiU1Mgbf
         8TRHdvBs6TmkHA65h1Iqd0XZUmmtlIjMzg8H6S+fXOz849eDFhWp9uLkAd71G86RwsKJ
         KjX5FwYDsq8KXNrPbT12Uk5I8rADd1UZBPU8fehzSAXsBZp2UqplhkUL1QRyuSIS+VOJ
         zp0jPxXmW7xcT4Cm9DQlp+QHsObxrPNEVaXfBC091Du6sYONQ1lpKsnGhG9zQzBAhoDP
         r5lA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740444563; x=1741049363;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sWl9PZ23pI/5JB2RRzW6bKYR8M+DrB/nuslJocB3eqs=;
        b=JrSORuY/7IuV4XbO9+My1BAG6uOcZqt1gSDaclGi/Gwo2NSdAU+PcQGkBEN4QKOySG
         edBuxP6uw8mgJXKYBTIqJEoso+EwIbGFE2pdMQdPbhpJtaNywZsg1Ysp2bW/8ZVcAKXJ
         dq53n6RRo6QZLgqjVciDU2knMu18tUU9EZWuKlRUva0Edv0nrm6DhigbeqAAvCLeo0tW
         aBDLh75LKPzMZfl+J1kwgYa+T4P1c0B+7mCLZU832Y1DFqQ0BdxRhy9YOvagHyml5Gmj
         rBAJza4me531a0C2rHxvZbG7rSjaXAR1rTUIkIEilttyKX8yD0tMHYEze4Re0M1dHKm3
         551w==
X-Forwarded-Encrypted: i=2; AJvYcCVy2ZaxrUTc16oQsE0cC+32TpRiEJfSaSD0zLedVpXn1HtH88h5TSbnL++O7KNvWTMp5PyKSA==@lfdr.de
X-Gm-Message-State: AOJu0YxtT0a5R99OKfGyeKAIyu+rwX8YBVDS9nSDPrjJmiVSTwy/9SHL
	o0vFld/CIIjfuWn9Ja0cl2vH4wmqi6kioqQskZ96nKpueG+RmBF950vE6JBRTnk=
X-Google-Smtp-Source: AGHT+IGeC4YUheurbyhRUea2jrOXrzJB7lG0LuGqM4mgSFq/OJgCYZTuTlXqmcJ8rFMthGlcu5mqBw==
X-Received: by 2002:ac8:7f44:0:b0:472:801:3e78 with SMTP id d75a77b69052e-4737721c070mr20800071cf.20.1740444563047;
        Mon, 24 Feb 2025 16:49:23 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h=Adn5yVHdqjQ7cTouAMKelc/uIRTN0HIOLYufFE1r+qphgeqdQQ==
Received: by 2002:ac8:7c48:0:b0:471:f5a4:7d39 with SMTP id d75a77b69052e-473777b0b97ls5536001cf.2.-pod-prod-05-us;
 Mon, 24 Feb 2025 16:49:21 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVGqMD7DpI8PqKpQynQGyFlJvEB0xgN5n80klxR/3oQdO/W+t+AnFuW9ciE27H+wPwzPUE3YrURzdTejQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:1a98:b0:7c0:a667:6c19 with SMTP id af79cd13be357-7c23be026e8mr242705085a.9.1740444561749;
        Mon, 24 Feb 2025 16:49:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740444561; cv=none;
        d=google.com; s=arc-20240605;
        b=bZdm16JQ+XBInam1mSqv6bjJmcIiQprJSI8Q9dzNXQNHp84+1BtIU6ngV1GMpLIF6x
         Spu/OUTZ206twLD8h5Sp35cPxUWSMAnPa2P/4hFTxe8yxFmIHekLJsCCNJTxsCwk5ZMN
         +0gct0dej8Tx+rBZF3Z3/YdQfB90YzEVROYdr5sc5FdnT+4WaCSR4X9BjgkST5pDdp2J
         EC59dkd72GHZtFec9ydzsyk0ZKQ0Tapy3FgYmK4crAWu79DDCvxlDsTbWDN3C9iBKo/Y
         LoiWmwBHh+khChP8XtC1tLHq8bD4iM8mf+nhf3e7GlZ41gdDT11PLDYtucpi76vkrKVE
         9prA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=sWl9PZ23pI/5JB2RRzW6bKYR8M+DrB/nuslJocB3eqs=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=A+TasdxY4wH8kdhoXD9wmMFLb3hrTPthkM1czPkRDY08mGBvwA5aRzcdDALyz3VGtt
         Vy6NCjTydfzKvwk46JeGTyH7mO5VcI1dWT+vqirkXrj41MnSPBJwZ1pK/Opk1eadxoUO
         1WfT81szajNhUc0k0T7uibd+kKdkMFUUKX1v4qlcH6nwcGbRi+DsZOmjDnvwQZkV4SSd
         rKu2BmVC1iqiRC5y6azadfjR68+zlno0OYVT7ZBflVSlchhh/NMeDzy6D7hmNseqviSY
         8PtfiJg3K18zHxw11qMkHAXhdTRgWlEEjHj9hSqqnpTAtIolgHsizs34nVbgAUpSG/8E
         MP7A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7c23c2e7afbsi58188385a.590.2025.02.24.16.49.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 16:49:21 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-659-PTDkPMU4Pk-D5-RNwkf4iQ-1; Mon,
 24 Feb 2025 19:49:19 -0500
X-MC-Unique: PTDkPMU4Pk-D5-RNwkf4iQ-1
X-Mimecast-MFC-AGG-ID: PTDkPMU4Pk-D5-RNwkf4iQ_1740444558
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 97FFA180036F
	for <blinux-list@gapps.redhat.com>; Tue, 25 Feb 2025 00:49:18 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9478E1800944; Tue, 25 Feb 2025 00:49:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 913221800949
	for <blinux-list@redhat.com>; Tue, 25 Feb 2025 00:49:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1349E18D95E0
	for <blinux-list@redhat.com>; Tue, 25 Feb 2025 00:49:18 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-475-1wi62uEEPzq07Hw7ywLh_g-1;
 Mon, 24 Feb 2025 19:49:15 -0500
X-MC-Unique: 1wi62uEEPzq07Hw7ywLh_g-1
X-Mimecast-MFC-AGG-ID: 1wi62uEEPzq07Hw7ywLh_g_1740444555
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id B9F4940508
	for <blinux-list@redhat.com>; Mon, 24 Feb 2025 19:49:14 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 7CBA61001C7; Mon, 24 Feb 2025 19:49:14 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 7A69610008B
	for <blinux-list@redhat.com>; Mon, 24 Feb 2025 19:49:14 -0500 (EST)
Date: Mon, 24 Feb 2025 19:49:14 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Linux command line and youtube links?
Message-ID: <Pine.LNX.4.64.2502241937140.2983544@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: JMjr_y1k-XpX8YURtAcyPjaXBAvUY1mslEuV2TJmhnw_1740444555
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: hOmY2J18k5IwFrpHiKkX7Jpt-DamTwigSh6uhPaUb4o_1740444558
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

Hi all,
I am asking this here in part due to something Rudy shared during the 
command line tool discussion.
Today is a fine example of why I would personally appreciate a uniformed 
solution.
One  of my musical influences, Roberta Flack, died today at the age of 88.
I subscribe to many professional publications, rolling stone for example, 
and variety.
While the rolling stone  list of essential songs provided things like 
album title, as in..get off your computer and enjoy smiles, variety did 
something different, and a bit frustrating.
Variety took a ten best musical moments approach, all quite unique..and 
all YouTube links.
Of course I can read both sites in lynx..perfectly.
I could also, for example, follow the link on rollingstone.com to an 
interview on NPR, download both the audio and transcript, just fine.
However, I cannot, at least not as I understand the process,  take the 
YouTube links shared on variety, and in lynx, manage to download the audio 
for off line listening?
or, am I missing a key factor, given my only Linux  infrastructure are 
shell services.
Thanks in advance,

Karen


