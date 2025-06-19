Return-Path: <blinux-list+bncBCVPTHE7K4II746NYIDBUBDSF2OPC@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCF1ADFB52
	for <lists+blinux-list@lfdr.de>; Thu, 19 Jun 2025 04:44:33 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a46163297esf6254281cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 18 Jun 2025 19:44:33 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750301072; cv=pass;
        d=google.com; s=arc-20240605;
        b=lTJIy8XYzexDcirhw2U1wczLvESzzRg3mfJ/yIOCGZTfH5rRAvnPYYtnifp2C97QkJ
         y38CowmJiK8RIxZBNlT2ksPeRm6tSktTLhwVtyWlS3tXrMVL4WHuwbYda/bdAIRIs7Zi
         G3VwlHr0Lj2p8tKs28nEhxPhDcM4xozvy8ETNG3smsQo7aB4n59II/6RlXpt3ps7vwYs
         WM9lpl3P/CnqnMe28KY8IIgRW0TQKlBpIaTWfCL0tfpbTkFIvPNSATFvYvx5kg0ofR5e
         prUGvUbaagaMdKm7wglx6vO+LUWrMuAYIwATPs0xS3HJhBY9+4XNbFV8yMUQNRGuyHOQ
         6+rw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=6hAaTI6+jk2IEOfDC9yFlGW0A6xep18lyvNKEnYZQBI=;
        fh=qaKSrJNZybFLZTCsOFY2lzgoe3PdGsKWJWn9iu2MzQw=;
        b=arkHTlstLLWvr74/+9ecgGz8sPEA0/KBQfHrnXAD8FyA6/0du8iptiQQlS8UReSMjF
         QMRYV9VV5nEyMsQds5io25FNRSz1V7VkiF+qC0xLiaEmiXw0HcSxTnU47tUHPKbK1B6a
         ZrxLPAojsg9VugAmE9Pfd1ysKaiSWnXTVFcUggI6VfYpfMJG8FvPH223qokOpJvSNWNR
         QIubaiPXG3GvH3OidAv8A71wyUHOYlDTkToOETJXHt+a52j2A0MTS6GpqrB6A68Vjjlg
         +gNkd56rVYsoAIUyHl44Qj8IVEPTHhWhiaf88ZUwavJKYoSZhY6uujHiUri/oLhzK7VK
         xgxg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=shellworld.net dmarc=pass fromdomain=shellworld.net);
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750301072; x=1750905872;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6hAaTI6+jk2IEOfDC9yFlGW0A6xep18lyvNKEnYZQBI=;
        b=ZSghwG0pOJB5N3ELtCtugMQ3Dc3rqAKKqfiVeOI9v7M938X+HiJ3V74mYWLhTPJZu7
         Ow+7veF4ZjcJGNEjm5yWeMONFo0A+Hzwv5XwXXQGtIEvg9t/nC7kP4CNCpJHVp9wkny1
         NPH9bFAYIkb7zDpFo7EGovHqRF9HniDiEdBCKbLibqF0Ob7mGiuV+1bMF4eU4Plsbwua
         pwf9f83p5oSV7/rXZuWa6rBQEc1Dlq+wIjrr1szvEctKcKISvHLs3dxiNkmULE9OQNOf
         22xQR+TTTWz4DFaaroDAk4Uv5ltEmCXMf5rvdAlgiAJwB6F/uJPOSw7cbUcMxRtTSZf+
         txYA==
X-Forwarded-Encrypted: i=3; AJvYcCXohcRXN57dvRpyLVtrvDp+uF81TXej1LR1+VSSaX64e+2+QwT+GqFqjXCPg5tWkEsEJCTDjA==@lfdr.de
X-Gm-Message-State: AOJu0Yyv7aHztdZShUTPvyYW+OqSh2pJyPW8ehBpkEjXXGmwED3xQ5Jg
	zg6j/u1GnNAQa7axktk4BoM0QBEA5ZIdMeoGnEFcVKg5hU2XX5GSYsl1xbT4PRFzRuA=
