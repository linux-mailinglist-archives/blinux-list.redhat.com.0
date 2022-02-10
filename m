Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8098F4B16C0
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 21:12:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644523922;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=z9CJnaUhyjjIPK1IbuKycHpGlfqs2WCC1NDJ+BTbzIY=;
	b=Y6I/3GBDqLWRToUBn+bUn59spvYDDVBuvim8m4rypuq5t3BR5hEwLjZbL7QXO2s3bfTnLo
	vRe7hQte4/oLXaizctz1TkL0R6qcGikelqQFtFUp07hBxbwL0yjc23u8XhWghO4Zj/YA8X
	EpBNqB/h4itashC/XDkWXRgJnvCGJ9c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-151-DlHxKduGNNKxzMStcWGT0Q-1; Thu, 10 Feb 2022 15:11:59 -0500
X-MC-Unique: DlHxKduGNNKxzMStcWGT0Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA0891091DA0;
	Thu, 10 Feb 2022 20:11:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 198FE6AB88;
	Thu, 10 Feb 2022 20:11:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9E0DD18095C9;
	Thu, 10 Feb 2022 20:11:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21AKBk8T004575 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 15:11:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BB5802166BD9; Thu, 10 Feb 2022 20:11:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B63032166BB3
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 20:11:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25DF780088A
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 20:11:41 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-519-XP_xTfQxNvao5MhF8P3Iwg-1; Thu, 10 Feb 2022 15:11:39 -0500
X-MC-Unique: XP_xTfQxNvao5MhF8P3Iwg-1
Received: by mail-qt1-f171.google.com with SMTP id e16so6635637qtq.6
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 12:11:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=mzGbNY3seao16QBgUWEPCvb1PaTPY1otibnkcU9LQ9k=;
	b=53U625NToQHvZ6vgb316BIIf7e81fIcdAOIq2OvkfDnaaPWIf9j9SWui7Uo2sA8gpq
	z10A7sWMEsUts0tiGWSAwC6GxfnwvCEQrmjlfk7iGMt9fd1Zcs8dyRhkhLvXv11hHorn
	WHhCL78/272uvDggnr6Myr9erHlPIQkdQ+GFmEIKCZCBLQv3SNC+ylGtEakpRRPGNTCe
	7s//He8xz/Mc/nRgJOzyq0/7mB8mjpuRxPgrpEp7euJ7wpmmvub0dKaBR6rNhF7JQnoa
	Ri42leBX+sgKsM9SlKkfKeLIMcRNKJZNuluOVf/UiXI+qvbYf1ttHvS9q0+dNMBN91BS
	e8VQ==
X-Gm-Message-State: AOAM531cjCrhy9mV4+EaAWraNldnJKyViGGlzQitLyeujrknhTht5Pkp
	kbGQc1fsQ4jDRekZ20YQyiJMaxs+km9Seg==
X-Google-Smtp-Source: ABdhPJyonKgx6V7oV3ImyXrvb5MJUF1pQ0G2ASZ5UwHGby7PShveP6aTrYALXz6Vd59mlM/Nn41UKA==
X-Received: by 2002:ac8:5bd0:: with SMTP id b16mr5982086qtb.547.1644523898821; 
	Thu, 10 Feb 2022 12:11:38 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	o13sm11802462qtx.22.2022.02.10.12.11.38 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 10 Feb 2022 12:11:38 -0800 (PST)
Message-ID: <525932f0-fb78-031a-274e-e4536c102429@gmail.com>
Date: Thu, 10 Feb 2022 15:11:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Coqui TTS has blew my mind!
To: blinux-list@redhat.com
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
	<313791f3-8549-681d-52d3-a3eea4621ba2@gmail.com>
	<CAO2sX30hbz93wap3DHx=7pAb9M5r7S8hXG7zvWGzjeJ9nmHpGw@mail.gmail.com>
In-Reply-To: <CAO2sX30hbz93wap3DHx=7pAb9M5r7S8hXG7zvWGzjeJ9nmHpGw@mail.gmail.com>
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

