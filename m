Return-Path: <blinux-list+bncBCVPTHE7K4IMLMEZVMDBUBAZFES2O@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5167FC7C8
	for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 22:14:47 +0100 (CET)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-1f9ef233913sf6707949fac.3
        for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 13:14:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701206086; x=1701810886;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CoqCha42aNsV7KdDZANCtqW79bXChwwRR16lQlG2I2Q=;
        b=vF03ZB7Jf/e9zwpIdtNB4tsLLa/ww2gR/QLSw+s3d+FtCIFkDlUf9GC06wH2/YwXPe
         W+Rj/H0u3vfJYI9kIbfWxymhbX420w/6TpISNxc32UCiRxQN2SxRJZqgRNwTSbSnqkqL
         vTmgfH0D3RJDWy9WVLjf3AXWDt7srIc+epT8v92pAt/lwFK9/m9gUu2R2v6PKwtaDYW0
         Nn3UFBQPalAx5JQEsdOZ4Hq+rk8MDU5T2PuBB5xaWmj1y4l3PZ7dCII82XnQ7mMBNthN
         jtQBWdeFRR3e5KwlkwwcK1A4oMfMcp3YBlfnl6y8WcQkVBONvHnaVVFs28aSOvtQ1Urm
         A4QA==
X-Gm-Message-State: AOJu0YwzurrZ31ugRhzCNX9Zqzx+7zI8JVe1sUvL6JeRfqohYUXitvEc
	FmxNSHKQasYYHd+lsoPiiCNeBQ==
X-Google-Smtp-Source: AGHT+IEIJsjDNQ1M7+cMJsBGmhaY1oyvNSWMD057y9p5Phs9528KxVDLikZ2OE/UJsKgI6j0T7i6RA==
X-Received: by 2002:a05:6870:a11e:b0:1f9:540e:aa6a with SMTP id m30-20020a056870a11e00b001f9540eaa6amr19135747oae.42.1701206085766;
        Tue, 28 Nov 2023 13:14:45 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:62c1:b0:1e1:371:c3f8 with SMTP id
 rf1-20020a05687162c100b001e10371c3f8ls672936oab.2.-pod-prod-02-us; Tue, 28
 Nov 2023 13:14:45 -0800 (PST)
X-Received: by 2002:a05:6871:888:b0:1fa:136f:5757 with SMTP id r8-20020a056871088800b001fa136f5757mr18946091oaq.57.1701206085096;
        Tue, 28 Nov 2023 13:14:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701206085; cv=none;
        d=google.com; s=arc-20160816;
        b=SNpfADCRORvhIgRJNEZT3CNoKinD1A3H5qr4vTh3NboI+nrcvmr7Khk7Zb+h8e/LFX
         oure2Ee/Su/qAfz9zrtKKsi4KjMxOvbEm6xIQRXIXyom71nKOwujER2b15phrauSoPyo
         muXZeUFxk54c+ER2i8i4pF08yr7iUnAMSyuFl14YI/q22yhGIh3anRpxfEjdUu1V18BH
         P2gzwO/tqj7taS9F8PeQtaU4sWTPRvRBvRBDFdIxsArEOi32ih7qO/78l1WNJxusZGhP
         Xr7B5Rnvs1H1ysNoo5a6CAHefie5qj0YAUgwAcenHD+F+d6TsGb+5lNtSKBHsDvAgJx2
         3hqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=CoqCha42aNsV7KdDZANCtqW79bXChwwRR16lQlG2I2Q=;
        fh=UDfmMChJles1vDNyJmh7kcwGuMQIBzmACWXCR45deZA=;
        b=DXSt+MezvLaolM5jPetyf/fp3Gi3nzSg6sCuumrfq2V8iXHuAel8yxupQ+4W6/LJwt
         md9CXAzH8+B/1Qo9M3LAmX1SalKRlTarNXn+bdi9gHwlQKUllPApTFlWMUzt1ER2qNeh
         UT6Sr/mPrcyyu7VOntJlb/yDhLz4uzAe/1hB0vsKoyoY5bilhpv9GgIq3zydaq2FWx02
         GTq0ydA4YFTgoCWiroUD6zknurjX1I4jHahVsAbUnIHG7n42eGjJT8+b2rVT7iZ502YY
         G3kdtIsHHuzyp4HkYSrTTvwyz2+EQF6CrgzqjHwk2sF27sc4cg/APwe5g+6VfQkCju53
         1+eg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id qs22-20020a05620a395600b0077dbdba7e72si2148979qkn.377.2023.11.28.13.14.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 13:14:44 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-646-MQDfNLNUNr-FcnxPJ7WBPQ-1; Tue, 28 Nov 2023 16:14:43 -0500
X-MC-Unique: MQDfNLNUNr-FcnxPJ7WBPQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 07C98811E82
	for <blinux-list@gapps.redhat.com>; Tue, 28 Nov 2023 21:14:43 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 0439C2166B27; Tue, 28 Nov 2023 21:14:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F0C7B2166B26
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 21:14:42 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C8C322810D48
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 21:14:42 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-65-isG5sxzDMe2AcCqKeBoEyw-1; Tue,
 28 Nov 2023 16:14:40 -0500
X-MC-Unique: isG5sxzDMe2AcCqKeBoEyw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 6030140508;
	Tue, 28 Nov 2023 16:14:40 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 342F3100E67; Tue, 28 Nov 2023 16:04:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 321C81001B5;
	Tue, 28 Nov 2023 16:04:58 -0500 (EST)
Date: Tue, 28 Nov 2023 16:04:58 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>, 
    blind_linux_users <discuss@blvuug.org>
Subject: Brave, or new browser projects and  the command line?
Message-ID: <Pine.LNX.4.64.2311281559340.3700734@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
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

Hi everyone,
what is feeding the question is that the development team at fastmail is 
rather stunned that they have dropped access so completely.
Future testing with lynx, links, and elinks, is  intended, but they 
reference a new browser, brave that I  have been asked to  raise here.
does it come with Linux builds currently?
If not, is there another new browser perhaps blending some JavaScript 
elements like elinks, that might be tested?
Thanks for your perspective,
Karen


