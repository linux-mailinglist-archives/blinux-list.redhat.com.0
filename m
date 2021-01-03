Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 047FB2E8DCC
	for <lists+blinux-list@lfdr.de>; Sun,  3 Jan 2021 19:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609699032;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2fY9d3uETPVcIXOnU/EtCcEyvKmd2M37PyIJAZFLh4w=;
	b=D8/OVZPK2Sev3FffzY9FQluhZBFBxTspi2aQNfZkMPTpHB2Zzm4TDA/bYr98maFnQ4TJ5q
	loxwp3HzLcdULC3hzQ/XdGWzTkLRV0ErisCbk+Hr/j8aAORR1yhRPzHvMUPGpiUoefu+NQ
	IzumOwe35rUhQOqUoPBWRu6gDzYRirE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-292-taU4Q5PEOZ6YlDsxe3lmDA-1; Sun, 03 Jan 2021 13:37:09 -0500
X-MC-Unique: taU4Q5PEOZ6YlDsxe3lmDA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D08259;
	Sun,  3 Jan 2021 18:37:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D5F55D9D3;
	Sun,  3 Jan 2021 18:37:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1EFFF180954D;
	Sun,  3 Jan 2021 18:37:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 103IatQi008498 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Jan 2021 13:36:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CB7679D463; Sun,  3 Jan 2021 18:36:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5B9E53AA
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 18:36:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8BF16185A7BC
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 18:36:53 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-123-_JjCF49qMdeAUqXZbp3Zcw-1;
	Sun, 03 Jan 2021 13:36:51 -0500
X-MC-Unique: _JjCF49qMdeAUqXZbp3Zcw-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 6EA24BE2FB
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 18:35:48 +0100 (CET)
Subject: Re: cli-party package
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2101031201590.11812@panix1.panix.com>
	<4693c1cb-57db-dd49-c2bd-1421d53467d8@slint.fr>
Message-ID: <48a294bd-98cf-726f-29d4-604b1003f72a@slint.fr>
Date: Sun, 3 Jan 2021 19:36:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4693c1cb-57db-dd49-c2bd-1421d53467d8@slint.fr>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 103IatQi008498
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

SSBqdXN0IGluc3RhbGxlZCB0aGUgZGVwcyB1c2luZyBzYm9wa2csIHRoZW4gZGlkIHRoaXM6Cndn
ZXQgCmh0dHBzOi8vZ2l0bGFiLmNvbS9zdG9ybWRyYWdvbjI5NzYvY2xpLXBhcnR5Ly0vYXJjaGl2
ZS9tYXN0ZXIvY2xpLXBhcnR5LW1hc3Rlci50YXIuZ3oKdGFyIHhmIGNsaS1wYXJ0eS1tYXN0ZXIu
dGFyLmd6CmNkIGNsaS1wYXJ0eQouL2NsaS1wYXJ0eQoKSXQgd29ya2VkLgoKRGlkaWVyCgpMZSAw
My8wMS8yMDIxIMOgIDE5OjE3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEg
w6ljcml0wqA6Cj4gSGksCj4gCj4gVGhpcyBwYWdlOgo+IGh0dHBzOi8vZ2l0bGFiLmNvbS9zdG9y
bWRyYWdvbjI5NzYvY2xpLXBhcnR5Ly0vYmxvYi9tYXN0ZXIvY2xpLXBhcnR5Cj4gbWVudGlvbnMg
YXMgZGVwZW5kZW5jaWVzOgo+IGJjCj4gZGlhbG9nCj4gZXNwZWFrLW5nCj4gaHRtbDJ0ZXh0Cj4g
c294Cj4geGlkZWwKPiAKPiBBbGwgYXJlIGluY2x1ZGVkIGluIFNsaW50IGJ1dCBodG1sMnRleHQg
YW5kIHhpZGVsIHRoYXQgeW91IGNhbiBnZXQKPiB1c2luZyBzYm9wa2cKPiAKPiBCZSBhd2FyZSB0
aGF0IHhpZGVsIChtYWludGFpbmVkIGJ5IEIuIFdhdHNvbiBAIGh0dHBzOi8vc2xhY2tidWlsZHNv
cmcpCj4gcmVxdWlyZXMgZnBjLCBhbHNvIGF2YWlsYWJsZSBmb20gU0JvLgo+IAo+IEJlc3QgcmVn
YXJkcywKPiAKPiBEaWRpZXIKPiAtLSAKPiBEaWRpZXIgU3BhaWVyCj4gU2xpbnQgbWFpbnRhaW5l
cgo+IAo+IExlIDAzLzAxLzIwMjEgw6AgMTg6MDUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSXQgdHVybnMgb3V0IHRoZSBwYWNrYWdlIG5lZWRlZCB4
aWRlbCBhbmQgaHRtbDJ0ZXh0LsKgIEkgZm91bmQgdGhhdCBvdXQgCj4+IGJ5IGFuYWx5emluZyBh
IHR5cGVzY3JpcHQgZmlsZSBpbiB3aGljaCBjbGktcGFydHkgd2FzIHJ1bi7CoCBPbmx5IAo+PiBw
cm9ibGVtIGlzIEkgaW5zdGFsbGVkIGh0bWwydGV4dCBvbiBzbGludCBhbmQgdGhlIGNsaS1wYXJ0
eSBnYW1lIAo+PiBkb2Vzbid0IGZpbmQgaHRtbDJ0ZXh0LsKgIFB5dGhvbiBpcyBpbiBzdWNoIGEg
bWVzcyBub3cgbG90cyBvZiB0aGluZ3MgCj4+IGluY2x1ZGluZyBwaXAgc2VhcmNoZXMgbm8gbG9u
Z2VyIHdvcmssIHNvIGl0IG1heSBiZSBuZWNlc3NhcnkgdG8gZ2l2ZSAKPj4gcHl0aG9uIHNvbWUg
dGltZSB0byBzb3J0IGl0cyBtZXNzIGFuZCBmb3IgZGlzdHJvcyB0byBnZXQgdGhlIAo+PiByZXBs
YWNlbWVudCBwYWNrYWdlcyBmb3IgYWxsIG9mIHRob3NlIGRlcHJlY2F0ZWQgcGFja2FnZXMuCj4+
Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0
dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+IAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

