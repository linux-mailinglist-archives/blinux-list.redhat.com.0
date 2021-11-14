Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BEE44FC7B
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 00:44:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636933480;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ljmDfhsJqnYwEotq/JwufUauPdDVgZECLEDmi6aAZIc=;
	b=Saue3TWA96Q297H/BbNFWQKA/w5usbPuo0eTWC2vFP0gWewSV8hstD4CfBGhW41Mud8o+b
	avdP8nAwaFQkvwBT53UOSMOEkTKVbIsXuNveHDp4+QxJylMk3B7m2o5Rpc2S3i1t9mAsvS
	/W/dnNaAsAF+9eR5KOUnwHTQGD0VEIw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-53-ZFFiL2nKOESJv4eZzcWeaA-1; Sun, 14 Nov 2021 18:44:38 -0500
X-MC-Unique: ZFFiL2nKOESJv4eZzcWeaA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E90D3802B7A;
	Sun, 14 Nov 2021 23:44:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D0EBBADCD;
	Sun, 14 Nov 2021 23:44:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D468E18199EE;
	Sun, 14 Nov 2021 23:44:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AENiTuT007087 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 18:44:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6EAB72026D46; Sun, 14 Nov 2021 23:44:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A0522026D07
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 23:44:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9ED4C85A5A8
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 23:44:26 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-343-N5VVQPZNOEC2e9Dh7O3_-Q-1; Sun, 14 Nov 2021 18:44:24 -0500
X-MC-Unique: N5VVQPZNOEC2e9Dh7O3_-Q-1
Received: by mail-qt1-f177.google.com with SMTP id j17so14046963qtx.2
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 15:44:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=ryhl71mvOoDj+afK6Edl+BHv0KDJN7gqz7mDr/79QkY=;
	b=qmHIET2jiO4WvwQvziSUQLjWK07tqocFnyS655L5zyavStiqjHvu23De0VL/LBHH9D
	8HfxVXAOCV78A+aV+2qgrQfjErH/dtM7nhg25CMuZ0wAKEpBGa7bU3VAUWziqqYEfdyY
	2j5/Db0wBZH44AzbY1eiDM5eAarIwT+yj7e2B6OXmNHsK/KlO/oa1BxZ3MvWeMmN1B0w
	W2e13fnDa+0FJjnA3QCpn3gqlglkfGG+v1+RRu9PmDve1QuD7/b0358Nprs/su3YT7Ai
	ejv+YVQjJQLf0MBKm0SnCotaGAHqJ4Ee2y+QuEapn1717LEDPTB67/WTO678GAyy76Nl
	v7eQ==
X-Gm-Message-State: AOAM5321DosAJSvX6Pz+paixbunbhBKFC3YiOUilUc0YcwMfOnJY+JBS
	P+ADo8hJwNUKMBgwVYASmwsqC9TsB3PGpQ==
X-Google-Smtp-Source: ABdhPJzb8EWLAWH2QwkaU3PQJ0xMUDC6RdYeZLrFFIBiegv++GYhH4YNn6V5uNnFjHAkUKAzMvKvRA==
X-Received: by 2002:a05:622a:5cd:: with SMTP id
	d13mr36107132qtb.361.1636933464147; 
	Sun, 14 Nov 2021 15:44:24 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::d8d3? ([2601:192:4c80:1420::d8d3])
	by smtp.gmail.com with ESMTPSA id
	n20sm2620816qkp.65.2021.11.14.15.44.23 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 15:44:23 -0800 (PST)
