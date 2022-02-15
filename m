Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 022514B61DE
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 04:55:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644897304;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oe6hY5UhRRRU1pMKvcd0YW7n5qPtx9XRdN0ub/KvJiA=;
	b=BVku+KKL3i21SbGpd8EWh9FUug+nUPW6yy+oO0mWxxn3qwAOC9WqoD/+N/i/jMKqTIZZXf
	qm2mP6FshGZxQuU2SqsfSkynaV34s7BofBAgVytL4pMwVhgrDNw9ZeTHQFMUJdYjRJCml8
	DJMTdfrIhGJ++xfq/yT0hJ1VSemu82Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-249-UrBqhSa_MVeaakMznOEg_A-1; Mon, 14 Feb 2022 22:55:00 -0500
X-MC-Unique: UrBqhSa_MVeaakMznOEg_A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E6F8F801B0E;
	Tue, 15 Feb 2022 03:54:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F04F4ABBC;
	Tue, 15 Feb 2022 03:54:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E84331809C87;
	Tue, 15 Feb 2022 03:54:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21F3rsdI012957 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Feb 2022 22:53:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 57BE35361D8; Tue, 15 Feb 2022 03:53:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53E725361D4
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 03:53:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A420802A5A
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 03:53:54 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
	[209.85.214.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-113-kkuOlMGsPWGOW0DwNhlwZw-1; Mon, 14 Feb 2022 22:53:52 -0500
X-MC-Unique: kkuOlMGsPWGOW0DwNhlwZw-1
Received: by mail-pl1-f181.google.com with SMTP id z17so12099450plb.9
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 19:53:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=Qj3Zp1dTWHteTOOyJGoyOkUwz5z8kJlfmAdI770tqlw=;
	b=JLNBrE/W1NhoCZNWb2Kd3GcgUhmDZH/YYveht66jvIBNgkXlnORLCVYfPgVtPIhbfh
	xR2X+n01/ivoLRl4K5QaHHhWs0HjchqWEKviVGCYx0W4EkEOB5tyVDjG4LZWttwyBM86
	ZQTs1Iu0iPxQdQZ6Oxu9Pks1/49+qaXanqdqITbF9hA6mYnb9LBh6z2WMI3akU04/wYM
	G2iGCfwxUVz/V+7hE7T+j4DXRDSafmtAXCxjLuMM6w248sM5AEfNNgsaQPjELKN1bGC2
	+v+c6sg3Ek8B7Il9kliNAk5CbypedL6zHX2kYoGKxdrQBwQw3jj40NDM2Is8W6/UKZnf
	joMQ==
X-Gm-Message-State: AOAM530PAtMpNksj/BvWPTY/Xibcr4RBqkPGY/g4rBTT9en/V9E1WZdk
	OJRqTyh/ks9RyRQgV+X1Xhtf4y0SYhjHuA==
X-Google-Smtp-Source: ABdhPJyzUyZGeNlZSGDm/QyJ6/KoZjZ9v52u5/vNRCvNZ//5AbXJAwyq8D3KxoTxM+eXiv4+VLVKFA==
X-Received: by 2002:a17:902:bf4a:: with SMTP id
	u10mr2171626pls.113.1644897230505; 
	Mon, 14 Feb 2022 19:53:50 -0800 (PST)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id
	w2sm21420565pfb.139.2022.02.14.19.53.48
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Feb 2022 19:53:49 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: How do you customize the way punctuations are pronounced in Orca?
In-Reply-To: <CABKqQvHSmTtcy54yn1=fG+tJ_Lx2qEKX7R16tyj+KYh4L9U3aA@mail.gmail.com>
Date: Mon, 14 Feb 2022 19:53:46 -0800
Message-Id: <2F76A709-C0CD-4631-8037-BABB5ADE786B@cfcl.com>
References: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
	<f8278111-3fc6-107d-d5fb-8f85587232c8@gmail.com>
	<CABKqQvFFkhtQg1y37tFVfWEogVi4=eQ5uTT4VYAGDNGViMF-Gg@mail.gmail.com>
	<20220214.153145.899.28@192.168.1.100>
	<CAO2sX30a0b3abFF-gn8m3sCFWcg6i5RQRB6P-o_+9d4FMaaV3g@mail.gmail.com>
	<51BFC8C1-7D2A-48A3-A4D4-D513CE92C5AC@cfcl.com>
	<CABKqQvHSmTtcy54yn1=fG+tJ_Lx2qEKX7R16tyj+KYh4L9U3aA@mail.gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21F3rsdI012957
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Feb 14, 2022, at 18:22, Amanda[0] wrote:
> 
> Any suggestions for monosyllabic replacements for ':' (colon) and ';'
> (semicolon)?

Perhaps "coal" and "sem"?  That said, I'm not sure about the value of going from two syllables to one.  In fact, I'd just use "colon" and "semi".

- Rich Morin


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

