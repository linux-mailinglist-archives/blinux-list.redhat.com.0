Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7C3083C8643
	for <lists+blinux-list@lfdr.de>; Wed, 14 Jul 2021 16:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626273699;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tKLILxFVh2Oq3yEUWV2ytL5EUu8X3A5NUZwoKMf04Gw=;
	b=Db8dkICOfNG8lH0pbgnY33whaKIRekM+G5vtoK+IFE56b+LNYBiv0cl/r6ZkTYw77nzACz
	nXFn3xw913kCsJD8bXytb7sRF18zX2OZ4ZxcRJiM2dAhYTLymYfb1JIbb2QQR4LHDYA8UM
	E4UDBCPmQTh/ukD4YVIOx2j7OWvo6LU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-449-Sw7MiCIiOoyLLQ1SiQfFJw-1; Wed, 14 Jul 2021 10:41:37 -0400
X-MC-Unique: Sw7MiCIiOoyLLQ1SiQfFJw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6F3EE19611A1;
	Wed, 14 Jul 2021 14:41:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3F5A5C1D1;
	Wed, 14 Jul 2021 14:41:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 425671809C99;
	Wed, 14 Jul 2021 14:41:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16EEfN76006766 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 14 Jul 2021 10:41:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4A3C421EE569; Wed, 14 Jul 2021 14:41:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4496521EE56A
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 14:41:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 070AD801E6D
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 14:41:20 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-283-dku8Kqw4OyeE5zk_RrLt-g-1; Wed, 14 Jul 2021 10:41:17 -0400
X-MC-Unique: dku8Kqw4OyeE5zk_RrLt-g-1
Received: by mail-lj1-f178.google.com with SMTP id q4so3698112ljp.13
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 07:41:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=zwfOmxhIoRtsV7AuNNjCEXWkl8kcENHNzdf/avjH+SY=;
	b=HzHmTZ0FYTHF+3Ep1Euns81DcVnQWvvAdmpoXWpqFhGPCAEr0LqB++/jUnz2v+OJ7O
	NIhU9En9gBQfx4VAU5vQTp8EtYRC4paD3MFxzC/wjP5vO0oMZB7ntTILK310U8Y3Eyz3
	n8p+KU5IJnas7yCQXnOEwxxuxWRtbmO0PyFa5i9O4obZbjj6ZURVhE7Dun8OEj9MVLQH
	AhrewX5mu9qTIpMj2PdCrOKJOTeJ7rN01j8gPRclWu5jJPAb6MockESzmmqui6Ga89Bi
	74DUYyX4Ik7D29/y4J5LsHGhfouVWuyO6SpWvgtrQcjSfUc5Lfr0nfIKvPFCeldPXa+g
	2Wpw==
X-Gm-Message-State: AOAM5310vvhMB9GJvvWS4J5fB2rLxBsNx4CTJpm3FmeX0bcbSToQTcbW
	zCnyHoMWeZp/QNFY7Nz9fMTS899jL/cxaw==
X-Google-Smtp-Source: ABdhPJwGSdj0lQl53rODGViY9LVmqYbwkIRLJA3D1bEuFqxpF/8ZF9pxPEn2huLfZHAvBPu/kF0MTw==
X-Received: by 2002:a2e:9d02:: with SMTP id t2mr9343472lji.404.1626273673512; 
	Wed, 14 Jul 2021 07:41:13 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id c9sm248489ljr.104.2021.07.14.07.41.13
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 14 Jul 2021 07:41:13 -0700 (PDT)
Subject: Re: Arch Linux post installation issue
To: blinux-list@redhat.com
References: <005d101d-0a46-3f29-c74e-1dfb27441dc5@gmail.com>
	<CAO2sX33O78t=zZVJpAs5ci2_Tcipf3=ChohMLS6VVa2QDbCezw@mail.gmail.com>
Message-ID: <50f3f161-0623-ae2e-5ae6-ed34851e8602@gmail.com>
Date: Wed, 14 Jul 2021 17:41:12 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX33O78t=zZVJpAs5ci2_Tcipf3=ChohMLS6VVa2QDbCezw@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MTQuMDcuMjAyMSAxNjo1MCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C4
0YjQtdGCOgo+IEknbSBub3QgZmFtaWxpYXIgd2l0aCBBcmNoLCBidXQgeW91IG1pZ2h0IHdhbnQg
dG8gZG91YmxlIGNoZWNrIHRoYXQKPgo+IHNwZWVjaC1kaXNwYXRjaGVyLWVzcGVhay1uZwo+Cj4g
aXMgaW5zdGFsbGVkLiBEZWJpYW4gbGlzdHMgaXQgYXMgYSByZWNvbW1lbmRlZCBwYWNrYWdlIGZv
cgo+IHNwZWVjaC1kaXNwYXRjaGVyLCBhbmQgSSB1bmRlcnN0YW5kIEFyY2ggaXMgYmlhc2VkIHRv
d2FyZHMgaW5zdGFsbGluZwo+IGxlc3MsIHNvIGl0J3MgcG9zc2libGUgdGhhdCBpbnN0YWxsaW5n
IHNwZWVjaC1kaXNwYXRjaGVyIGFuZCBlc3BlYWstbmcKPiBkaWRuJ3QgYXV0b21hdGljYWxseSBw
dWxsIGluIHRoZSBwbHVnaW4gdGhleSBuZWVkIHRvIGNvbW11bmljYXRlIHdpdGgKPiBlYWNoIG90
aGVyLgo+Cj4KYXJjaCBpbmNsdWRlcyBzZC1lc3BlYWstbmcgbW9kdWxlIGluIHNwZWFjaC1kZXNw
YXRjaGVyIHBhY2thZ2UuCgotLSAKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

