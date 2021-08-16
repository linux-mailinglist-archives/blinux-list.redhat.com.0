Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B51013ED9CE
	for <lists+blinux-list@lfdr.de>; Mon, 16 Aug 2021 17:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629127459;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Cc45xwz1Bd8iuXy3pAUzTTByAkoWeeQDrNqTFHf0d0g=;
	b=fkN2/+3P/E14AdnHLtUveUSp/vK/E6FoYPNoA2CAUuE1FzdCBpPWgBCQjh54OW/J9mmvof
	x4jXlxkmlTCX26KnuqvuvJMLtOVUGFH9oUvnzRGtjvNPkD5R1QgfWITpqdqy3fljN/8mgp
	ucTlV8w2LRHvrfy8fAy7W0DKsm2h6IY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-480-RXZgWY0nNeu_jfOOl4r9BA-1; Mon, 16 Aug 2021 11:24:18 -0400
X-MC-Unique: RXZgWY0nNeu_jfOOl4r9BA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7CD3087D541;
	Mon, 16 Aug 2021 15:24:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6130B10013D6;
	Mon, 16 Aug 2021 15:24:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 33410181A2A6;
	Mon, 16 Aug 2021 15:24:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17GFMYLO020239 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 16 Aug 2021 11:22:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 02B31200C0E0; Mon, 16 Aug 2021 15:22:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F244D202E4D8
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 15:22:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D3DF8800159
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 15:22:30 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-412-TT-mPDmWPMeTIhZ0KD12UA-1; Mon, 16 Aug 2021 11:22:28 -0400
X-MC-Unique: TT-mPDmWPMeTIhZ0KD12UA-1
Received: by mail-wm1-f53.google.com with SMTP id
	c8-20020a7bc008000000b002e6e462e95fso2554028wmb.2
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 08:22:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=Ir4qAAwLaUw3vMndexen5I6poLoP6fcqlQ6Tcdl4ZE4=;
	b=uhBEVDTJVY9pZ3KgoHaWAUWbvU3a1whYBWOIEX/jifxpQBhwqjICQiBDisQ7WDp2OQ
	J7B4BKNtjjRloE2djg7VqtF+yCQo0d9gJrq0shs1Rak1QqUTuOL1iN0ifnq7aDfhgVZH
	li2nE/xmAIvWKBt1AzSLsyoXwX+9x+nLdpYy6s1O/nVQsFT1qGSeVi6pCEUhiBzuj+2M
	Li1lcnynIelDD2Po48Zky5NBvff284qRXtxevfWjJdCWNS5PEqUq7cRYxEAvV1NPROD7
	5TxUZT5mXKpc0wX7YAgIm2WXWI2NuV/glfkVFw9Q/+lCjFi3Ni7RTzUsPugdIsfGpyvq
	FIJA==
X-Gm-Message-State: AOAM530fYPYwEjLmzvOV/jMjdWf8X2ZQy0W725o0bWxKZqV2ctEcLZnB
	ORwOOUQR9Fux1ymhcgbDMVhKH6l663dTXA==
X-Google-Smtp-Source: ABdhPJwQcjE0PNzERp4TRoqRb6yfGhypaviANEGPCnnmPRX5i4byDi6YQ1IKfzsJBfmEVsnqGXUV4w==
X-Received: by 2002:a05:600c:242:: with SMTP id
	2mr15614166wmj.167.1629127346722; 
	Mon, 16 Aug 2021 08:22:26 -0700 (PDT)
Received: from [192.168.1.221] ([90.251.27.18])
	by smtp.gmail.com with ESMTPSA id
	c190sm10668335wma.21.2021.08.16.08.22.26 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 16 Aug 2021 08:22:26 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Android emulators, what's the most useable
Message-ID: <6b3ad8a9-d898-0618-243f-eea0893a8617@gmail.com>
Date: Mon, 16 Aug 2021 16:22:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So....quesstion.

What's the most useable Android emulator currently? Trying to test out a 
few android apps and can't find a good Android emulator

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