V2VsbCwgSSBqdXN0IGNhbGwgaXQgYSBmYWxsYmFjayBsaW5rIGJlY2F1c2UgdGhpcyBpcyB3aGF0
IGl0IGtpbmRhIGRvZXMuIApJZiBhIGJyb3dzZXIgZG9lc24ndCBzdXBwb3J0IHRoZSBIVE1MNSBh
dWRpbyB0YWcsIGFuZCBieSAyMDIyIHRoZXkgYWxsIApzaG91bGQsIG15IGNvZGUgZmFsbHMgYmFj
ayB0byBkaXNwbGF5aW5nIGxpbmtzIHRoYXQgY2FuIGJlIGNsaWNrZWQgdG8gCmRvd25sb2FkIHRo
ZSBzZWxlY3RlZCB0aXRsZS4gLiBTbyB0aGlzIGlzIGFuIGV4YW1wbGUgb2YgdGhlIEhUTUw1IGF1
ZGlvIAp0YWcgdGhhdCBJIHVzZSB3aGVuZXZlciBJIHB1dCBhIG5ldyBzb25nIG9yIHJlY29yZGlu
ZyB1cCBvbiBteSB3ZWJzaXRlCgo8YXVkaW8KIMKgwqAgwqB0aXRsZT0iU29tZXRoaW5nIEludGVy
ZXN0aW5nIEhlcmUiCiDCoMKgIMKgY29udHJvbHM9ImNvbnRyb2xzIj4KIMKgwqAgwqA8c291cmNl
IHNyYz0iL211c2ljL0t5bGUlMjAtJTIwU29tZXRoaW5nJTIwSW50ZXJlc3RpbmclMjBIZXJlLm9w
dXMiIAp0eXBlPSJhdWRpby9vZ2c7IGNvZGVjcz1vcHVzIiAvPgogwqDCoCDCoDxzb3VyY2Ugc3Jj
PSIvbXVzaWMvS3lsZSUyMC0lMjBTb21ldGhpbmclMjBJbnRlcmVzdGluZyUyMEhlcmUub2dnIiAK
dHlwZT0iYXVkaW8vb2dnOyBjb2RlY3M9dm9yYmlzIiAvPgogwqDCoMKgIFNvbWV0aGluZyBJbnRl
cmVzdGluZyBIZXJlCiDCoMKgIMKgPGEgCmhyZWY9Ii9tdXNpYy9LeWxlJTIwLSUyMFNvbWV0aGlu
ZyUyMEludGVyZXN0aW5nJTIwSGVyZS5vcHVzIj45NmticHMgCk9wdXM8L2E+IHwKIMKgwqAgwqA8
YSBocmVmPSIvbXVzaWMvS3lsZSUyMC0lMjBTb21ldGhpbmclMjBJbnRlcmVzdGluZyUyMEhlcmUu
b2dnIj5xNCAKVm9yYmlzPC9hPgoKIMKgwqAgwqA8L2F1ZGlvPgoKCllvdSB3aWxsIGltbWVkaWF0
ZWx5IG5vdGljZSBzb21lIHRleHQsIGFsb25nIHdpdGggdHdvIDxhPiB0YWdzLCBlbWJlZGRlZCAK
aW4gdGhlIDxhdWRpbz4gdGFnIGJlbG93IHRoZSA8c291cmNlPiB0YWdzLiBUaGUgc3BlY2lmaWNh
dGlvbiBmb3IgdGhlIApIVE1MNSBhdWRpbyB0YWcgaW5kaWNhdGVzIHRoYXQgYW55dGhpbmcgYmV0
d2VlbiA8YXVkaW8+IGFuZCA8L2F1ZGlvPiAKdGhhdCBpcyBub3QgYSBzb3VyY2UgaXMgaWdub3Jl
ZCBieSBIVE1MNS1jb21wYXRpYmxlIGJyb3dzZXJzLiAKQ29udmVyc2VseSwgYnJvd3NlcnMgdGhh
dCBkbyBub3Qgc3VwcG9ydCBIVE1MNSBzaW1wbHkgaWdub3JlIHRoZSB0YWdzIAp0aGV5IGNhbid0
IHVuZGVyc3RhbmQsIHdoaWNoIGFyZSA8YXVkaW8+IC4uLiA8L2F1ZGlvPiBhbmQgdGhlIDxzb3Vy
Y2UgCnRhZ3MgaW4gYmV0d2VlbiwgYnV0IHRoZXkgZGlzcGxheSBhbnl0aGluZyB0aGV5IGRvIHVu
ZGVyc3RhbmQsIGluIHRoaXMgCmNhc2UsIHRoZSB0ZXh0IHRoYXQgaXMgdGhlIHRpdGxlIG9mIHRo
ZSBzb25nIGFuZCB0aGUgPGE+IHRhZ3MgdGhhdCBhcmUgCnRoZSBkb3dubG9hZCBsaW5rcywgaW4g
OTZLYi9zIG9wdXMgYW5kIFEzIE9nZyBWb3JiaXMgZm9ybWF0cy4gTm93IHRoYXQgCm1wMyBpcyBv
ZmZpY2lhbGx5IGZyZWUgb2YgYWxsIHBhdGVudHMsIEkgbmVlZCB0byByZXZpc2l0IHRoaXMgY29k
ZSBhbmQgCmFkZCBtcDMgc3RyZWFtcyBhbmQgZG93bmxvYWRzIHRvIHRoaXMgY29kZSBhcyB3ZWxs
LCBzbyB0aGF0IEkgY2FuIApvZmZpY2lhbGx5IHN1cHBvcnQgbW9zdCBmcmVlIGxvc3N5IGNvZGVj
cyBkZXBlbmRpbmcgb24gd2hhdCB0aGUgZW5kIHVzZXIgCmhhcyBhdmFpbGFibGUsIGFzIEkgY2Fu
IGJlIGZhaXJseSBjZXJ0YWluIHRoYXQgbmVhcmx5IGFsbCB2aXNpdG9ycyB0byBteSAKd2Vic2l0
ZSB3aWxsIGhhdmUgYXQgbGVhc3Qgb3B1cywgdm9yYmlzIGFuZC9vciBtcDMgY29kZWNzIGF2YWls
YWJsZSB0byAKcGxheSBteSByZWNvcmRlZCB3b3JrLiBUaGUgdGhpbmcgdG8gbm90ZSBpcyB0aGF0
IGFueXRoaW5nIHRoYXQgYXBwZWFycyAKYmV0d2VlbiA8YXVkaW8+IGFuZCA8L2F1ZGlvIG9yIDx2
aWRlbz4gYW5kIDwvdmlkZW8+IHRoYXQgaXMgbm90IGEgc291cmNlIAp0YWcgaXMgaWdub3JlZCBi
eSBIVE1MNSBicm93c2VycywgYnV0IGlzIGRpc3BsYXllZCBieSBIVE1MNCBicm93c2Vycy4gSXQg
CmlzIGNvbnNpZGVyZWQgZmFsbGJhY2sgdGV4dCBiZWNhdXNlIHRoaXMgaXMgaXRzIGZ1bmN0aW9u
LiBJdCBpcyBhbHNvIAp3b3J0aCBub3RpbmcgaG93ZXZlciB0aGF0IGFsdGhvdWdoIGZhbGxiYWNr
IHRleHQgaXMgcGFydCBvZiB0aGUgPGF1ZGlvPiAKYW5kIDx2aWRlbz4gdGFnIHNwZWNpZmljYXRp
b25zLCBpdCBpcyBub3QgYXQgYWxsIHJlcXVpcmVkLCBlaXRoZXIgZm9yIAphY2Nlc3NpYmlsaXR5
IG9yIGZvciB1c2FiaWxpdHkuIEkganVzdCBhZGRlZCB0aGlzIGZhbGxiYWNrIHRleHQgCmluY2x1
ZGluZyB0aGUgZG93bmxvYWQgbGlua3MganVzdCBhcyBJIGFkZGVkIG11bHRpcGxlIGNvZGVjIHNv
dXJjZXMsIHNvIAp0aGF0IGFzIG1hbnkgcGVvcGxlIGFzIHBvc3NpYmxlIHdvdWxkIGJlIGFibGUg
dG8gc3RyZWFtIGFuZC9vciBkb3dubG9hZCAKbXkgcmVjb3JkaW5ncy4gQWdhaW4sIGl0IHdhcyBh
IHBlcnNvbmFsIGRlY2lzaW9uLCBub3QgYSByZXF1aXJlbWVudCBvciAKZXZlbiBhIGd1aWRlbGlu
ZSBzdWdnZXN0ZWQgb3IgaW1wb3NlZCBieSBhbnkgc3RhbmRhcmRzIGJvZHkuIEJ1dCBJIGRvIApo
b3BlIHRoaXMgZXhwbGFpbnMgd2hhdCBmYWxsYmFjayB0ZXh0IGlzLCBvciBmYWxsYmFjayBsaW5r
cywgdGhlaXIgdXNhZ2UgCmFuZCBiZW5lZml0cywgaG93IHRoaXMgY2FuIGJlIGFwcGxpZWQsIGFu
ZCBqdXN0IGhvdyBlYXN5IGl0IGFjdHVhbGx5IGlzIAp0byBhcHBseSBzdWNoIGZhbGxiYWNrIEhU
TUwgdG8gZXhpc3Rpbmcgc3RhbmRhcmQgcGxheWVyIGNvZGUuCgp+S3lsZQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

