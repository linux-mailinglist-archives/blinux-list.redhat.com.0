Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 59ACC42C38D
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 16:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634135969;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mFpERkdiTlxAgCCEo3W47p5WB99+o0KAFjMEASNa7tE=;
	b=AEXM+7Jx9FJzS6NIb7rOaVmUmiF/n3BoPGOGr0FNyNFvHVcWsL5p0nv885tca03nH6ljN+
	RiGs1WJ1q/z8K6Yy6thyhGzs5sJDRsGF7Nbxztus2O+aKh/P84oeviKcSyIpVRaZPKs3LK
	pYDJXY2gu7eJKZCXh9b6KMTkyyy2buM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-485-9yyxodzYPVOuoq2mrmlrEA-1; Wed, 13 Oct 2021 10:39:26 -0400
X-MC-Unique: 9yyxodzYPVOuoq2mrmlrEA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 43437101F002;
	Wed, 13 Oct 2021 14:39:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CADAA60C5F;
	Wed, 13 Oct 2021 14:39:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 60C4A1800FDD;
	Wed, 13 Oct 2021 14:39:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DEbaYQ020730 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 10:37:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A48442026D5D; Wed, 13 Oct 2021 14:37:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A02D52026D46
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 14:37:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5AF1C811E91
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 14:37:31 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-106-4XIRaL2iMgu_Md3lf-xqWw-1; Wed, 13 Oct 2021 10:37:29 -0400
X-MC-Unique: 4XIRaL2iMgu_Md3lf-xqWw-1
Received: by mail-qt1-f174.google.com with SMTP id o12so2693383qtq.7
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 07:37:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=0/niaKmz+rCoPR1cpgnwBtmV1Kh4ax6us8UnWh/EwgY=;
	b=miziq0h4ByhZWtUXODZnIaf26NvocYKL35nYb2Q9l/3Iw4ImL7/bmrsAJwMaMjrpTV
	5bSGvG+5BWRWjtfJ64baoo0ENLW1Mc4uU9yyhsHzCfQggbnS7IDu6B2lq/hFfHT3rdks
	9pP95sddfUg/4cRPd/H1lX4PBd5pFMb/8ZQNzqp3pAVMIcAQIepEgaVCjUqf4/711po4
	aG/p7/JiFNxUZNMMWh/fiHrBjqLhQFVZ0xsCuUAtjBf6X2JTe51NjVhEN7JhfbC7EDZb
	DDXDsGrOd8jghvhUjuVUe73L8AuTiChV+X8DvPvmuaCyHAVkDwdbxsyZmBIIBWoNplVj
	7IHw==
X-Gm-Message-State: AOAM53141fLAmyEISXrpbMVUxhx6p9pYJdTqQ/QYjefj6C/2/sCsrD4s
	kgKrQjpuSqOMiX/zogZQKqfeVTYEEYk=
X-Google-Smtp-Source: ABdhPJxIh9+7L1wlk4lVxpY9T3iAC3Loy5ddzCsNu063gnI1889zEO2YEe4oVZsBj3FoKEgGvAAA1Q==
X-Received: by 2002:a05:622a:5d0:: with SMTP id
	d16mr30026547qtb.15.1634135848535; 
	Wed, 13 Oct 2021 07:37:28 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	l8sm2624394qkk.113.2021.10.13.07.37.28 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 13 Oct 2021 07:37:28 -0700 (PDT)
Message-ID: <bab5ebec-8f79-4837-0427-46e72903a8d7@gmail.com>
Date: Wed, 13 Oct 2021 10:37:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: GRUB boot tone on Fedora
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <922a2740-b06a-c964-ddd6-c65e095507e6@gmail.com>
	<alpine.NEB.2.23.451.2110131003001.29121@panix1.panix.com>
	<093939d5-38ef-c30b-5b6b-49da243047ad@gmail.com>
	<alpine.NEB.2.23.451.2110131029110.5363@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2110131029110.5363@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

My friend needed to know when it was time to login which is why there
> were no problems with that approach in that situation.


That can be resolved usually using a display manager or another script 
that can play a sound. Unfortunately this cannot replace the GRUB boot 
tone, which does not tell the user that it's time to login, but instead 
tells the user that it's time to select the kernel or OS to run, or to 
interact in some other way with the boot loader itself before an OS is 
loaded.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