X-Google-Smtp-Source: AGHT+IFEZ713gPDOEledm+NcpXUtBEPEd2iTin9nB4iM2vrLEUOo5YP8tyYKaqGOl1nGfPne7yZtQA==
X-Received: by 2002:ac8:5795:0:b0:4a5:a632:2888 with SMTP id d75a77b69052e-4a73c6940d1mr302573891cf.47.1750301072146;
        Wed, 18 Jun 2025 19:44:32 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcedgl/CCHzjMa7l6pJivl4fteFNynvyQQXPo9dVmqCSQ==
Received: by 2002:a05:622a:124b:b0:494:7b0d:ba8c with SMTP id
 d75a77b69052e-4a76f2a4a0els5304581cf.1.-pod-prod-06-us; Wed, 18 Jun 2025
 19:44:31 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVST63heoq5eGx/Ta31w9CaeZ+j2GzZhU98VonPXGcI36IJejAa9kKdNTGko6ocLcSaMXR7g+iQJL4Gng==@gapps.redhat.com
X-Received: by 2002:a05:622a:5c6:b0:4a4:2c46:26a2 with SMTP id d75a77b69052e-4a73c5754fcmr252115181cf.10.1750301070950;
        Wed, 18 Jun 2025 19:44:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750301070; cv=pass;
        d=google.com; s=arc-20240605;
        b=BpmXBea/6y/gmZMR9rY+dn7tTbX6iDu+ZttxX8YI97eR3QMU7a07e6vqPSbOuaGvox
         bhmD4dqbecAyOYwKC1dwJSudVVo/Lo2lvq9PnXd7FHiRn3D4vqibSphDa70r0INEjaKc
         LFMpq6mfiBoXY+F7GFW01i7zSkVl+j2UIKwdBwD4t8SYTBoWDxH9BtpMb3D4h+KRndGx
         21YKKMMw5PjlpeueV5dky34wQAC7KX/U1sdoH5cH+2qWtH86j7oEgu2DryFRso3UFaAR
         tyIsgWEw/oUU/Bt5vSToqdq8inOD3JnPZNaazLAbxDeJQYhfMPMSKrwdu6FKN1b4/t6E
         uk3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=6hAaTI6+jk2IEOfDC9yFlGW0A6xep18lyvNKEnYZQBI=;
        fh=Oo7cd4+bKpxTc9/qTrPpkDd5Pqd65zQQcKXujs3TlVU=;
        b=Ti9IaFOM+eNIVNND67b213iQC1FuFw8UviE0h5nnnTvkGpcg/kKtfG6mUD9ORZh943
         6Bv97w9k5hidFfxGd/hHc7/ocedxB8SrrESt/+rH8LA4vuONUX5X0dp5B5FoQZM59Snt
         VEzUqDRPm8+zAzvfE2xlhivHzzaFudxU8MJa/DYmMn0BZ5QceQmzfEfs9a6MWz2gd8TO
         fAjo9GxzFteSJD0LijZWxhh5iSHM9seiBwJ82eOtWWDDzhX07QwUdlkzCv0VUOigy8cX
         8lnyd1Qkozg2XK6+1/MrfA2oryIbtiAKv9uozA77e6ec6oE68lw6UNBIiS3xw5hGQBFB
         9buA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=shellworld.net dmarc=pass fromdomain=shellworld.net);
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4a72a51cecbsi153754001cf.542.2025.06.18.19.44.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 19:44:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-325-9KpA7CEaP_uFFWd1h0_1mA-1; Wed,
 18 Jun 2025 22:44:25 -0400
