Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 062264B561A
	for <lists+blinux-list@lfdr.de>; Mon, 14 Feb 2022 17:25:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644855915;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JTNDtE7I10leXJeOEZjvOT3BweLfLKTH/J1jvdtgC2w=;
	b=GUQLEbEl4hyDQq/UmI8ej8aScv7HCNj9b2nARcjlGwFZHnfUXyIStPqmkZqRVhT2+Iy3Jq
	28y2+l8DM9teYbjwS2yrxImj+Z+HXk75FKHfdVwKDB2fTh0rs08cE41K6gemjf7Li/gc1N
	1ybQeTkpVRIEFwSyy4xPOXIZ0Uy55U4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-102-5K4aHtt1P_ajEjUY7pfWkg-1; Mon, 14 Feb 2022 11:25:12 -0500
X-MC-Unique: 5K4aHtt1P_ajEjUY7pfWkg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 50C30100C623;
	Mon, 14 Feb 2022 16:25:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0AA9075535;
	Mon, 14 Feb 2022 16:25:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CF2144BB7C;
	Mon, 14 Feb 2022 16:25:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21EGP5J6025591 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Feb 2022 11:25:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 44308492D17; Mon, 14 Feb 2022 16:25:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FFBC492CB0
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 16:25:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 26D2985A5BE
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 16:25:05 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-155-QPw7xgopMWG6TQoaHvFzCw-1; Mon, 14 Feb 2022 11:25:03 -0500
X-MC-Unique: QPw7xgopMWG6TQoaHvFzCw-1
Received: by mail-qt1-f178.google.com with SMTP id b5so15866248qtq.11
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 08:25:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=b3fCmmTitG3DmHHrx5yWvNsqvb4o7BNFSPX3Ht8znVY=;
	b=v4rl5jk9Jj31suTmWZ0EfenO+IRZAMvnFljpUikDv97V4qScsRLL1O0d/zq2sOE8wO
	Lyn4maZQrlq6tl49JkWzsNxUQSZbC3mZKQhuNRUerrx2h2FdzzBlojo3dTbaKp2ji9pt
	Yt+FVkXQKE2e4nxmUQoH0eOWkZIDykqjFlCL843tbPD0Ex8p3e6+0RYBEGyfXWcRywnZ
	7ANZgku9sKn4/GIJvTJPwXHg+SOS4U3FaFOzH2PG76lYI9i7EptnM3YuT2VdHln895gY
	nG86eVv4dvkaX4hE/dCGE/iJeCdS0G+Fsg15r6e3qt5Aypyp9Ct4p4/y/Qkia7moXBVg
	dM3g==
X-Gm-Message-State: AOAM5319Kn9tdixjqopIqUIAEaLNefaiyFfEkpKHOl4Ec//+N/YqGLw0
	9/++Oth9+XtQ9WPpZvLixKecbbDbYMQALNF33GTtPtmSSJI=
X-Google-Smtp-Source: ABdhPJx8ZiLgRDq2hMq3kSrpp+CaN6AaOqMppw+X4+E99806duKHO2MwwyIixdptG2WcCCivhajiqtzUnpmgox6VP80=
X-Received: by 2002:ac8:7d0a:: with SMTP id g10mr420391qtb.635.1644855902756; 
	Mon, 14 Feb 2022 08:25:02 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:d06:0:0:0:0 with HTTP; Mon, 14 Feb 2022 08:25:02
	-0800 (PST)
In-Reply-To: <CAO2sX30a0b3abFF-gn8m3sCFWcg6i5RQRB6P-o_+9d4FMaaV3g@mail.gmail.com>
References: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
	<f8278111-3fc6-107d-d5fb-8f85587232c8@gmail.com>
	<CABKqQvFFkhtQg1y37tFVfWEogVi4=eQ5uTT4VYAGDNGViMF-Gg@mail.gmail.com>
	<20220214.153145.899.28@192.168.1.100>
	<CAO2sX30a0b3abFF-gn8m3sCFWcg6i5RQRB6P-o_+9d4FMaaV3g@mail.gmail.com>
Date: Mon, 14 Feb 2022 16:25:02 +0000
Message-ID: <CAO2sX33sU7yDrUgD9Z2OBnA9db26s+FW3qaLopwEkdUPbDfMrA@mail.gmail.com>
Subject: Re: How do you customize the way punctuations are pronounced in Orca?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

Also, is there a way of adding pronunciation rules to Orca via direct
editing of config files?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

