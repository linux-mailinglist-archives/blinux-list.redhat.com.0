Return-Path: <blinux-list+bncBC3NDNGRUAMRBAUTSOVQMGQE2N73QZQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 797957FA6E5
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 17:53:23 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-67a16ff92absf41896706d6.3
        for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 08:53:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701104002; cv=pass;
        d=google.com; s=arc-20160816;
        b=DenpG8vS0xDGOy6hHqIsoSDpvpwizxUZPJRjiWcrEgEyrSEH9GAv/AZSfPO8+i1Mxp
         nIsz+Ds5lAyHq111cszZ2nXlVjg3QIch6I7Erj1rwTOF4Lpg71P0UkskW/VSQYKQh2/9
         +oqzCdLblOEKSNES3Jg81buxkldle0pP4xHB5CS4X1BpHRjB7pVqDuaKd1GjE9AgrBew
         a5rLpgxiOfQb7Ul7MrYcZLEyOpbdN8WFYRcUnlJdJu11++TPGy6RMu3HpfuPGM1/v4tK
         Y2fs6cEg366+WkJ6L7TRknq5W+fIEsM0+dix/8t31SAs1T9izn5vNExzr5yDQlBX9ZW+
         FlwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=BhAR0GUDjQ9JZhqwwhVaCr20PRKk2+pUGYsMSjuEDKY=;
        fh=Rss7DPsoJ0LPx3gq96/7dDnj0VaLJjLirG4wNH4LmjM=;
        b=sM7jHNyB6i7z8VY8L0NzLcNhDrJrQhg37ZJ/oyKU3NM9N2G4MEjNz4+8M8aX6UAiQ+
         G/qmrHajv/xcDZGH6ndRv0YNLgQw70jlNFwmuIIMvk9updNBt7cx93Mqsui4rrfzpD3B
         nMMxeX9ZyNSipRS32K2QnNELFEv6qmzyKsTI4HO7xi73OkTu6DV2CPkT+AGEGKzeDhRP
         yBRJhAxZy29SKVfj9x59mUCtb6zgFb21ehr+sOp429LmOjX/BvgrrV0btvhU2mozRczl
         epWarhKLXK8Dz/u2pBFT5SPonvq1dkXgI9e0wWp0xkMflirkfwWlte9QT7KekV022ZLK
         UwxA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.25 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701104002; x=1701708802;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BhAR0GUDjQ9JZhqwwhVaCr20PRKk2+pUGYsMSjuEDKY=;
        b=RgTwtbaKkjBVVVqbmVchb4annyYTnRbabE6ml0VDc7Zhgi2OcU/vxmIZNjyvhI+3qF
         ZTuyPDrdqjbAFxM8aqWSYgKPmUYp5WfLFA69f9+rJ4JKU4vo2rilTfDWzcOGTyT1GbLk
         q8MMm3yvoVGhiz/H0paX7rkLhxewDoTvaiuKIj5UqZx3nDBmYzYdJFVdCXtBXwHYi6hq
         KpX2JAxW1GWjpeTwwFDE++jXa6FCZMyu3QHORA1LAx4PeMEbBRkjGk31fucTFgfU05zO
         3qHPPkovlIuYs21BmA7a5RhF1p91KOwSbVlwpDT+K6P0IOUrVoZ+JaGjS3V+hq5TR2f9
         mUlg==
X-Gm-Message-State: AOJu0YxAKT8aAb4L1u/a8ohFU/yTbLeFxbicyOkPePlzkeVPoOhOc7w9
	SjECWoADCTPhYEXG9FBWj/kGvA==
X-Google-Smtp-Source: AGHT+IENQ4EIN5WcivSWMT+/jmRtCi57mcpcIdSH/CRbH2HGNThz2Fgv1oSX2EVuYIH3nmFRrMfjHg==
X-Received: by 2002:a05:6214:16ce:b0:67a:509c:78af with SMTP id d14-20020a05621416ce00b0067a509c78afmr2198995qvz.60.1701104002482;
        Mon, 27 Nov 2023 08:53:22 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:18f:b0:656:3716:f1e6 with SMTP id
 q15-20020a056214018f00b006563716f1e6ls562588qvr.0.-pod-prod-06-us; Mon, 27
 Nov 2023 08:53:21 -0800 (PST)
