Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B042A4614D2
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 13:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638188025;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=G62bAXAfWU0a7c/aZ+mPXQEU6joZPjktO78HWb9cKuE=;
	b=GKq8Z0oTEydxqxs4EohqSWfiIV84RQK/J6bWpSqCw+pDR7dmI03XHlRz7o+rzWg2miMnx/
	3wOGavwGIw0H75WEP4pXxa6K8Bii3npXZx31uR5faC0nzrEJQAtI5POHIBnpu5HEI2qIo/
	YQtjqHy9kJmgsCm6MYagUzz4cHueMq8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-313-XGXoIbJxMUqxYF7-NVFtJA-1; Mon, 29 Nov 2021 07:13:44 -0500
X-MC-Unique: XGXoIbJxMUqxYF7-NVFtJA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 065971006AA0;
	Mon, 29 Nov 2021 12:13:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E6695D6BA;
	Mon, 29 Nov 2021 12:13:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 407DE4BB7C;
	Mon, 29 Nov 2021 12:13:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATCDRcX021508 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 07:13:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9E0F5401E46; Mon, 29 Nov 2021 12:13:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A543401E2A
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 12:13:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F5FA80A0AB
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 12:13:27 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-459-BU68drxnO1uDRilYE8ZcZQ-1;
	Mon, 29 Nov 2021 07:13:25 -0500
X-MC-Unique: BU68drxnO1uDRilYE8ZcZQ-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 1A4DDA3FD7
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 11:12:43 +0100 (CET)
Message-ID: <0695243c-f388-0811-b0bc-9489b961ce27@slint.fr>
Date: Mon, 29 Nov 2021 13:13:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: Pipewire and Orca and audio
To: blinux-list@redhat.com
References: <3f05a646-0fcf-7f37-6319-11341ad34e0d@gmail.com>
In-Reply-To: <3f05a646-0fcf-7f37-6319-11341ad34e0d@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ATCDRcX021508
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

T3JjYSBzcGVha3MgdGhyb3VnaCBzcGVlY2gtZGlzcGF0Y2hlciB3aGljaCBtYW5hZ2UgdGhlIGF1
ZGlvIG91dHB1dC4KCmJ1dCBwbGVhc2Ugbm90ZSB0aGF0IGFzIG9mIHRvZGF5LCB0aGVyZSBpcyBu
byBhdWRpbyBkcml2ZXIgZm9yIHBpcGV3aXJlIGluCnNwZWVjaC1kaXNwYXRjaGVyLCBoZWxwIHdl
bGNvbWUgdG8gcHJvdmlkZSBvbmU6CgpodHRwczovL2dpdGh1Yi5jb20vYnJhaWxjb20vc3BlZWNo
ZC9pc3N1ZXMvNDQ3CgptZWFud2hpbGUgSSBzdWdnZXN0IHRoYXQgeW91IGp1c3QgZWRpdCAvZXRj
L3NwZWVjaC1kaXNwYXRjaGVyLXNwZWVjaGQuY29uZiwKc2V0dGluZyBlaXRoZXI6CkF1ZGlvT3V0
cHV0TWV0aG9kICJsaWJhbyIKb3IKQXVkaW9PdXRwdXRNZXRob2QgInB1bHNlIgpvcgpBdWRpb091
dHB1dE1ldGhvZCAiYWxzYSIKCkluZGVlZCB0aGUgY29ycmVzcG9uZGluZyBzb2Z0d2FyZSBzaG91
bGQgYmUgaW5zdGFsbGVkLgoKQ2hlZXJzLApEaWRpZXIKCkxlIDI5LzExLzIwMjEgw6AgMTI6NDQs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBTbyBJJ20g
Y29udmluY2VkIG5vdyBQaXBld2lyZSBpcyBkb2luZyBzb21ldGhpbmcgZnVua3kgb24gCj4gcWVt
dS9WaXJ0dWFsYm94LiBJJ3ZlIHNwdW4gdXAgYSBxdWljayBhbmQgZGlydHkgQXJjaCBzeXN0ZW0g
cnVubmluZyBNYXRlIAo+IHZpYSBzdGFydHguIFB1bHNlIHdvcmtzIGZpbmUgYnV0IHRoZSBtb21l
bnQgSSByZWRvIHRoZSBpbnN0YWxsIHdpdGggCj4gUGlwZXdpcmUsIE9yY2Ega2VlbHMgb3Zlci4K
PiAKPiBTbyBpcyB0aGVyZSBhbnl0aGluZyBzcGVjaWFsIEkgbmVlZCB0byBkbyBpbiBvcmRlciB0
byBnZXQgUGlwZXdpcmUgdG8gCj4gcGxheSBuaWNlPyBJIGRpZCBzdWRvIHBhY21hbiAtUyBwaXBl
d2lyZSBwaXBld2lyZS1wdWxzZSB3aXJlcGx1bWJlciBhbmQgCj4gYW0gdHJ5aW5nIHRvIGdvIHdp
dGggYSBQaXBld2lyZSBhbmQgV2lyZXBsdW1iZXIgc2V0dXAuIEFsbCBvdGhlciBhdWRpbywgCj4g
bGlrZSBZVCB2aWRzLCB3b3JrcyBmaW5lLCBPcmNhIGp1c3QgY29tZXMgb3V0IGFzIGEgZ2FyYmxl
ZCBtZXNzLCBzbyBpdCAKPiBsb29rcyBhdCBsZWFzdCB0byBtZSBsaWtlIFB1bHNlIHdvcmtzIGJl
dHRlciBvbiBteSBzeXN0ZW0uCj4gCj4gQW55b25lIGVsc2UgcnVuIGludG8gdGhpcyB3aXRoIEFy
Y2ggb3Igb3RoZXIgZGlzdHJvcyB1c2luZyBQaXBld2lyZSBhbmQgCj4gZml1cmUgb3V0IGEgc29s
dXRpb24/IFRoZXJlJ3Mgbm90IG11Y2ggb25saW5lIHJlYWxseSBhYm91dCBpdCwganVzdCAKPiBh
cnRpY2xlcyBvbiBvaCBpdCdzIGEgYnVnLCBvciBvaCByZXBsYWNlIFB1bHNlIHdpdGggUGlwZXdp
cmUKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

