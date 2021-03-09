Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 550B6332F8E
	for <lists+blinux-list@lfdr.de>; Tue,  9 Mar 2021 21:06:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615320368;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/4M/0gpzkEb6Pa1lnNlRHTx16jnivNddIWvRS05zCQE=;
	b=gjDoCr7Tu2bTg5famlSBeaOMdLs07sN+EKVwBPHQ7kkdMRTPcJCArTr5KvdeRwK3eAAXjt
	NIYzFFsyf9kP7s/v8pRn0TOtvo6aWP0yKQpkQZXstQToYHfEMoYd1x6Iq/iix3niu0GOvV
	MTvEBm878pHeZYgBZNiY9JUP9o+bB7A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-K028lwXVPfm7DsyVcewMkQ-1; Tue, 09 Mar 2021 15:06:06 -0500
X-MC-Unique: K028lwXVPfm7DsyVcewMkQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB14A19200C1;
	Tue,  9 Mar 2021 20:06:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D5471F406;
	Tue,  9 Mar 2021 20:06:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 656221809C86;
	Tue,  9 Mar 2021 20:05:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 129K5nnD023848 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Mar 2021 15:05:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 516862156A2E; Tue,  9 Mar 2021 20:05:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C3D02156A21
	for <blinux-list@redhat.com>; Tue,  9 Mar 2021 20:05:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 88D811854CB3
	for <blinux-list@redhat.com>; Tue,  9 Mar 2021 20:05:46 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-158-392RZGVMPW6Zo5SR5i6srw-1; Tue, 09 Mar 2021 15:05:44 -0500
X-MC-Unique: 392RZGVMPW6Zo5SR5i6srw-1
Received: by mail-wm1-f47.google.com with SMTP id
	t5-20020a1c77050000b029010e62cea9deso7784521wmi.0
	for <blinux-list@redhat.com>; Tue, 09 Mar 2021 12:05:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=AFedhysnXjmIbeznu74v6koNMt2yC6F2q+bnS0+GmQ8=;
	b=buyoA9KtiZvd+QTZjTpUYS47bGBlMd8myCLZ8YeBewLCqrOlP4sqY25rxwFHHwEu7X
	MeagAxmNXbt/7nbLqrCRyMho9u7R48P5tpGsWNwZ6wHRVlNwAdvemt4fLO0hYdBAu8fy
	LA8ROnm64Sc95IQL78PwRBIIsmYnFLj+nP7NMdGoExo3BqtNKC66ZDRKUlO74QwXiaqT
	CDdnRUM0zAelNOOSQHQqBqF0d3Nwb86EXiPG6zXeGEYPUEMQzIYWpxfLlCN0+X6B5XGH
	WfXDMosCd2KEv+LWr57HPAIUsoPE2mLYgDC9WNfAWSNX6+0T9frMiJwhlPz+LytFdn0J
	2BZA==
X-Gm-Message-State: AOAM531Qx5h0rcj4N5FkvyZRxO3GIssDtobOxbbyLeR27zR3iYhyoyR7
	H+J1g9TZ2Yb+1iGkkq2AUeNjMWsk9GbsnA==
X-Google-Smtp-Source: ABdhPJwx385gj5I0c5XqokLzJLXoyu93IsmZ7nFCH4ghx10+EF/hlUWX0b1FhofKa1EsA4Ri4uVcPA==
X-Received: by 2002:a1c:f708:: with SMTP id v8mr5731980wmh.25.1615320343659;
	Tue, 09 Mar 2021 12:05:43 -0800 (PST)
Received: from ?IPv6:2001:16b8:2b3d:d500:6215:e94c:c113:a1a5?
	(200116b82b3dd5006215e94cc113a1a5.dip.versatel-1u1.de.
	[2001:16b8:2b3d:d500:6215:e94c:c113:a1a5])
	by smtp.gmail.com with ESMTPSA id
	p17sm5101239wmq.47.2021.03.09.12.05.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 09 Mar 2021 12:05:43 -0800 (PST)
Subject: Access to Kindle books on Linux
To: blinux-list@redhat.com
Message-ID: <37f242f5-ebdb-d1b7-8b97-7ebe11b559d6@gmail.com>
Date: Tue, 9 Mar 2021 21:05:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.1
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


I am wondering how to access Kindle books on Linux using Orca screenreader:


There is no Linux Kindle Client and the Clound reader Webapp 
read.amazon.com does not seem to be very accessible.


thanks

Vlad


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

