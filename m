Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 216C64609B4
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 21:41:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638132091;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=v9zAweF5yyzUmGMlZlkwItLmJfvwQt7LBN0Sub0SIGM=;
	b=XjO2U8zy53KDmExgxbHLEVLEljXNscolc86IW1P8uGOp7lS5Ez/bZqg4K2n0IRdisNugwr
	by8T+rlGpRuyxqV/q2a5+uySWejAis207oeXM6pkQ9HQJRDahr39C+k136AUhm/2Mb43sH
	oPW1D0CAScR2N0AUggQGRqYHnkXHq24=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-586-SFiJO32MM5yJ_hpWJQMm8w-1; Sun, 28 Nov 2021 15:41:28 -0500
X-MC-Unique: SFiJO32MM5yJ_hpWJQMm8w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BA6FE801B00;
	Sun, 28 Nov 2021 20:41:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A294660BF4;
	Sun, 28 Nov 2021 20:41:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5E4B61809C89;
	Sun, 28 Nov 2021 20:41:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASKfJVk020921 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 15:41:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5A1622166B2F; Sun, 28 Nov 2021 20:41:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5432E2166B2D
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:41:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6C2598027FB
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:41:16 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-162-1TSYCz9bMgKalnEVo0itiw-1; Sun, 28 Nov 2021 15:41:14 -0500
X-MC-Unique: 1TSYCz9bMgKalnEVo0itiw-1
Received: by mail-wr1-f53.google.com with SMTP id t9so15177811wrx.7
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 12:41:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=DTSS54S1RYnM8G8ZBOjkt6D1Va9shvwBXM8D0GKDtA8=;
	b=clEf9cH4h66VjREyKtRrdWQbWWPvnQD1nEnk7e37lsOaWHoeemxoVwJHYzs4NUHI6i
	Lt3aLYMub9zWLh8f68vhjLlSELSVfeqSEADX3u6YHD9Jbo1sMhlFku86f+MLJffvDFP5
	+t4ZzJbED2DzNMAgjdFYxjBKqLnkskEI1vzxmxeZ5QNY61N2T42y/ztnVlnmlHOsuhLB
	/zRBDQbTWCtoE8VVZK2wsRY+EpGu+dNAIV2thlhD42PhZXA3DhpKxADl70/9nYiaZw+j
	6MNKqm8l7zti2LFlc7j5dUQPGLf70YxPrb/cvhESo7hGlMt/3KIfQHMsJwqsFJooyQv1
	rIYQ==
X-Gm-Message-State: AOAM532h6PIde4JaEI6grRyEFXYy8JUf2OzhBh4LqCYVJcefq9J2Bqjo
	fFAx6ALPrMfTxyLuUIhHs2t5JIll2dnN3Q==
X-Google-Smtp-Source: ABdhPJzPPKsiOb20IZM8TYXPnp6d+m1+3WfWXHaGfaqVPEKXaGrOceUb5Kuhm9lfRskk1w5QQG6PSQ==
X-Received: by 2002:a5d:414a:: with SMTP id c10mr28701936wrq.493.1638132073166;
	Sun, 28 Nov 2021 12:41:13 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	p5sm12182563wrd.13.2021.11.28.12.41.12 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 28 Nov 2021 12:41:12 -0800 (PST)
Message-ID: <5d1e874b-076d-ebce-c83c-c103d7d7f2f0@gmail.com>
Date: Sun, 28 Nov 2021 20:41:21 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: pipe-viewer downloading w/yt-dlp possible?
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So...ho would I download with yt-dlp via pipe-viewer?

So if I'm in the terminal, or in my case solely a CLI install). So can I 
download via pipe-viewer?

I'm not seeing a download option however, so is there one that's hiding 
in there?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

