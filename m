Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 225F147431F
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 14:00:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639486851;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UuJW8bU7AcP3WngDdfJ2VnTWulvkXDP87vMa9yrdzPs=;
	b=Y99EFRPVCxhPEu5IX0iQ4C4e56tewlqJzS8BQM8KdaMXelaP7QOAVvtUGBDYr/JR2tRl3y
	HRqbdfK7tS07owDAFt0QEIcmUx7xExcWdTgKlM/rSaP3QdZ1hAv5UrxFgvlrHJYLil12K8
	wMU9T0wgvjW5afiTGa1Hm97adS15zsg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-231-kp54D36oPdiE2BduEq-3Ag-1; Tue, 14 Dec 2021 08:00:47 -0500
X-MC-Unique: kp54D36oPdiE2BduEq-3Ag-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D25981023F4E;
	Tue, 14 Dec 2021 13:00:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B8CC2226E8;
	Tue, 14 Dec 2021 13:00:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0CE2618095C9;
	Tue, 14 Dec 2021 13:00:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BED01gC031335 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 08:00:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7455D2166B26; Tue, 14 Dec 2021 13:00:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F06B2166B25
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 12:59:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5ECB81064E6B
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 12:59:58 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-581-hReuq5rLN4u5KjqviKAa3g-1; Tue, 14 Dec 2021 07:59:55 -0500
X-MC-Unique: hReuq5rLN4u5KjqviKAa3g-1
Received: by mail-wm1-f45.google.com with SMTP id
	i8-20020a7bc948000000b0030db7b70b6bso16195689wml.1
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 04:59:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=iJKyiFypam4xbFcH/RD6XOs9ks0GyjdLIJ+5swSNdGM=;
	b=dwYc+xN7L4NXaFg6g+6rIN7J6m+AG8YSSgH2gP8ZWuqUe+Oii8jQvuQqgpu/CYQUUB
	M0uzpojaEZ13NNmAG48AGytxC7tNlGLcpM+KW1Sqf1wYjwQXG53DBrqqQ0YJekQ1FVyk
	A0qjYF+79X11qdIXouQTWc8O4LRJQPZwGYOrK/HHV41hVxt7nmnscKhN/XEH0+Gu5g7t
	X70gvMukD6wEcV6XidjEIV7tr4NJMuPSZ99rYgarjenF5RwPXemdWejzLietoKmtxV64
	7K5zFsJa9Uz4xJliDOeZAlh+/bVIpEh5emWz66Y/r0G9jgNFriMF5Q1Vm8zRpH9UzSd6
	X+Vg==
X-Gm-Message-State: AOAM531QiRIwpO71FM1/GwOG8rU6p2AUeAKyMSLm3MYH618RPdIZ6c1f
	8lnMKRbYJnxuP3xouQKSw1xOsQ7j4OyRWw==
X-Google-Smtp-Source: ABdhPJyAcxK/PSezeXOBcIJ9xexd5PGUP6QtYCcKRwNjw7GevLXBs8UiQWTJaKrAKIfn/0VhtaeBBA==
X-Received: by 2002:a05:600c:4f14:: with SMTP id
	l20mr45590486wmq.164.1639486793648; 
	Tue, 14 Dec 2021 04:59:53 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	b15sm18512280wri.62.2021.12.14.04.59.53 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 04:59:53 -0800 (PST)
Message-ID: <5b241b8a-802e-e3d8-d86b-a655dd0fea72@gmail.com>
Date: Tue, 14 Dec 2021 12:59:58 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
Subject: Re: Attempting a Jenux install, again.
To: blinux-list@redhat.com
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
	<70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
In-Reply-To: <70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

