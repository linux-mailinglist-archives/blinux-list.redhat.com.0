Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 569F93D269A
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 17:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626967411;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=j/rTqLlZ1syGq+rAzgpcR3OmaKraLCD4gtkzFqU1rdY=;
	b=iAPePS2ldGHIsWk2TvVtmuFfO9iYQ15T/kA75wWu2O81Gq4mu61oDnU4RrqFsAkUIScAut
	S3YVY+5yhjSq90JXyIGlYAb/01lbea+h19alQQN4F9kP9khAvPMOXdwtrhq+sKzqrmNs8w
	T4jbAiT6xnB7CV/U5SQ3KY9DetMoMxw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-319-kHJvXaSJNomBsUw_jKrO-w-1; Thu, 22 Jul 2021 11:23:29 -0400
X-MC-Unique: kHJvXaSJNomBsUw_jKrO-w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2309110086C6;
	Thu, 22 Jul 2021 15:23:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AA035D6B1;
	Thu, 22 Jul 2021 15:23:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 189714A7C8;
	Thu, 22 Jul 2021 15:23:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MFNFpu022029 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 11:23:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3C85810CD2DF; Thu, 22 Jul 2021 15:23:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36EBE1054831
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:23:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 53257800141
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:23:12 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-349-sTsd2owjOjmMkajTWey6UA-1;
	Thu, 22 Jul 2021 11:23:09 -0400
X-MC-Unique: sTsd2owjOjmMkajTWey6UA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C5531A3EBB
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:23:07 +0200 (CEST)
Subject: Re: Thunderbird on Slint
To: blinux-list@redhat.com
References: <ec2eb69c-aade-21c0-bc11-5d462376cd65@gmail.com>
	<0a32310f-3412-ea9d-0354-d9f7a94f91fd@slint.fr>
	<5f80b66c-7aa3-07cf-d323-344373699b39@verizon.net>
Message-ID: <dded7ee9-4da9-3ec4-bdb3-a437226a097e@slint.fr>
Date: Thu, 22 Jul 2021 17:23:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <5f80b66c-7aa3-07cf-d323-344373699b39@verizon.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16MFNFpu022029
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

SGkgQWwsCgpxdWljayBhbnN3ZXI6IGFmdGVyIGVhY2ggdXBncmFkZS4KVGhpcyBpczogIHRodW5k
ZXJiaXJkIC1QIC0tYWxsb3ctZG93bmdyYWRlIChtaW5kIHRoZSBjYXBpdGFsIFApCgpDaGVlcnMs
CkRpZGllcgoKTGUgMjIvMDcvMjAyMSDDoCAxNjo1NywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpLCBEaWRpZXIuCj4gCj4gCj4gUXVpY2sgcXVlc3Rp
b246wqAgc2luY2UgSSBpbnN0YWxsZWQgYSB2ZXJzaW9uIG9mIFRodW5kZXJiaXJkIGFjY29yZGlu
ZyB0byAKPiB0aGUgaW5zdHJ1Y3Rpb25zIHlvdSBsaW5rZWQgdG8gbGFzdCB3ZWVrLCBkbyBJIHN0
aWxsIG5lZWQgdG8gdXNlICItcCAKPiBhbGxvdy1kb3duZ3JhZGUiIHRvIGJyaW5nIGl0IHVwIGFm
dGVyIGEgbmV3IGluc3RhbGw/wqAgKEkgaG9wZSBJIHdyb3RlIAo+IHRoYXQgcmlnaHQsIGFzIEkg
ZGlkIGl0IGZyb20gbWVtb3J5LikKPiAKPiAKPiBUaGFua3MhCj4gCj4gCj4gQWwKPiAKPiAKPiBP
biA3LzIxLzIxIDM6NTcgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+IEhpIEJyYW5kdCwKPj4KPj4gc2hvcnQgYW5zd2VyOgo+PiBodHRwOi8vc2xhY2t3YXJl
LnVrL3NsaW50L3g4Nl82NC9zbGludC0xNC4yLjEvdGVzdGluZy9SRUFETUUKPj4KPj4gRGlzY2Fy
ZCB0aGUgY29tbWVudCBhYm91dCBTcGVlY2ggRGlzcGF0Y2hlciwgYSBmYWlybHkgcmVjZW50Cj4+
IG9uZSBpc8KgwqDCoMKgIGFscmVhZHkgaW4gU2xpbnQuCj4+Cj4+IE1vcmU6Cj4+IGh0dHBzOi8v
c2xpbnQuZnIvZG9jLwo+Pgo+PiBDaGVlcnMsCj4+IERpZGllcgo+PiAtLSAKPj4gRGlkaWVyIFNw
YWllcgo+Pgo+PiBMZSAyMS8wNy8yMDIxIMOgIDA4OjUzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiBIaSBhbGwsCj4+Pgo+Pj4KPj4+IEkganVzdCBj
aGVja2VkIHRoZSB2ZXJzaW9uIG9mIFRodW5kZXJiaXJkIGluIHNsaW50LCBhbmQgSSBzYXcgaXQg
aXMgCj4+PiBhYm91dCAxMCB2ZXJzaW9ucyBvdXQgb2YgZGF0ZS4gSXMgdGhlcmUgYSB3YXkgdG8g
Z2V0IGEgbmV3ZXIgdmVyc2lvbiAKPj4+IG9mIHRoZSBzb2Z0d2FyZT8gSSBrbm93LCBJIGNhbiBw
cm9iYWJseSBnZXQgaXQgZnJvbSBnaXRodWIsIGJ1dCBJIAo+Pj4gbXVzdCBhZG1pdCwgaXQgaXMg
bm90IG15IGZhdm9yaXRlIHdheSBvZiBpbnN0YWxsaW5nIHNvZnR3YXJlLgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

