Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3D244AC49
	for <lists+blinux-list@lfdr.de>; Tue,  9 Nov 2021 12:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636456113;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=U1XvYiCilEd7ZqIhYdDwzLvfUpaIfgoDwUW/HroVNTU=;
	b=h/pGUUxeA8Wtfk5HVzAeUmoPe8ssdT29lGYL2lusgHWFnslp7q7h2OKocvk4gBoVfFzyIg
	bfj5nwAZfrd7710XEZ3cWzUNxDaZV+dOGtlfN4vU/3rYtq3WF2ys73OwLw2uk0FEs+1P5w
	cFR4SKYVf6kEjMuIYhnxIJSeMn/o6kw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-581-EtHCokQsPG6z9wztA_KFlw-1; Tue, 09 Nov 2021 06:08:30 -0500
X-MC-Unique: EtHCokQsPG6z9wztA_KFlw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 184D71926DA1;
	Tue,  9 Nov 2021 11:08:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E522129676;
	Tue,  9 Nov 2021 11:08:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B6B354E58F;
	Tue,  9 Nov 2021 11:07:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A9B7ogC028851 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Nov 2021 06:07:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0C53251E2; Tue,  9 Nov 2021 11:07:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 072AF51E1
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 11:07:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 643DE185A794
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 11:07:45 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-42-6kJpYIs6Ozuh4SY0w_9n0w-1;
	Tue, 09 Nov 2021 06:07:43 -0500
X-MC-Unique: 6kJpYIs6Ozuh4SY0w_9n0w-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 02DABA3E68
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 10:07:06 +0100 (CET)
Message-ID: <d70e4c45-12d3-e4ba-d137-c79d1247f3f5@slint.fr>
Date: Tue, 9 Nov 2021 12:07:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: Does any of you use a Whatsapp Linux client?
To: blinux-list@redhat.com
References: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
	<f136a39f-8321-0b11-30da-c0999d7f6fa2@slint.fr>
In-Reply-To: <f136a39f-8321-0b11-30da-c0999d7f6fa2@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A9B7ogC028851
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

SGksIGluIGFkZGl0aW9uOgoKZGFuY2Vbfl0kIExBTkc9QyBzcGkgd2hhdHNhcHAKQXZhaWxhYmxl
IHBhY2thZ2VzOgpOb25lCgpBdmFpbGFibGUgU2xhY2tCdWlsZHM6CnBpZGdpbi13aGF0c2FwcCBb
Tm90IGluc3RhbGxlZF06IHBpZGdpbi13aGF0c2FwcCAoV2hhdHNBcHAgUGx1Z2luIGZvciAKUGlk
Z2luKQpwdXJwbGUtZ293aGF0c2FwcCBbTm90IGluc3RhbGxlZF06IHB1cnBsZS1nb3doYXRzYXBw
IChsaWJwdXJwbGUvUGlkZ2luIApwbHVnaW4gZm9yIFdoYXRzQXBwIFdlYikKZGFuY2Vbfl0kCgpU
byBidWlsZCBhbmQgaW5zdGFsbCwgYXMgcm9vdDoKc2xhcHQtc3JjIC1pIHBpZGdpbi13aGF0c2Fw
cApvcgpzbGFwdC1zcmMgLWkgcHVycGxlLWdvd2hhdHNhcHAKCkNhdmVhdCBJIGRpZG4ndCB1c2Ug
dGhlc2UgYXBwcywgbm90IHVzaW5nIFdoYXRzYXBwIHNvIG5vdCBoYXZpbmcgYW4gYWNjb3VudC4K
CkNoZWVycywKRGlkaWVyCgoKTGUgMDkvMTEvMjAyMSDDoCAwMToyOCwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIElicmFoaW0sCj4gCj4gT2ZmIHRv
cGljIGJ1dCBzdGlsbC4uLgo+IEkgU2xpbnQgd2Ugc2hpcDoKPiBuY1RlbGVncmFtIGh0dHBzOi8v
Z2l0aHViLmNvbS9OYW5vc2ViL25jVGVsZWdyYW0KPiBUZWxlZ3JhbSBEZXNrdG9wIChJIGp1c3Qg
cmVhbGl6ZWQgdGhhdCB3ZSBoYXZlIHR3byBtZW51IGVudHJpZXMgPz8/KQo+IHRlbGVncmFtLWNs
aSBodHRwczovL2dpdGh1Yi5jb20vdnlzaGVuZy90Zwo+IHRlbGVncmFtLXB1cnBsZSAocGx1Zy1p
biBmb3IgcGlkZ2luKSAKPiBodHRwczovL2dpdGh1Yi5jb20vbWFqbi90ZWxlZ3JhbS1wdXJwbGUg
KG1heWJlIHN3aXRjaCB0byB0ZGxpYi1wdXJwbGUpCj4gCj4gQWxsIHRoaXMgaW4gYWRkaXRpb24g
dG8gVGVsZWdyYW0gV0VCIGFuZCBUZWxlZ3JhbSBvbiB5b3VyIHBob25lLgo+IAo+IEp1dHMgc2F5
aW5nLi4uCj4gCj4gQ2hlZXJzLAo+IERpZGllcgo+IAo+IExlIDA4LzExLzIwMjEgw6AgMTk6MzUs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSGVsbG8g
Zm9sa3MsCj4+Cj4+IEkgYW0gd29uZGVyaW5nIGlmIGFueSBvZiB5b3UgdXNlIGFuIGFjY2Vzc2li
bGUgTGludXggY2xpZW50IGZvciAKPj4gV2hhdHNhcHAuIFdoYXQgaXMgdGhlIGJlc3Qgd2F5IG9m
IHVzaW5nIFdoYXRzYXBwIG9uIExpbnV4IGlmIG5vIAo+PiBhY2Nlc3NpYmxlIGNsaWVudCBpcyBh
dmFpbGFibGU/Cj4+Cj4+IEFueSBpZGVhcz8KPj4KPj4gQ2hlZXJzLAo+Pgo+PiBJYnJhaGltCj4g
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