ZWxsIHRoZXJlJ3MgYSBoaXN0b3J5IG9mIHBvc3RzIGFzIGZhciBhcyBKZW51eCBicmVha2luZyB3
aXRoIHBlb3BsZSB3YXkgCm1vcmUgcXVhbGlmaWVkIHRoYW4gbWUgZGlnZ2luZyB0aHJvdWdoIHRo
ZSBjb2RlIGFuZCBoYXZpbmcgdGhpbmdzIGJyZWFrIApvbiB0aGVpciBpbnN0YWxscy4gSSd2ZSBw
ZXJzb25hbGx5IGhhZCBKZW51eCBjb3JydXB0IGEgZmxhc2ggZHJpdmUgdG8gCnRoZSBwb2ludCBp
dCdzIGEgZ2xvcmlmaWVkIHBhcHJ3ZWlnaHQgZHVlIHRvIHNoZW5hbmlnYW5zIHdpdGggd3JpdGlu
ZyB0byBpdC4KClRoYXQgYmVpbmcgc2FpZC4gTm93IEFyY2ggaXRzZWxmIGhhcyB0aGUgZ3VpZGVk
IG1vZGUgaW5zdGFsbGVyLCB3aGljaCBpcyAKcGVyZmVjdGx5IHVzZWFibGUgd2l0aCBlc3BlYWt1
cCBhbmQgdGhhdCBvbmNlIGluc3RhbGxlZCwgYXMgb2YgdGhpcyAKbW9udGggYXV0byBlbmFibGVz
IHNwZWVjaC9icmFpbGxlIGF0IHRoZSBlbmQgb2YgdGhlIGluc3RhbGwsIEknZCBhcmd1ZSAKQXJj
aCBhcmUgZG9pbmcgYSBiZXR0ZXIgam9iIGF0IG1ha2luZyB0aGVpciBzeXN0ZW1zIGFjY2Vzc2li
bGUqIHRoYW4gCnBlb3BsZSBhc3N1bWUgdGhvdWdoLiBJO2QgYWxzbyBzYXkgb2theSwgQXJjaCBo
YXMgYSBndWlkZWQgaW5zdGFsbGVyIAp0aGF0IHdvcmtzKiogYW5kIGlmIGJvb3RlZCB3aXRoIGFj
Y2Vzc2liaWxpdHkgb24sIGtlZXBzIHRob3NlIHNldHRpbmdzIAphbmQgZ2l2ZXMgeW91IGEgd29y
a2luZyAoYmFzZSwgbWluZCkgc3lzdGVtIG91dCBvZiB0aGUgYm94LgoKCiogUHJvdmlkZWQgeW91
IGluc3RhbGwgYWxzYS11dGlscy9lc3BlYWt1cCBhcyBwZXIgYSBub3JtYWwgYWNjZXNzaWJpbGl0
eSAKQXJjaCBpbnN0YWxsLiBUaGVyZSdzIGEgc3RlcCBpbiB0aGUgZ3VpZGVkIGluc3RhbGxlciB3
aGVyZSBpdCBhc2tzIGZvciAKZXh0cmEgcGFja2FnZXMsIHRoYXQncyB3aGVyZSB5b3UgcGx1ZyBh
bHNhLXV0aWxzL2VzcGVha3VwIGluLiAKZXNwZWFrdXAuc2VydmljZSBnZXRzIGF1dG8gZW5hYmxl
ZCBhdCB0aGUgZW5kIG9mIHRoZSBpbnN0YWxsIGFzIHBhcnQgb2YgCnRoZSBpbnN0YWxsZXIKCgoq
KiBXb3JrcywgYXMgbG9uZyBhcyB5b3UncmUgb2theSB3aXRoIGEgYmFzZSBpbnN0YWxsIGJ1dCBn
ZXR0aW5nIGEgREUgdXAgCmFuZCBydW5uaW5nIGlzbid0IHRoYXQgYmFkIHJlYWxseSBvbmNlIHlv
dSBkaWQgdGhlIGluc3RhbGwuIEkndmUgbm90IGdvdCAKdGhlIGRlc2t0b3Agb25lcyB0byB3b3Jr
IGN1cnJlbnRseSBidXQgc3RpbGwgcG9raW5nIGF0IGl0LiBJJ20gdGVtcHRlZCAKdG8gYWRkIGlu
IG9yY2Etc3BlZWNoLWRpc3BhdGNoZXIgYW5kIHNvIGZvcnRoIGludG8gdGhlIGV4dHJhIHBhY2th
Z2VzIHN0ZXAuCgoKYXQgdGhhdCBob3dldmVyLgoKCk9uIDEyLzE0LzIxIDEyOjQ2LCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpLAo+Cj4KPiBJIGRpZCB1c2Ug
dGhlIGxhdGVzdCBhcyBvZiBhYm91dCAxNSBob3VycyBhZ28uIEkgZGlkIGFsc28gdmVyaWZ5IHRo
ZSBpc28uCj4KPgo+IFRoZSBpc3N1ZSB0aGlzIHRpbWUgaXMgdGhhdCBhZnRlciBydW5uaW5nIHRo
ZSBpbnN0YWxsZXIgYW5kIHJlYm9vdGluZywgCj4gbm90aGluZyBzcG9rZS4gdGhlIHNlZWluZ0FJ
IG9uIHRoZSBpcGhvbmUgY291bGQgcmVhZCB0aGUgc2NyZWVuIGp1c3QgCj4gZmluZSwgYnV0IEkg
Y291bGRuJ3QKPgo+Cj4gTGFzdCB0aW1lIGl0IHdhcyBvcmNhIGluIE1hdGUgdGhhdCBkaWRuJ3Qg
d2FudCB0byBjb21lIG9uLCBubyBtYXR0ZXIgCj4gd2hhdCBJIGRvLgo+Cj4KPiBJIGZvdW5kIHRo
YXQgd2l0aCBKZW51eCwgbmV2ZXIgZXhwZWN0IHRoZSBzYW1lIHRoaW5nIHRvIGdvIHdyb25nIAo+
IHR3aWNlLCBob3dldmVyIHNvbWV0aGluZyB3aWxsIGJyZWFrLgo+Cj4KPiBXYXJtIHJlZ2FyZHMs
Cj4KPgo+IEJyYW5kdAo+Cj4gT24gMjAyMS8xMi8xNCAxNDozMSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSmVudXggZ2V0cyByZWd1bGFyIHVwZGF0ZXMgbGF0
ZXN0IGlzIDIwMjEuMTEuMTcgdW5sZXNzIHRoYXQgY2hhbmdlZCAKPj4gdG9kYXkuCj4+IERpZCB5
b3UgdmVyaWZ5IHlvdXIgaXNvIGRvd25sb2FkP8KgIElmIEkgZmluZCBhbiAuc2hhNTEyIGZpbGUg
ZmlsZSBmb3IgYW4KPj4gaXNvLCBJIHdvbid0IGluc3RhbGwgdGhlIGlzbyB3aXRob3V0IGZpcnN0
IHZlcmlmeWluZyBpdCB3aXRoIHRoZSAuc2hhNTEyCj4+IGZpbGUuwqAgU28gdHdvIHBvdGVudGlh
bCBwcm9ibGVtcyBub3QgdXNpbmcgY3VycmVudCBKZW51eCBpbnN0YWxsIGlzbyBvcgo+PiBmYWls
ZWQgdG8gdmVyaWZ5IGlzby7CoCBJZiB5b3UgZG9uJ3QgaGF2ZSB0aG9zZSB0d28gcHJvYmxlbXMs
IHBsZWFzZSAKPj4gd3JpdGUKPj4gZG5sLm5hc2hAZ21haWwuY29tIGFuZCBsZXQgaGltIGtub3cg
dGhlIHByb2JsZW0geW91IGVuY291bnRlcmVkIG9uIHlvdXIKPj4gaW5zdGFsbCBmYWlsLsKgIFRo
YXQgb25lIGlzIHRoZSBkZXZlbG9wZXIuCj4+Cj4+Cj4+IE9uIFR1ZSwgMTQgRGVjIDIwMjEsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Cj4+PiBIaSwKPj4+Cj4+
Pgo+Pj4gSmVudXggZmFpbGVkIG9uIG1lLCBhZ2Fpbi4gSSB0aGluayBJJ2xsIGdpdmUgaXQgYSBz
a2lwIGZvciBub3csIHRoYXQgCj4+PiBpcyB1bmxlc3MKPj4+IHRoZSBkZXYgYWN0dWFsbHkgZml4
ZXMgdGhlIHRoaW5nLgo+Pj4KPj4+Cj4+PiBJIGFtIG9uIEZlZG9yYSwgZm9yIG5vdywgYmVjYXVz
ZSBpdCB3YXMgdGhlIG5lYXJlc3QgVXNiIHN0aWNrIEkgCj4+PiBjb3VsZCBncmFiCj4+PiBxdWlj
a2x5Lgo+Pj4KPj4+Cj4+PiBJIG1pZ2h0IGp1c3QgZ2l2ZSB0aGUgdmFuaWxsYSBBcmNoIElTTyBh
bm90aGVyIGdvLiBXaHkgbm90Pwo+Pj4KPj4+IE9uIDIwMjEvMTIvMTQgMTM6MDUsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gwqDCoG9yIE1hbmphcm8gQXJj
aGl0ZWN0Lgo+Pj4+Cj4+Pj4gUGVyc29uYWxseS4gSSd2ZSBoYWQgc3VjY2VzcyB3aXRoIHRoZSB2
YW5pbGxhIEFyY2ggSVNPIGFuZCB0aGUgZ3VpZGVkCj4+Pj4gaW5zdGFsbGVyICh0aGUgYXJjaGlu
c3RhbGwgb25lKSwgSSBqdXN0IHNldCBpdCB0byBib290IHVwIHRhbGtpbmcsIAo+Pj4+IHdlbnQK
Pj4+PiB0aHJvdWdoIGl0IGFuZCBhZGRlZCBpbiBhbHNhLXV0aWxzL2VzcGVha3VwIGFuZCB0aGVu
IHB1dAo+Pj4+IHNwZWVjaC1kaXNwYXRjaGVyL09yY2Evdm9pY2VzIGFuZCBhIHdpbmRvdyBtYW5h
Z2VyIG9uIG9uY2UgdGhlIAo+Pj4+IHN5c3RlbSB3YXMKPj4+PiBpbnN0YWxsZWQuCj4+Pj4KPj4+
Pgo+Pj4+IEplbnV4IGhhcyBuZXZlciByZWFsbHkgd29ya2VkIGZvciBtZSBvbiBhIFZNIG9yIGJh
cmUgbWV0YWwgYXQgYWxsLCAKPj4+PiB3aGVyZWFzCj4+Pj4gdGhlIG9mZmljaWFsIGFyY2ggSVNP
IGlzIHdvcmtpbmcgcmF0aGVyIHdlbGwsIGFuZCBJIGR1bm5vIGlmIHRoZSAKPj4+PiBBcmNoaXRl
Y3QKPj4+PiBlZGl0aW9uIGlzIDM2LzY0IGJpdCBvciAzMmJpdCBvbmx5IG9yIDY0Yml0IG9ubHku
IEFkbWl0dGVkbHksIEkndmUgCj4+Pj4gZ290IGEKPj4+PiA2NGJpdCBVRUZJIHN5c3RlbSBzbyB0
aGUgb2ZmaWNpYWwgSVNvIHdvcmtzIGZsYXdsZXNzbHkgb24gaXQgCj4+Pj4gaG93ZXZlciwgYnV0
Cj4+Pj4gWU1NViBvbiB0aGF0IG9uZVllcywgYnV0IHlvdSBwcm9iYWJseSBkb24ndCB3YW50IHRv
IGhlYXIgaXQgaWYgeW91IAo+Pj4+IGFyZSBzZXQKPj4+PiBvbiB1c2luZyBKZW51eCBob3dldmVy
Lgo+Pj4+Cj4+Pj4gT24gMTIvMTQvMjEgMDk6MTgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4+Pj4+IEhpIGFsbCwKPj4+Pj4KPj4+Pj4gSSBkZWNpZGVkIHRvIGdp
dmUgSmVudXggYW5vdGhlciBnbywgbGFzdCB0aW1lLCBubyBtYXR0ZXIgd2hhdCBJIAo+Pj4+PiB0
cmllZCwgSQo+Pj4+PiBjb3VsZG4ndCBnZXQgb3JjYSB0byBjb21lIG9uIGFmdGVyIGxvZ2dpbmcg
aW4gdG8gdGhlIHN5c3RlbS4KPj4+Pj4KPj4+Pj4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkgYWR2aWNl
Pwo+Pj4+Pgo+Pj4+PiBBbHNvLCBpZiB0aGlzIGRvZXNuJ3Qgd29yayBvdXQsIGlzIHRoZXJlIGEg
Z3VpZGUgZm9yIGRvaW5nIGEgTWFuamFybwo+Pj4+PiBhcmNoaXRlY3QgaW5zdGFsbD8gIk1hbmph
cm8gVGFsa2luZyIgZ290IHVwZGF0ZWQgYSBsaXR0bGUgd2hpbGUgCj4+Pj4+IGFnbywgYW5kCj4+
Pj4+IGlmLCBhcyBJIHNhaWQsIEplbnV4IGRvZXNuJ3Qgd29yayBvdXQsIEknZCBsaWtlIHRvIGdp
dmUgdGhhdCBvbmUgYSAKPj4+Pj4gZ28uCj4+Pj4+Cj4+Pj4+IFRoYW5rcyBzbyBsb25nLgo+Pj4+
Pgo+Pj4+PiBXYXJtIHJlZ2FyZHMsCj4+Pj4+Cj4+Pj4+IEJyYW5kdCBTdGVlbmthbXAKPj4+Pj4K
Pj4+Pj4gU2VudCBmcm9tIG15IE1hY0Jvb2sgQWlyCj4+Pj4+Cj4+Pj4+IENvbnRhY3Q6Cj4+Pj4+
Cj4+Pj4+IFBob25lOiArMjcgKDApNjAgNTI1IDkxODEgPHRlbDovLysyNzYwNTI1OTE4MT4KPj4+
Pj4KPj4+Pj4gRW1haWw6IGJyYW5kdC5zdGVlbmthbXBAZ21haWwuY29tIDxtYWlsdG86YnJhbmR0
LnN0ZWVua2FtcEBnbWFpbC5jb20+Cj4+Pj4+Cj4+Pj4+IFR3aXR0ZXI6IEBicmFuZHRzdGVlbmth
bXAgPGh0dHA6Ly93d3cudHdpdHRlci5jb20vYnJhbmR0c3RlZW5rYW1wPgo+Pj4+Pgo+Pj4+Pgo+
Pj4+Pgo+Pj4+Pgo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

