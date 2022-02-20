Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BA38F4BCE3F
	for <lists+blinux-list@lfdr.de>; Sun, 20 Feb 2022 12:42:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645357355;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9S7aL/GD1g4KeM4YkusQmv78m8xjxZYIVc1u+be6o7U=;
	b=hbEXOVKWII1h2XEenxLGoLRrlyXxwmERSjQfHQDHhmgcXLlrjYyPKgJ3PGl+vvJGir/3H4
	9sLOeHAkPM8bygFnLwTzEODvS5PaON4pTQWnCOgjm29dCYbuWdx+W8ikyYpMX/jX2Bub+h
	Sv20oJu3KJfUWXUKHPS5MAwlw6szPO8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584-x06rJiy5MFaHmS0zHIkyAA-1; Sun, 20 Feb 2022 06:42:31 -0500
X-MC-Unique: x06rJiy5MFaHmS0zHIkyAA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5A0191006AA0;
	Sun, 20 Feb 2022 11:42:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FE846E216;
	Sun, 20 Feb 2022 11:42:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B2E261809CAA;
	Sun, 20 Feb 2022 11:42:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21KBfxKA002071 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Feb 2022 06:41:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1DA3440E7F20; Sun, 20 Feb 2022 11:41:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1949640E7F0B
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 11:41:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00B6685A5A8
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 11:41:59 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-135-oLHK8PXjONmwg28Q3pQ42A-1; Sun, 20 Feb 2022 06:41:57 -0500
X-MC-Unique: oLHK8PXjONmwg28Q3pQ42A-1
Received: by mail-wr1-f42.google.com with SMTP id p9so22175285wra.12
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 03:41:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=m5/q7nJurQCIxBwMKEl8IBky72GBbxnpurI+I2yhvRQ=;
	b=IGnBrT7BaL3PFDgyx4qjiAD8yhN2cr9W++Cw3Cq9Qi2H408+QlsKO0vsyGww/BTVTd
	wMDs6XTblSV4AmDA0B4BbX7A6L3WYksy08b07q6/C9ZJ7g1La1U79lNulsitiMFrZjPD
	UKEc1Xm2gnl32RZIdfSxqFLkn+bxg0Yyx8qONXUCYUBs1YBBXqnFoPlehC3QyeJJY0vh
	nn5YjFCx4U+ynW2S4hPl3KzmrDKDWTL+uZGTjfqHtoimu7d0XrL53V/mVWH9DjcxZAmJ
	64QcS0XyC8HoAC1abRmld7Zs9AZEaqV8unP7ymvbIP4bATp8r3sf3TLc55Hf5aoCIGdN
	V9YA==
X-Gm-Message-State: AOAM532meO04wzQR/OcAqWg0cj2PiIdjI7BDSk0INiBt0GMT+zEZjqdo
	qMnxmzLUa7CWEOu57a7xeSed4957ogA=
X-Google-Smtp-Source: ABdhPJzCkKmkOo7J6/1rvPqZtw2BoWvUc12R1GR7cdbTLiPljpKce7KGr2KtOPiyOBFOKiT6Tou2Dw==
X-Received: by 2002:a5d:5712:0:b0:1e4:b619:529c with SMTP id
	a18-20020a5d5712000000b001e4b619529cmr12077418wrv.254.1645357315532;
	Sun, 20 Feb 2022 03:41:55 -0800 (PST)
Received: from [192.168.1.130] ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id
	j7-20020a05600c300700b0037bf8c6ee5bsm5244782wmh.45.2022.02.20.03.41.54
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 20 Feb 2022 03:41:54 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Any good addons for FF/Chromium vim keys?
Message-ID: <15ffe906-4d31-2e7b-e36b-81a5452d848c@gmail.com>
Date: Sun, 20 Feb 2022 11:42:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

As it says....any good addons for FF or Chromium based browsers that let 
me use Vim's bindings and yet still play nice with Orca?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

