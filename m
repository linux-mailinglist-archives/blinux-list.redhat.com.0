Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E165494271
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jan 2022 22:21:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642627299;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HG8zDYBFI56xUyMRf8OsJipzmm+XkL9dJCr61/Uv384=;
	b=ZNHcpfalEpueuP0QWEdD3r0y3N/3qsRA6iVaTEfi/KtpmCQAQ+JmsBgpk+blQ76QnQ2p1u
	yl+/mu3ncsJFqdNVc2CvFt0CBNXu7rBi0WhSzkPC8LJwSvRyjUZYZYWpVnbyJhhhqEmxqn
	MXjHJuieGOSEx7jdtJzhmdnMGgW47bg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-663-LBtnN50FNICXtbxzSyJ8YA-1; Wed, 19 Jan 2022 16:21:36 -0500
X-MC-Unique: LBtnN50FNICXtbxzSyJ8YA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9611B84BA50;
	Wed, 19 Jan 2022 21:21:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D262B18B1;
	Wed, 19 Jan 2022 21:21:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 367D94BB7C;
	Wed, 19 Jan 2022 21:21:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20JLLBs2029808 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 16:21:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1B01D1121335; Wed, 19 Jan 2022 21:21:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 16F631121334
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 21:21:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F2199101A52D
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 21:21:07 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-108-HlM4nmA8NE6Mim9O7l8yvw-1; Wed, 19 Jan 2022 16:21:06 -0500
X-MC-Unique: HlM4nmA8NE6Mim9O7l8yvw-1
Received: by mail-oi1-f172.google.com with SMTP id s127so6346893oig.2
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 13:21:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
	:subject:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=q1U6KqJjecacAexsvb3lGokginCMyfgBFcr8uuK53qE=;
	b=12clNot1TvULJ6q8GgcKdTWi7skC0LOsUNR5aPpk+Rwl1jUwYnUjqqhiTfYF5LR5Mw
	TESeI7ZiX2LAOHQEfVCD2/GEQZb0SaoLI14mLzk6ny2EdL3LdpiMFfYKnM6jFreDYeJf
	cEf1u9yT1j5fU7rV/QM1Sq/9vQlVjG4ZSjAh5OCpK/zwycJFQyGi5cAdfOWSYV59xl3R
	VxeFT3A8ADJhjjFy1rcgEcCQFDioeFXPunqJVUwgPjwhCqr+XR06tbwuMkoH2w01/Oz2
	/BwcgtcTm1B8WuecNySwAQdhlj162LWg0V+Vwt2Y/wJMU+SoTm2NiSiIkAT/qbOQdWs8
	o2uQ==
X-Gm-Message-State: AOAM531av5LWB7kul19tFQt24N2z54e9128fMyklsopbuZw2B/20WQlF
	6wSHGhYKpuQb+Rq5n4oUtQ2eCs7PmZk=
X-Google-Smtp-Source: ABdhPJzxoIl1fWTxJPjvcsQBCjqO5mxxVCrNjE7UC5sE2y0w66bf3scU0dyOFIXBnPtqB2pEO6mMmQ==
X-Received: by 2002:a05:6808:297:: with SMTP id
	z23mr4885381oic.68.1642627265200; 
	Wed, 19 Jan 2022 13:21:05 -0800 (PST)
Received: from ?IPV6:2600:1700:9434:2a00:9182:3ed4:8638:ac6f?
	([2600:1700:9434:2a00:9182:3ed4:8638:ac6f])
	by smtp.gmail.com with ESMTPSA id p18sm481810otk.51.2022.01.19.13.21.04
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 19 Jan 2022 13:21:04 -0800 (PST)
Message-ID: <b107248e-80c0-d787-ece0-d631987a9784@gmail.com>
Date: Wed, 19 Jan 2022 15:21:05 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.1
Subject: Re: Getting Ready For linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
	<CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
	<6ce8ddec-b07a-7012-0b61-4838c702c71b@slint.fr>
	<CAO2sX30mT2TyBAvR4h-5Gvi45L20d+TZ8NQ97N3Ed=0ku2J6JA@mail.gmail.com>
	<7fd76ae5-77b0-fdb1-83f4-62cf792cce90@gmail.com>
	<68475725-ba85-b23a-8e26-8693a73fac75@slint.fr>
