Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 948DE3AB3D1
	for <lists+blinux-list@lfdr.de>; Thu, 17 Jun 2021 14:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1623933636;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pu1K63bBkgQ7MuGW25cMLL1Rcy7Kc0etGpSiy8D39lE=;
	b=D/3+UMB+unSd499tBVLCNBzr20tglzaxdw7RphRwLeH7q0mSXC7uWoY5sxaEWecPHgZRVD
	5vjPoSa9BG8+a5QdwslrfL/aIra4LFvkJGk8BJ49G0HdAK2yvocxsD5pqSpMbjrJ9IZFT2
	HkJT9/sGYKk7ytOZD3YedlLLbI3WRzc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-517-GH-DlcpqNeul4trT0n_oeg-1; Thu, 17 Jun 2021 08:40:35 -0400
X-MC-Unique: GH-DlcpqNeul4trT0n_oeg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B61C19067ED;
	Thu, 17 Jun 2021 12:40:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABBED5D6D1;
	Thu, 17 Jun 2021 12:40:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F049D1832DAB;
	Thu, 17 Jun 2021 12:40:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15HCe4bQ032729 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 17 Jun 2021 08:40:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CA8AC2041ABA; Thu, 17 Jun 2021 12:40:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C53262051B05
	for <blinux-list@redhat.com>; Thu, 17 Jun 2021 12:40:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 04339857D08
	for <blinux-list@redhat.com>; Thu, 17 Jun 2021 12:40:00 +0000 (UTC)
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
	[209.85.208.66]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-192-pPDzFEuAPL-Z1ecSD_39kA-1; Thu, 17 Jun 2021 08:39:57 -0400
X-MC-Unique: pPDzFEuAPL-Z1ecSD_39kA-1
Received: by mail-ed1-f66.google.com with SMTP id t7so3786558edd.5
	for <blinux-list@redhat.com>; Thu, 17 Jun 2021 05:39:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2x4YDx09LxJLTPyv0DIZduwpkatx1GbeaZzH08k2pss=;
	b=ipeg0M6eXw0Km0ZQBKPoJ9xUmyp8/hFR68vJjAbyUnCXARqa5q161FvIXRYTLHKYUH
	afwIOR6GICPjeUTlnRRMgfNZhcQSOfPCrQw0weuUCZMa+JVIDryISiZdnxKH/L+YId3e
	WLHvtt/KHPqbPjN/GPZEQ62KLjibDozOVoG2IatbaCa5YaX3hQi6oh7gauc3uY+v5C2L
	6ibUw5QfXxgDUZt0KV1Y6HnXhs4Pgr9FlMmz4JDYqbUISf4j7oWg3PJFv9uzz42XbYBt
	UtrnuUjNOso8am4MxqfdCurRVgZpTNAIUH2cBPWvmEDXMWcYapd7iPW6ZKY8ofuP+Q1a
	5UZA==
X-Gm-Message-State: AOAM531WninJUrqGUSxCFy6bVnh3CpofFl5K7fVZeaEGBSVapDAxdzSR
	QewEjnOK7s8ijx+zGYaY5A0j0q/QXh2U4cXDUZwl2Sm9
X-Google-Smtp-Source: ABdhPJzDfegFHH+dH+hsQKXHDWivOebJA4RDkN/GPQlD7FKjQtejZ6bpjqCs7441mRZU+R5x6/Kj7C8UBJ//1dy9Xhg=
X-Received: by 2002:a05:6402:348f:: with SMTP id
	v15mr6074249edc.135.1623933596375; 
	Thu, 17 Jun 2021 05:39:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:ca81:0:0:0:0 with HTTP; Thu, 17 Jun 2021 05:39:56
	-0700 (PDT)
Date: Thu, 17 Jun 2021 18:09:56 +0530
Message-ID: <CAO2QrD6VrDHdA=Z8W1HfTvh9apPHUXiR1GPmTepUi+2E+6w_TQ@mail.gmail.com>
Subject: Getting started with Linux and Raspberry Pi4
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hey my dear buddies,
I'm Akash from India and I've recently bought brand new Raspberry Pi.
I imaged my SD card with stormux and started it, however I was unable
to do much because I'm unable to understand the UI as well as I don't
know any commands.
Even I was unable to connect to my WIFI because I don't know that how
to do that.
I'd be thankful if someone can please help me?
Also, I tried to search on stormux.org website, but there's no user
guide available.
So, if there is any, can you guys please suggest me any other
accessible distro for which I can view the guide too?
Although I'll use my pi through SSH, but still I want a GUI based
distro for some tasks.
Please help me.
with regards,
Akash

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