Message-ID: <f4000503-df02-93a7-d50e-825ac3e2a0f8@gmail.com>
Date: Sun, 14 Nov 2021 18:44:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<c1a9cbd4-a9a1-910f-0244-049cea5edc74@gmail.com>
In-Reply-To: <c1a9cbd4-a9a1-910f-0244-049cea5edc74@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBjbG9zZWTCoCB0aG9zZSB0YWJzLCBpbiB0LWJpcmQsIGEgbG9uZyB0aW1lIGFnby7CoCBBbGwg
SSBzZWUgaXMgbXkgbWFpbCAKZm9sZGVycy4KCk9uIDExLzE0LzIxIDE4OjQwLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Cj4gSSB3aWxsIHBsYXkgd2l0aCBpdCBh
bmQgc2VlIGlmIEkgY291bGQgZmlndXJlIGl0IG91dC4gSWYgSSBjb3VsZCBoaWRlIAo+IHRoZSBj
aGF0IGFuZCB0aGUgY2FsZW5kYXIgZnJvbSB0aHVuZGVyYmlyZCBJIHdvdWxkIG5vdCB0cnkgYW55
IG90aGVyIAo+IGVtYWlsIGFwcGxpY2F0aW9ucy4KPgo+Cj4gQ2hlZXJzLAo+Cj4gSWJyYWhpbQo+
Cj4gT24gMTEvMTQvMjEgNjoyOCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPj4gV2hlbiBpbiB0aGUgY29uZmlndXJhdGlvbiBzY3JlZW4sIHVzZSB0aGUgJ3cn
IGNvbW1hbmQgdG8gc2VhcmNoIGZvciAKPj4gdGhlIHN0cmluZyAic2hvdy1jdXJzb3IiLCBvciB0
aGUgbGlrZSwgYW5kIGhpdCAnc3BhY2UnIG9uIHRoYXQuwqAgT25jZSAKPj4gdGhlIGN1cnNvciBp
cyBzaG93aW5nLCB5b3Ugc2hvdWxkIGJlIGFibGUgdG8gaGVhciB3aGVyZSB5b3UgYXJlLiBJdCAK
Pj4gaXMgbGlrZSBjaGVja2JveGVzLsKgIFRoZXJlIHdpbGwgYmUgYW4gJ3gnIGluIHRoZSBvbmVz
IHRoYXQgYXJlIHNlbGVjdGVkLgo+Pgo+Pgo+PiBZb3Ugd29uJ3QgZmluZCBhIGZpZWxkIGNhbGxl
ZCBpbWFwIHNlcnZlciwgYnV0IHlvdSB3aWxsIGZpbmQgdmFyaW91cyAKPj4gcGF0aHMsIGluY2x1
ZGluZyBvbmUgZm9yIGluYm94LsKgIFlvdSBoYXZlIHRvIGluY2x1ZGUgcG9ydCBudW1iZXJzIGFu
ZCAKPj4gcmVtb3RlIHBhdGhuYW1lcy7CoCBBbiBleGFtcGxlIGxpbmUgbWlnaHQgYmU6Cj4+Cj4+
Cj4+ICJpbmJveHBhdGg9e2RhaHVudEBpbWFwLmdvb2dsZS5jb206NDQzfWluYm94Igo+Pgo+Pgo+
PiBXaXRoIHlvdXIgZmF2b3JpdGUgc2VhcmNoIGVuZ2luZSwgbG9vayBmb3Igc29tZXRoaW5nIGxp
a2UgInBpbmUgCj4+IGdtYWlsIi4gVGhlcmUgYXJlIHNldmVyYWwgZXhhbXBsZSBmaWxlcyBvbiB0
aGUgbmV0LsKgIFRoZXNlIGZpbGVzIGFyZSAKPj4gaHVtYW4tcmVhZGFibGUgYW5kIGVkaXRhYmxl
LsKgIFJlbWVtYmVyLCB0aGUgZmlsZSBpbiBxdWVzdGlvbiBpcyAKPj4gY2FsbGVkICJ+Ly5waW5l
cmMiLsKgIElmIHlvdSB3YW50IHRvIGVkaXQgdGhpcyBmaWxlIHdpdGggYSBndWkgcHJvZ3JhbSAK
Pj4gbGlrZSBwbHVtYSwgdGhhdCB3aWxsIHdvcmsuwqAgSW4gb3JkZXIgdG8gaGF2ZSB5b3VyIGZp
bGUgbWFuYWdlciBzaG93IAo+PiB5b3UgdGhlIGZpbGVzIHdpdGggbmFtZXMgYmVnaW5uaW5nIHdp
dGggJy4nLCB1c2UgJ2N0cmwraCcsIGluIGEgZmlsZSAKPj4gbWFuYWdlciB3aW5kb3cuCj4+Cj4+
Cj4+Cj4+IEhUSCwKPj4KPj4KPj4KPj4gRGF2ZcKgIEh1bnTCoCA8a2ExY2V5QGdtYWlsLmNvbT4K
Pj4KPj4KPj4KPj4gT24gMTEvMTQvMjEgMTg6MTQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4+PiB0aGUgc210cCBzZXJ2ZXIgZXRjLiBUaGUgcHJvYmxlbSBpcyB0
aGF0IG1vdmluZyBpbnRvIHRoZXNlIGZpZWxkcyAKPj4+IHdpdGggdGhlIGFycm93cyBkb2VzIG5v
dCB3b3JrLiBJIGdldCBubyAKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

