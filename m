Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4DA46140B
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 12:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638186322;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YqSjIJZUTYf5LArEfYs9mBxscspu8PV5jIrHJZC5i0E=;
	b=bLZRd5oGUJbAjJVYg+WsHgYV1/USY2n7kom/R3mCH3ikMTrbha4QHF6Zl7/+zAiehpjkFN
	GhP5k2xbGnvLCrCYvjVc9WIRDoPCMdhbFqxK3BWx8TYic0BYssYDuNE5fljdXOCFfM6fTY
	/OxRJ+ui4uDfL2noWZvkmiANyNy0BIQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-588-fS3zeBKANa2b0teYR9wHbw-1; Mon, 29 Nov 2021 06:45:19 -0500
X-MC-Unique: fS3zeBKANa2b0teYR9wHbw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9937C84B9A5;
	Mon, 29 Nov 2021 11:45:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8192B60622;
	Mon, 29 Nov 2021 11:45:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 06DA24BB7B;
	Mon, 29 Nov 2021 11:44:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATBih68019951 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 06:44:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C53DB1402406; Mon, 29 Nov 2021 11:44:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BFB63141DEC9
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 11:44:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5850801E6E
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 11:44:43 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-452-LLy9Z0MOMUa8PrkmLu7_Kw-1; Mon, 29 Nov 2021 06:44:41 -0500
X-MC-Unique: LLy9Z0MOMUa8PrkmLu7_Kw-1
Received: by mail-wr1-f41.google.com with SMTP id a18so36140471wrn.6
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 03:44:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=MnZfpizlxIJrCw1uHa3wDeCFIbUohs8jrSomiTDhG18=;
	b=tdMNyvCYRLRHKpGDMgxf6ObQgu/t41kkEmNcwQoFZgw4emZofPYajsylVFT4OHlXyf
	tWg4gQeXiWv1XzvbS7bqJh7t9cjaNfzjSFq+uDsCt9V2Ku44+O+Jx9C5DulbtqIqiWMj
	2FAPh4WYdTIRImKhgIbHtKavny5+kO0oqMrkOe0lRBqkV/b8B3AoUY4qeI9pDm/4i7au
	tCUpRDxW1Rv55YuZTx7B4eyn/3oIFacJriIeWD3OmyMOCoe+AfHZ95uEYp9czlrwtrZQ
	lX6vvYcEBHOlwxHjfnSZLT7lLyr2sfLUYbNkQvVBAlAFGfPqoU0mpbEMeNJ2312y6uES
	tWvQ==
X-Gm-Message-State: AOAM532nEgjBGL+hrGFXcQINUPsIoD7PbKSf0qt+hB/YZXFKhPIIGADV
	3+xvGcowIU+d4b/uOSA2JzWnP9FahBue6g==
X-Google-Smtp-Source: ABdhPJzgltkGPjvoVVUX+0CJmKReMaRyiixG8hf3bbMLU6eW7BG635bTqrpDBAX8Cab3sNwxAx+UpQ==
X-Received: by 2002:a5d:6c63:: with SMTP id r3mr33079821wrz.213.1638186280336; 
	Mon, 29 Nov 2021 03:44:40 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	l18sm13943815wrt.81.2021.11.29.03.44.39 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 03:44:40 -0800 (PST)
Message-ID: <3f05a646-0fcf-7f37-6319-11341ad34e0d@gmail.com>
Date: Mon, 29 Nov 2021 11:44:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>,
	Linux for blind general discussion <blinux-list@redhat.com>
Subject: Pipewire and Orca and audio
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So I'm convinced now Pipewire is doing something funky on 
qemu/Virtualbox. I've spun up a quick and dirty Arch system running Mate 
via startx. Pulse works fine but the moment I redo the install with 
Pipewire, Orca keels over.

So is there anything special I need to do in order to get Pipewire to 
play nice? I did sudo pacman -S pipewire pipewire-pulse wireplumber and 
am trying to go with a Pipewire and Wireplumber setup. All other audio, 
like YT vids, works fine, Orca just comes out as a garbled mess, so it 
looks at least to me like Pulse works better on my system.

Anyone else run into this with Arch or other distros using Pipewire and 
fiure out a solution? There's not much online really about it, just 
articles on oh it's a bug, or oh replace Pulse with Pipewire

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

