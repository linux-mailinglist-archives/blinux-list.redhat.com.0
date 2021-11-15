Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8547B450872
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 16:31:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636990292;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1dDLkIO/+pnHJbqEwUY6dAHyQss9xlubcbmamwA5D9k=;
	b=XvRbKswVeNUlkRE91f+Uii/Rp7ln+cKLq1nk7OdZak5e5bIFHn8/fiAVTnqpeAShNqVXqs
	p/xcKDwk2m/JUfz3cEseq7es1aS6sq9oavCwt+EZd+pmBTusekJmGrRo89GMbSuoa0qiE0
	aNpFZHcR+4eHy3/os7SDbvwmlXxvmaM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-CWpsVfFYPZmey0kW6S1V_A-1; Mon, 15 Nov 2021 10:31:29 -0500
X-MC-Unique: CWpsVfFYPZmey0kW6S1V_A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 400D487D545;
	Mon, 15 Nov 2021 15:31:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B4E9519723;
	Mon, 15 Nov 2021 15:31:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7CF5A4A703;
	Mon, 15 Nov 2021 15:31:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFFVF6N023652 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 10:31:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F03971121315; Mon, 15 Nov 2021 15:31:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E6D11112131B
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 15:31:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E7111A09A4D
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 15:31:11 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
	[209.85.219.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-594-wLKZWRwrP_qBKQMMJtONxw-1; Mon, 15 Nov 2021 10:31:10 -0500
X-MC-Unique: wLKZWRwrP_qBKQMMJtONxw-1
Received: by mail-qv1-f51.google.com with SMTP id i13so11579068qvm.1
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 07:31:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=PjCpzd0zzYlxAqU38RISbR9WulaOuKRyA9nlayTkQm4=;
	b=PZkL083xxN/sWhE737twi5CaugeTtm08UEF63ABrsmS0dvdgD3jwP8qedQh08AtEdt
	LPQ1xLzQ3kJcFSRxn3xc6eIhQwunbi6XmTF2deO1RBz/XnU5UMKe40lX+3GpOkk4ZcJx
	K8xnsXWqz+Y96HoQsoWJn+f5krbPjYb8rbEwWocmmtuZQhZqU2PGS0mDOTr/jqM/tnM4
	5/m5SxMxOoNbjVUax0m5pDvTiND6rfHiWGSNnzCOiFGiXZj3rxKUaYVDdu3ykzuzsecE
	IFaRRhjzUQNpOSTeEQJvOSKe6noQiofWrA0G/hSrHQYUXYARzFYeDHzAiWb8PeYDDabh
	7Ksg==
X-Gm-Message-State: AOAM532W1XZQja2joXaRrrrVv3P1s6xyUqxOXdkW32Rq9n3TijTpAoMV
	CCMRrGTPq3wMa/zeGQ0V5P8nsTL/E8c=
X-Google-Smtp-Source: ABdhPJy+ffRBItoYJCIY2Naj5okAj2CgTM3dmvOlYWJyg/QYVku0Tq0YtUhRFMJiQKK2itbAIUWGMA==
X-Received: by 2002:ad4:5c67:: with SMTP id i7mr38150706qvh.37.1636990269440; 
	Mon, 15 Nov 2021 07:31:09 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id 73sm6762019qkm.94.2021.11.15.07.31.09
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 15 Nov 2021 07:31:09 -0800 (PST)
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<2e84caa3-a3ce-d38b-b2e7-10d1d1b495bb@gmail.com>
	<alpine.NEB.2.23.451.2111150036130.24447@panix1.panix.com>
	<e7972124-81a0-c317-6b97-5ae6dd1fcce3@gmail.com>
Message-ID: <8328bea3-a6d8-12ef-210b-5cbc9f46b849@gmail.com>
Date: Mon, 15 Nov 2021 10:31:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <e7972124-81a0-c317-6b97-5ae6dd1fcce3@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Just start Seamonkey mail for the first time. Import comes up just after you hit 
the next button on the welcome screen. Thunderbird should already be selected on 
that screen, and your mailboxes will be imported automatically.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

