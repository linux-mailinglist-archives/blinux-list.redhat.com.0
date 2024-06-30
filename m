Return-Path: <blinux-list+bncBCVPTHE7K4IOJA4EWQDBUBGQRNEJY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E06691D038
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 08:57:42 +0200 (CEST)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-25cc7a26048sf1023394fac.2
        for <lists+blinux-list@lfdr.de>; Sat, 29 Jun 2024 23:57:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719730661; cv=pass;
        d=google.com; s=arc-20160816;
        b=xM7rClkSidSeZTk5qTZM0Ch/d1LKlTGV4qAXqQkkFRDvRNvfTOMNWphP2V5Yl30ep9
         c/b4oQDgnvsjK9eRupLpSPSnoojj25U3WEGE10BE47/oDTOHZrzrz98MEKfD02QUgNOn
         sEN8v7RxjH7IijNrEhX/txBNRqwg28Ifx6UmtRamQwoAatj7Bt+BZvLd9w7h62KRVQVf
         fFGVavnZcRtLxnd72YcpO5HCwFictcZRjen4YSgH5pnxSM6OFgUgJy9j2JQKHQ95hyv9
         +rxgCp8C+aGOM0gA4R6HtnbYvMDgmRhL7UMQ2dnkZz9AC6Si0GB+JZREbBsSynvnVjUI
         TY+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=t2jX9uiy7pb2TZOmnnofwRdnzSTpuQjjKX250B3Rq/Y=;
        fh=QG6vbdAX4QOXgy7qTjSk1uvjd9QSKCsEI/Tj5pIBExs=;
        b=dropuUkkzOItna7y1sIQxj7MrxYwgXkc3RhrCZkEXoPc33FvImSrRKrmiJ7iurf+vk
         iXYgQGfT11dx47iAut9fIMG9VqoVuE+kVSlQhABSz+UvKmtwFXHSM7uLB7jowfTATem7
         1o3hR9GnBB1tOZudmiAq/VCijhRxC4WeLN1mST6fY0v7rcziWJ05tirZD8CGd2RVoVXV
         cuI6j71fOaWRHBzOH2Pdc1lRnRqXhTQdiiRbs87aLfOWmdIxzJP1a64MuDhHdg/Bn4Ir
         rKBiSZBSThU9cDfth00ltofPaiUPN2aqhiEBcVqTSCZv8HpErZ/8hxXNVnYmYSMiHZJN
         54hw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719730661; x=1720335461;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t2jX9uiy7pb2TZOmnnofwRdnzSTpuQjjKX250B3Rq/Y=;
        b=lHexDjH7WvgDsKdGe5AK/OFXhtn4+iag5E7htGGaS9WKJ4cbidsf9J3+Acg/CkynpP
         3pMeKnrjMKzam6IeXuSk6f4zttiveJXDvLIythFpdF5T4gVv6nmDL1DjxaSWKSfS4QVx
         03U+tk3prUTVxR86YOpl7+acarfkDmmTy+V9c4fZKk8oBrDJz6/lesyUam2ODyGuVtuT
         08BBHYUWVMMYnPPgaYua2QRIvN1hY5C1/oUf1p+uAnOfdzK4Q/9VFUnl2oM5DKOdk4jD
         HnQwqwu+FzavJ6Q1FQD1EVPV+QcbT3uH5u8f4Q9AVMUq8TY8ZhOlXOjrCKAC7Em68bGH
         nGyQ==
X-Forwarded-Encrypted: i=2; AJvYcCUDyzsvRMdsYe5wj0dSmSwqyn1uv2pqtLthkECKpHOZUmG9m5v/8raUm/a9nfLxWeOXbI7ebfT7HXarI7GN+duy7ofuZ2C16Ae1
X-Gm-Message-State: AOJu0YyzbmrpMKagm+REzXU+vvi+B8eXr1MFtjDBNZMfWCqIxZDkaop1
	3hoD0zTbVYYDm6GFoFiysU4cS9/Q7auLzqbaYZ26agio89cPM/sQvX/Z4OL7BHg=