In-Reply-To: <68475725-ba85-b23a-8e26-8693a73fac75@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

VGhhbmsgeW91IERpZGllci7CoCBBbmQgdGhhbmsgeW91IGZvciB0aGUgYWRkcmVzcyB0byB0aGUg
aW5zdHJ1Y3Rpb25zLsKgIApJJ20gZ29pbmcgdG8gdHJ5IHRvIGJ1aWxkIGEgc3lzdGVtIG9uIGFu
IGV4dGVybmFsIFVTQiBkcml2ZS7CoCBJJ2xsIGJlIAp1c2luZyBhIHdpbmRvd3MgMTAgbWFjaGlu
ZSB0byBkbyB0aGUgd29yay4gTm93IEkganVzdCBuZWVkIHRvIG1ha2UgaXQgCmJvb3QgZnJvbSBV
U0Igc3RpY2suCgoKSG93YXJkCgpPbiAxLzE5LzIwMjIgMTI6MDAgUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGkgSG93YXJkLAo+Cj4gdGhlIFNsaW50IFVT
QiBzdGljayBjb250YWlucyBhbGwgeW91IG5lZWQgdG8gaW5zdGFsbCBTbGludCwgbm90IGFuIGFs
cmVhZHkKPiBpbnN0YWxsZWQgc3lzdGVtLgo+Cj4gSW5zdHJ1Y3Rpb25zIGhlcmU6ICBodHRwczov
L3NsaW50LmZyL2RvYy9IYW5kQm9vay5odG1sI19zbGludF9pbnN0YWxsYXRpb24KPgo+IEkgc3Vn
Z2VzdCB0aGF0IHlvdSBjaG9vc2UgdGhlIEF1dG8gaW5zdGFsbGF0aW9uIG1vZGUsIGVhc2llciBm
b3IgYmVnaW5uZXJzLgo+Cj4gQ2hlZXJzLAo+IERpZGllcgo+Cj4gTGUgMTkvMDEvMjAyMiDDoCAx
ODoyNCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBU
aGFua3MgdG8gYWxsIHdobyBoYXZlIG1hZGUgc3VnZ2VzdGlvbnMuCj4+Cj4+IEZpcnN0OiBJIGRv
d25sb2FkZWQgdWJ1bnR1IGFuZCBmbGFzaGVkIGl0IHRvIGEgVVNCIHN0aWNrLgo+Pgo+PiBOZXh0
OiBJIGdvdCBteSBtaW5kIGNoYW5nZWQgKHByb2JhYmx5IGZvciB0aGUgbmJldHRlciksIHNvIEkg
ZG93bmxvYWRlZCBTbGluawo+PiBhbmQgZmxhc2hlZCBpdCB0byBhbm90aGVyIFVTQiBzdGljay4K
Pj4KPj4gTm93IEkgaGF2ZSB0d28gVVNCIHN0aWNrcyB0aGF0IGVhY2ggY29udGFpbiBhIHZlcnNp
b24gb2YgbGludXguIEFzc3VtaW5nIEknbQo+PiBnb25uYSBnbyB3aXRoIFNsaW5udCwgZG8gSSBu
b3cgaGF2ZSBhIGJvb3RhYmxlIHdvcmtpbmcgY29weSBvZiBTbGludD/CoCBPciBpcwo+PiB0aGVy
ZSBtb3JlIHRvIGRvIGJlZm9yZSBJJ20gYWN0dWFsbHkgcnVubmluZyBsaW51eD8KPj4KPj4gVGhh
bmtzIHN0aWxsIG1vcmUuCj4+Cj4+IEhvd2FyZAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dA==

