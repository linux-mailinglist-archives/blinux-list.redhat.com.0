Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C5047C433
	for <lists+blinux-list@lfdr.de>; Tue, 21 Dec 2021 17:51:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640105469;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sTfhZmdz9bvd3+AOvpVnzOEjUxdrEMS2nWAHj7f9/NA=;
	b=BzFAsgrYG4pg1T2w6goyCd8ovp7DeVGlrBfHTtrH+oq3+FKVP4Z8982/1tpZLRDXkldeNX
	xk6ZGhwLlwN8TU4Gj0f7Tc1yhTelJz2knFeoaExt5QoyidlAcskzgKBLwG0Ey6MXDIrS4l
	GRfLsaxrS2QUzDSuRIuGkS/0K/gTAdY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-241-rLGf3b6YPH6dQTjRylIhPA-1; Tue, 21 Dec 2021 11:51:05 -0500
X-MC-Unique: rLGf3b6YPH6dQTjRylIhPA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68F6B10151E4;
	Tue, 21 Dec 2021 16:51:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 297AD4E2B1;
	Tue, 21 Dec 2021 16:51:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CA0E71809CB8;
	Tue, 21 Dec 2021 16:50:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BLGou1g019279 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Dec 2021 11:50:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8521F401E47; Tue, 21 Dec 2021 16:50:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81751400F39
	for <blinux-list@redhat.com>; Tue, 21 Dec 2021 16:50:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68C9A80A0A0
	for <blinux-list@redhat.com>; Tue, 21 Dec 2021 16:50:56 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-73-0SKLI1yIPBe7Rdk_4I8z1g-1; Tue, 21 Dec 2021 11:50:54 -0500
X-MC-Unique: 0SKLI1yIPBe7Rdk_4I8z1g-1
Received: by mail-qt1-f182.google.com with SMTP id p19so13382456qtw.12
	for <blinux-list@redhat.com>; Tue, 21 Dec 2021 08:50:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=jAeTEBBT6iXOVbGqWgCeUT1UUBz1srewcBUv/tHvCyU=;
	b=416c4YpKLuZTTM16N0J4GxxEohw7Giu22ZV72cWrbQDk2aTY4SxYakrSgOgXcE5ep3
	36IOYkZFgMgPxN5V5RAw0DUsLlEq9UymHMolqbOCq3eaF2y+RrrbYZ2riT93DbwwEDeg
	LbPfZRBSL0zhMLPgWXvcOloeUrFuwY/AwY2o/zszJ2Y8aLDtlfViZHsKMZu1Lt05H5b7
	NhUo2tbURk3DqQrW2exPlFx1exo6x62M/e4SMQy8vQUeCQXCeC+oj9aACxewh+hXzOow
	viLst4zjNJ+KqJllf94aZqRcNSLaZCBNNlU/hlkXr59+GNIYjO6BSEQgMZNVzyZtMm0a
	pdTQ==
X-Gm-Message-State: AOAM531jQI3xr48ieX/3Atqy5+WU41nUEKt44i7HTq9rTtufm/3DeIg5
	LY4/7WnUbIZDiY6RKbvK9+pNWMTusWo=
X-Google-Smtp-Source: ABdhPJxClJUGiC/jZnNhtMjSMvy+idjBkrTMK8q3RzqFmNI2vc4Oi8dVyUL/umLxt4j5P4rkg4UvLQ==
X-Received: by 2002:ac8:5c0d:: with SMTP id i13mr3007016qti.90.1640105453923; 
	Tue, 21 Dec 2021 08:50:53 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id
	q15sm13906752qkj.108.2021.12.21.08.50.53 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 21 Dec 2021 08:50:53 -0800 (PST)
Message-ID: <1894fbcf-17b1-89f5-dea7-26cfbdfc723d@gmail.com>
Date: Tue, 21 Dec 2021 11:50:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: Dealing with seemingly blank combo boxes.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CAO2sX32o7d5EwMkWRVs4fQVjOFLkGmhNotbmO4+QGNkw4vAeCw@mail.gmail.com>
	<444374c1-a744-f908-a6cf-aae16d207cee@gmail.com>
In-Reply-To: <444374c1-a744-f908-a6cf-aae16d207cee@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

Bad idea, doing banking or other financial things on such an insecure 
system. My best recommendation that seems to work for me is to tab off 
and then tab back onto the dropdown box. This seems to work all the 
time, letting me know what I have selected. The other thing to try is 
simply not expanding the dropdown box, as this will many times read 
where expansion doesn't. Not sure why this happens this way, but these 
two things help me when it does.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

