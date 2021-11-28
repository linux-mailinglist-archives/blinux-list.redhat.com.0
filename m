Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA60460A2F
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 22:11:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638133891;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5pcYAHBNxWyK3NG+hwSmoUoiYmyVjaZOXAde+gQQwEA=;
	b=ZV5E1s0ZgL5OwhftRrABN3VvwXPv335u+ZeYmavwEQ8+5yjHFhZ5HcT71zyOZJzbfH0L2/
	BdKIe0sNssjdLhDvJTc8pnDV/U0U0YX6FfOAJb82bT8QDtFaqF+Pn0w3s80fuTlql5QGZQ
	1IDx/VajZvMo5TyLoccmZfyxh9Wyuzo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-209-CMAl_GQ_No6T_0-v_KlTzQ-1; Sun, 28 Nov 2021 16:11:28 -0500
X-MC-Unique: CMAl_GQ_No6T_0-v_KlTzQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6B6E5104ECE6;
	Sun, 28 Nov 2021 21:11:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5798C60854;
	Sun, 28 Nov 2021 21:11:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B363A1809C89;
	Sun, 28 Nov 2021 21:11:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASLBGAC022255 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 16:11:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8B6AA1410DD8; Sun, 28 Nov 2021 21:11:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85A2B1410DD5
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 21:11:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6AFD08027FB
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 21:11:16 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-478-qmioTsf_PmesUMyKMa_R2w-1; Sun, 28 Nov 2021 16:11:14 -0500
X-MC-Unique: qmioTsf_PmesUMyKMa_R2w-1
Received: by mail-qk1-f171.google.com with SMTP id m186so20638737qkb.4
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 13:11:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=W251JGVkaRwprzM4obIyBGTxQaNb+a8M31HwgE0UDL8=;
	b=QR6X3JetK8Lm1w+pAvysiNmMinasQR6IEQffwRdLbqFdTOEdHnLhoGlrzhAOpPn35R
	LGm/45nSTkPSBfDQFxuW76xEz57Nh3oqsrf/wrhpE4YoloFMkzQO15ufbXeyz1+iMih0
	eT2uPZHF5I/XN+uZCC8shbPeiraFD0ob3987C+45vXJNbnTRagqjefMGYdRB5F3ZDj3d
	2RBhQsP1Lhk9x8qPwxfcOlJJkrxVrZhyHiM1FRxVWRbwmO54B1wlEgrTHg0LbepinFML
	WGWZc6Ro5AHFj/+2ULjyaBal3M2KjzQh6PlFGN2D+OtU0CQqDICdlkWaefS36Mm0vwDT
	GsXA==
X-Gm-Message-State: AOAM530Ay9XRFvHae1aVMe9oU4nqOOXA8gX7kK9RoBM2BdWGKP1sw25X
	dEUibgDpnbrNIY2VFeaNTm6adAZl5Yw=
X-Google-Smtp-Source: ABdhPJy5yzmLrsxAkbs56qK0/vhc4FQBheQjh61HR4o0U1Ep1bOIzGh3SqaDSSNPIQtTmMKiGB5V+A==
X-Received: by 2002:ae9:e649:: with SMTP id x9mr33705236qkl.204.1638133873861; 
	Sun, 28 Nov 2021 13:11:13 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id r4sm7233133qtu.21.2021.11.28.13.11.13
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 28 Nov 2021 13:11:13 -0800 (PST)
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
To: blinux-list@redhat.com
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
	<alpine.NEB.2.23.451.2111281401050.19117@panix1.panix.com>
Message-ID: <e702ad4b-582c-676b-3597-cb0defd10574@gmail.com>
Date: Sun, 28 Nov 2021 16:11:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2111281401050.19117@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

All Youtube videos are transcoded to multiple formats before they become 
available. I believe that even if the video is uploaded in a supported format 
and bitrate, it still goes through a transcoding process that will somewhat 
reduce the quality of the file. Webm is usually the best quality transcoded 
format, and it is a royalty-free, non-patented format, making it ideal in almost 
every way. You can change the downloaded format using yt-dlp, but there is no 
way to get the exact file that was originally uploaded, or even to find out what 
that original format and bitrate was unfortunately.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