X-MC-Unique: 9KpA7CEaP_uFFWd1h0_1mA-1
X-Mimecast-MFC-AGG-ID: 9KpA7CEaP_uFFWd1h0_1mA_1750301064
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 81B761800283
	for <blinux-list@gapps.redhat.com>; Thu, 19 Jun 2025 02:44:24 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5CDC830001B7; Thu, 19 Jun 2025 02:44:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 59D1830044D1
	for <blinux-list@redhat.com>; Thu, 19 Jun 2025 02:44:24 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C7351195608B
	for <blinux-list@redhat.com>; Thu, 19 Jun 2025 02:44:23 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750301063;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6hAaTI6+jk2IEOfDC9yFlGW0A6xep18lyvNKEnYZQBI=;
	b=I8199jdm5txFJ/T+ZNAsCEiAwaTymbuyHbDGmrOjrvxECXDVqCz+fHSkwcY8cFlH+kSmVJ
	eZi65Q73jO10BStibgDLPS2y3/I24sejIOge2iuImLkdiqzU7JUyjElHKqXmrFpAtlGXVy
	pfoOw5lkoq5hVhKC/aUuBYtKA4JR7hmKC9TEOzAhKkarBekNDKxd6JCkBr0y1fUzrL9otR
	YmyHyoTmnwRHzm5I9yj9v75LiG9ZTwQOimoWDZlqk9SrwcvsVVDKvdFyuLc9Hfgop9VxaA
	VEO/zFMjIwqpXsbTLqiXiRqEWX1vmAHvofmAJJvz5QH7SOajxko/FFVA0fJcQA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750301063; a=rsa-sha256;
	cv=none;
	b=o5ZNUQFmnZA4uV49vgjz6j8gSO0D9546xyHO4ZE5alS41e9bDRdok0GqzelB0rBow7+xqS
	dLbBm5ergxnz+vY5BXjht16/CqfPfPOZoemRYyyOFlCePUCxPmLXDPWiHBdcmvuXGk7j+c
	fQn3pEpAf1x3ud01VXFzG+AlztnZkqi81rVL6KMng0loHnEcFoPs6ModSgP7hVg/3XCBgX
	vdRbtDbiiGDWtYwS4KRBffPBT0yuwLTksDFwh8zepXruoVrapLtY7hsW4diFbrBG4WkpnM
	qcHPUTguaj5ebFCEBLjIqYB13n4ASRmOeMp8HnWOTRgw3F9WejzERzGjFgaRIw==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=none;
	dmarc=pass (policy=none) header.from=shellworld.net;
	spf=pass (relay.mimecast.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-517-JBrm5ju2OWSQSrzzNU3nYw-1;
 Wed, 18 Jun 2025 22:44:21 -0400
X-MC-Unique: JBrm5ju2OWSQSrzzNU3nYw-1
X-Mimecast-MFC-AGG-ID: JBrm5ju2OWSQSrzzNU3nYw_1750301061
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id F082040508;
	Wed, 18 Jun 2025 22:36:03 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id AA6341001B5; Wed, 18 Jun 2025 22:36:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id A55ED1000A7;
	Wed, 18 Jun 2025 22:36:03 -0400 (EDT)
Date: Wed, 18 Jun 2025 22:36:03 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Joel Roth <joelz@pobox.com>, blinux-list@redhat.com
Subject: Re: No Sound After Python3.13 Update?
In-Reply-To: <cf09b517-9250-e05a-18ac-97d039762398@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2506182234470.1980517@users.shellworld.net>
References: <d66104bd-98d1-b8df-2b2e-c3508369a260@hubert-humphrey.com>
 <20250617155459.g2y65sxmpohqhb6g@sprite> <c21bd4bb-89ae-4a55-648e-6cecdcbb19ce@hubert-humphrey.com>
 <20250618033118.ijdh47apubmwrvoj@sprite> <cf09b517-9250-e05a-18ac-97d039762398@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: -3
X-Mimecast-MFC-PROC-ID: tLr1m5g6-BfXAzkEovYaenpUqHipTnZKQEgsaEFu6x4_1750301061
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       arc=pass (i=1 spf=pass
 spfdomain=shellworld.net dmarc=pass fromdomain=shellworld.net);
       spf=pass (google.com: domain of klewellen@shellworld.net designates
 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
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

..oh!
This provided a much appreciated giggle.
One of the first rules of radio production..always check the cables 
smiles.
Kare



On Tue, 17 Jun 2025, Chime Hart wrote:

> Well, Joel, believe it or not, my issue was a patch-cord which wasn't engaged
> all the way.
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