X-Google-Smtp-Source: AGHT+IGobGSIW3iU83NhcNKpW9QV8FzqYdJPMadzfZJCm4IF4U3HlgeMkITDW0gEh+rDRDFm1nENfw==
X-Received: by 2002:a05:6820:2b0d:b0:5ba:ead2:c742 with SMTP id 006d021491bc7-5c438d5b7fdmr1920898eaf.0.1719730660485;
        Sat, 29 Jun 2024 23:57:40 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:5505:0:b0:5ba:c07d:d1e3 with SMTP id 006d021491bc7-5c417e3de2fls1754932eaf.1.-pod-prod-03-us;
 Sat, 29 Jun 2024 23:57:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWrbxykRTE58ZnK1vZa/EwJBdNDLLBmFC1le8p+rj1GZiE4sFcgxBWAVxdNRrOugD3VoRop8TEqVFgvIxgvTyQ3eSraFJW39BaUktQS
X-Received: by 2002:a05:6830:448f:b0:6fb:9752:4d3a with SMTP id 46e09a7af769-70207687665mr3088212a34.24.1719730659488;
        Sat, 29 Jun 2024 23:57:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719730659; cv=none;
        d=google.com; s=arc-20160816;
        b=vmm0RKNJyVRi4l1cpuiDRtShEn2XfGdN4rGHySbtJyWM5y467w6iTB5ZMv3qLrdNf/
         aqSfPNv6GM3UZKprSWVf2igCzMPikSKmQbDwVnE7oqya5iQofJzTv1+uxhZyoJ0jsODe
         MyjWi/C+mG60RtUPYzZwmj3T5eDs82hgwu1hfOPqFqxSdX+loJoX2SFPZ4r9FxC7Cugr
         Ut6ffO83mQV37GGzbk9sk2IhAo8OaOXAdQp8c9wV6dUyHog5jQrjH8hixb8PagjG7IAy
         yEiwSWTqBYlNuEm+5K6VaEDgTOzq0CeuJVFPB4ppQuLiR1LebPWBXq+IT9ijTQzK8AYs
         Xa9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=t2jX9uiy7pb2TZOmnnofwRdnzSTpuQjjKX250B3Rq/Y=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=c8gK5S/sdiEMd2Za7H4JjBS70RxIjcyNLRIClByaS1mYBCow9uLrr7EqvpiVeQfUhC
         EAxdrKmCcj8D96Wj6r/tdh8vsjoL7jF/zHj7HuqKMyrt0xgB6Sv1r4Z6djTu2mj75b/D
         KydvXtzNXVc3bc4KlRHs1yvFnJmmIKWM/dzo6+OSKI2a7dvNbeqZZOm1lW7MOKSuvFSv
         p+5vStmInpAgn9zTN0mq2bV7lZduZ+/7Raxs9hGP96i9MA61q+lVlRwaAQuPwy9x6ARu
         +uO6iBI0Q6i4LqxpU3OprFEAHwjYk22PMraj5YrwbpBA0qlh2599B5Kxd67Jq68/vrfU
         jxTw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-79d692f0ad0si576474385a.228.2024.06.29.23.57.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jun 2024 23:57:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-282-j1iPsVoOMBir58d6VL8isA-1; Sun,
 30 Jun 2024 02:57:37 -0400
X-MC-Unique: j1iPsVoOMBir58d6VL8isA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A04421956089
	for <blinux-list@gapps.redhat.com>; Sun, 30 Jun 2024 06:57:36 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6BD6C195606B; Sun, 30 Jun 2024 06:57:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 697BB19560AA
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 06:57:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 05B9D19560AB
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 06:57:36 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-63-9oxEbia0MECG-kVBGqiv9g-1; Sun,
 30 Jun 2024 02:57:33 -0400
X-MC-Unique: 9oxEbia0MECG-kVBGqiv9g-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 4137944FC8
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 02:57:32 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 0FD4E1001B0; Sun, 30 Jun 2024 02:57:32 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 0E38C10008B
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 02:57:32 -0400 (EDT)
Date: Sun, 30 Jun 2024 02:57:32 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: solving missing ptr record issues?
Message-ID: <Pine.LNX.4.64.2406300250190.3202225@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
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

Hi All,
Rather than rant about Luke Davis's  refusal to insure individuals  using 
his services are not flagged for missing ptr records  for emails sent 
using   whatever iP he is using, I am hoping there is another solution.
For me personally, it impacts freelist.org lists, gmail, private users 
etc. for my personal work website, and my shellworld account.
What I am hoping is that there may be a way for my personal site email to 
be managed in a way that associates a ptr record, for that specific 
address..I cannot even write my landlord.
Is there a method that can correct this issue in some way?
Thanks,
Karen