X-Received: by 2002:a05:6214:19e3:b0:67a:3ad4:9978 with SMTP id q3-20020a05621419e300b0067a3ad49978mr6744921qvc.10.1701104001612;
        Mon, 27 Nov 2023 08:53:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701104001; cv=none;
        d=google.com; s=arc-20160816;
        b=ud4l9sipMx5hKFiTF59ElQP3CJqi02IS1diE3J+eMTXYRfEeKaA7qZPqEftfCOKwau
         jRg8hl00uEdSqplsI81A33s21N1NI2JVdN6PXga0aQcntyCRsByGfLfSxgVS6ORKLDJ7
         NxQgm8flb+RgixenNIUx9FBXi4aykA9i86sMbD8dK+szx/YM8tzCWaHI/zCHgupXonGV
         anIg13t+pQzE6r9TGQOJCfqAXLKjq9bT3jV27KDbUxpTDD3hppSUGZuH5XnV+XOtToYt
         TwG2vY3jQ1RsIRZ3INMRnkj0NiWUDdWb6Vu5oeD3zgB2FRymdJ+ciuJrb2sZs0EcFP/J
         wU0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=Crj2QJttB/65XnULf4HUY9miPCXjgfqlLow1XaJRoos=;
        fh=Rss7DPsoJ0LPx3gq96/7dDnj0VaLJjLirG4wNH4LmjM=;
        b=oZPIjRmYaO+6/vzMMKP4SerIz3oFeUz9Wi6e9zMVEVDhgKECJWbF2ipWx6WaJGpDAL
         vLoIpuMs3dw570l2vBGYqewEqWGZ6YIVQOKa/qAIxlosYh9T2Akc0CbA7tDoj9XYIH5s
         xHtlaWW4K2xSkA7ZLKxOSrCggczXG/7SHohfj7nrGbE3cyb6ciiIaME61TkD9qunxc4K
         MTwY4EeWD2U+g7fgc86baof5BWwFIc1Oi1swjRFZ0oNJZ6KzU2nX9Nwm8dk+zzbNsnnF
         mr6X98pVQSmoJfY7nSHzM3eTedQmDla8UwSOsfBOB60XP2h/qK/kWgnhD2L+DWQNVT+k
         GAew==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.25 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id gf6-20020a056214250600b0067a51ac6d71si954644qvb.212.2023.11.27.08.53.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 08:53:21 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.25 as permitted sender) client-ip=64.147.123.25;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-621-aYHgm43zNNaUgb6eJW_0_A-1; Mon, 27 Nov 2023 11:53:19 -0500
X-MC-Unique: aYHgm43zNNaUgb6eJW_0_A-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6A82863E8D
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 16:53:18 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B3666492BFE; Mon, 27 Nov 2023 16:53:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB71D492BFA
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 16:53:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 833851C29EA1
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 16:53:18 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com
 (wout2-smtp.messagingengine.com [64.147.123.25]) by relay.mimecast.com with
 ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-567-u8H3Ri1JO9S58TTBZ0-GEg-1; Mon, 27 Nov 2023 11:53:16 -0500
X-MC-Unique: u8H3Ri1JO9S58TTBZ0-GEg-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id EFDF43200A7F;
	Mon, 27 Nov 2023 11:53:14 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 27 Nov 2023 11:53:15 -0500
X-ME-Sender: <xms:eslkZT-uzlhyfGACrrkUQa9IuFX6Dasjm6fNa95E3VsBJNkChhd4AQ>
    <xme:eslkZfvmlgwWQV73ib-tQAK9TfFgvQn75HvW8xzlnLzHhR4gXDDZyGJOygguxuklb
    11Md4oJTuBAEHVTTFc>
X-ME-Received: <xmr:eslkZRAzioByjTqTSHGt9-7VwRwKQODOiz3cEZ2GNwb29SBXEDi3cwRsDdfV_Oiq7f2ng8yUTOyhUnKV2qTul8OTQK4w4zy--A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddgleegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:eslkZfeJWxzBqkwbuKJPaK_LiTrNjkpceYZ8bLjipYpnX9OkUOAdNg>
    <xmx:eslkZYNs5e4PkepQiS2541qcjCSCZEgwF2CdTiCCL0Q8_Q-_UAozPw>
    <xmx:eslkZRmC1_oDfKObT3pdoyaPRfSClDcdjrg3z-nSLp0d3_T4jbulgA>
    <xmx:eslkZRZnshJ0qDfoQPtsi8RKRCGSCwiEc8_pf5CCe5N_Rd7OW8y3eg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Nov 2023 11:53:13 -0500 (EST)
Date: Mon, 27 Nov 2023 08:53:10 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: "Jason J.G. White" <jason@jasonjgw.net>
cc: Jude DaShiell <jdashiel@panix.com>, Chevelle <cstrobel@crosslink.net>, 
    Blinux Discussion List <blinux-list@redhat.com>
Subject: Re: EmacSpeak Won't Compile
In-Reply-To: <c8852aae-ea60-49e6-b73d-6a6438fcaf2d@jasonjgw.net>
Message-ID: <0eef468b-9a08-d3d0-70de-3d953e088e0e@hubert-humphrey.com>
References: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com> <2d688527-c4dc-4aca-8c88-f43986fd032c@jasonjgw.net> <ae412f52-ec58-49f6-904c-919f15f047db@jasonjgw.net> <088e0963-afdc-4b90-ae7a-09825b60f7a0@crosslink.net>
 <a0ccf8ad-295d-0f91-2338-8af7367ceec6@hubert-humphrey.com> <866f9548-1084-5352-608a-030d30c6a8b8@panix.com> <c8852aae-ea60-49e6-b73d-6a6438fcaf2d@jasonjgw.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.25 as permitted
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

Thank you Jason, Jude, and John for your comments-and-analysis. As to John's 
comments, certainly I appreciate volunteer work, as I am not a programmer, but 
I figure since this project seems to be on the New York Stock Exchange, there 
would be at very least a responsibility to investors.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

