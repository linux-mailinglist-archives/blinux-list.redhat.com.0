Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 941FF457347
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 17:41:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637340114;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DhwZICJ1B2ukLueRB+YYzQR+cR7T1EE29CUcthH6LSE=;
	b=KX+Cq/YdLVyazcduBRvzPP0AFMb2E9dPBAGuvR3m/7TX4kqW50wqiUya6pX5HYA7Dn81vW
	7t60W0pmRoRDihq3LU98j6E4UctmtioUK59BBxbehreshSS/RU7z7sOy8dHrZn369gZBS7
	WVrRpOrUmtgC7h3KbMEvRPNGRRYJXNo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-307-PcnU4VCgOr29cf03F3m6TA-1; Fri, 19 Nov 2021 11:41:52 -0500
X-MC-Unique: PcnU4VCgOr29cf03F3m6TA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB045101AFC4;
	Fri, 19 Nov 2021 16:41:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C293560657;
	Fri, 19 Nov 2021 16:41:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E7C4F1832E81;
	Fri, 19 Nov 2021 16:41:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJGfgxW025672 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 11:41:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BC36B2166B3F; Fri, 19 Nov 2021 16:41:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6C0B2166B2D
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 16:41:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AD028802E5E
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 16:41:39 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-240-AV2spqDUNbK5dBc9EvZEVQ-1; Fri, 19 Nov 2021 11:41:38 -0500
X-MC-Unique: AV2spqDUNbK5dBc9EvZEVQ-1
Received: by mail-qv1-f44.google.com with SMTP id jo22so7447556qvb.13
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 08:41:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=/1ol2pCo2+G/Owl34MxsLD9zH7/endBYv+RJJCUGkZ4=;
	b=Z4uoFRaBPm3bsveDiufNCHmI11J7oV8vMjVROAk0pQZCl25mDha5vQzmg4prF5fmnC
	YHnD1T230zvSuYCKloD5FIlpPRRGzmOM/cVQWugbRcE8arC6lGM5U2TPSBF9lLP5RC+n
	PYUMfBf+3EoWwoVyb907cFdTQvxF/LohxN1u3GATCpCJKL4D5K64isC49wa9FnYcMBDa
	6BJhNU/iqFfeHSXYbAhb9gesGTTzS2eRy6ZE5XArfjOs/gjBgEAU5ET1kab3K3ym8lgt
	so5kosupFIxtInXfASXPzOA9QSrlqKJpAXfgX4spgzQ5kDD+N4GKyJg1WJQPFSwjVhkE
	q7dg==
X-Gm-Message-State: AOAM533i1hM6lbU3CMS6Nny9aJsyrDxSgSl30zrMS2nYH3RWyeIgEpcu
	mEqLr+Df+/4ipYVaDp5NDad/KQuKLHmHfg==
X-Google-Smtp-Source: ABdhPJyFuTM/f//cs6kFZ1j97vC5CegtXavHdm9XWdUXrRrnAhQVyjb4+6Qf9Bt+Uk6Bamdjd6ZsLw==
X-Received: by 2002:a05:6214:e47:: with SMTP id
	o7mr77111313qvc.61.1637340097375; 
	Fri, 19 Nov 2021 08:41:37 -0800 (PST)
Received: from ?IPv6:2601:192:4c80:1420:b6ab:7cee:1524:2908?
	([2601:192:4c80:1420:b6ab:7cee:1524:2908])
	by smtp.gmail.com with ESMTPSA id c7sm176076qtc.32.2021.11.19.08.41.36
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 08:41:37 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<fd55f0f8-262a-df02-b0cc-09a61ad3f5ee@googlemail.com>
Message-ID: <e7a5e2a8-ae3d-296f-c910-acc0df8d2d92@gmail.com>
Date: Fri, 19 Nov 2021 11:41:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.14.0
MIME-Version: 1.0
In-Reply-To: <fd55f0f8-262a-df02-b0cc-09a61ad3f5ee@googlemail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hhdCdzIG1vcmUsIGl0J3MgYmFzZWQgb24gdGhlIGxvbmctc3RhYmxlIFVidW50dS7CoAoKCi1E
YXZlwqAgSC4KCgoKT24gMTEvMTkvMjEgMTE6MzggQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4gaXQgaXMgdmVyeSBzaW1wbGUuIEkgbG92ZSBNaW50IGJlY2F1
c2UgdGhlcmUgaXMgbm8gc25hcCBhY3RpdmF0ZWQKPiB3aGljaCBJIGRvbid0IGxpa2UuIE9uZSBj
YW4gc2F5OiBNaW50IGlzIGFuIFVidW50dSB3aXRob3V1dCBzbmFwLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

