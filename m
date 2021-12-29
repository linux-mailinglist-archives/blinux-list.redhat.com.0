Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F33A48166F
	for <lists+blinux-list@lfdr.de>; Wed, 29 Dec 2021 20:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640807232;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1gNysX79zYZKF1fbAbLs6/boi96VKixCag8KIZgS/bw=;
	b=SjWyfWvSp9hL3quILjKK5LhgrAYxjdj7DTmVDbE6/NT4Xmd9Wi0ddPlNvn3YaFIFdRPkb5
	FaKoPjeL1xx3SMPSKZHZshscpjC08imykgvnx75uIViB+6TwCr8vgWKdKhSE8GyQyAk8RL
	J9K5oiCA47m831QqVztTtb+cBome//I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-495-HB-X2LOGM2ytwoVFibErvA-1; Wed, 29 Dec 2021 14:47:08 -0500
X-MC-Unique: HB-X2LOGM2ytwoVFibErvA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F3E791006AA0;
	Wed, 29 Dec 2021 19:47:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A9CEC5DF21;
	Wed, 29 Dec 2021 19:47:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 935421809CB8;
	Wed, 29 Dec 2021 19:47:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BTJku06018573 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 29 Dec 2021 14:46:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7E78DC202C6; Wed, 29 Dec 2021 19:46:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79435C202C5
	for <blinux-list@redhat.com>; Wed, 29 Dec 2021 19:46:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B289811E76
	for <blinux-list@redhat.com>; Wed, 29 Dec 2021 19:46:55 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-173-AwXG04emNKCXAAHe3cwN-w-1; Wed, 29 Dec 2021 14:46:53 -0500
X-MC-Unique: AwXG04emNKCXAAHe3cwN-w-1
Received: by mail-qt1-f174.google.com with SMTP id o17so19856704qtk.1
	for <blinux-list@redhat.com>; Wed, 29 Dec 2021 11:46:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=dVyiPaZabKliz5OImVAe2RrYyM7ofEiejbjbAN59Cjo=;
	b=clHgH0cJ2A+lJk4gPJQKZJaTX7JWbcjgLR/QGERiQCZ8dPpyDt/Qj0ncW8xyjThXGs
	Txl3lR7KN5Ss89MgwHbxNTBfG3F2ne1xtZa5ZQaCDnUB67kHZ+RAtW0k/IBYY49aptIf
	kEhk6Bh2Wu553TVBep5hk6Jym3+Pyiqz8iLiLoXXNHtcrRO/INW/Qx5C1/13vLSwXtY9
	Q9zbQyEjS63SxRJCfqxeeQ2ogJ/KYBubE/T3NoD/tORtXoiWGyaBK8iOEllsfj2KMHV9
	3ycxzOW85KJTpCC72snJ/k4kDNs5112ML6Icwvz98ownrLUNdI1x9Olnhf4qQ90B51K8
	RpPw==
X-Gm-Message-State: AOAM531iTUtgJKuholUZ9uSKFrpOphlJi1y9+QrNEh7+gGYzRoMklhtI
	ShT5Jbfw3pJSyJuOqafcxiKRKOx2KwVUPUWeRgq4D+6/Yac=
X-Google-Smtp-Source: ABdhPJxh1OC5RzPnamJCIXaL3UeueDS+CeCLgN2Xg7TTAMkg12IVelUbYLEOIYsSzCJPeC/Gaupzu4geMSqGhnRmTY4=
X-Received: by 2002:ac8:7e81:: with SMTP id w1mr23080406qtj.147.1640807212901; 
	Wed, 29 Dec 2021 11:46:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5762:0:0:0:0:0 with HTTP; Wed, 29 Dec 2021 11:46:52
	-0800 (PST)
In-Reply-To: <b4c0d189-7ca5-be22-258b-9e6791f91f5a@gmail.com>
References: <e1a19af4-7fae-373d-6281-953dd4b03790@seznam.cz>
	<b4c0d189-7ca5-be22-258b-9e6791f91f5a@gmail.com>
Date: Wed, 29 Dec 2021 19:46:52 +0000
Message-ID: <CAO2sX32+DT7QduDKeoOoxstq4Y7aY_qbY6xemzQJu=vKAj4f_w@mail.gmail.com>
Subject: Re: Infected Chromium
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I concur. Unless your friend deliberately invoked a virus scanner or
other anti-malware, any message claiming you have a virus is most
likely an attempt to prey on the technically inept by making them
think they have a virus and tricking them into paying for a fix that
at best doesn't actually exist and at worse is a trojan.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

