Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF07453065
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 12:24:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637061895;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0bUQPkDLL4W0hGNJgkzQ8we0p7hDelEDVGsG6gSKOmo=;
	b=jQV++Zlpvk/iFafaNiHZkY11YJ6UPjXjfVm3rO+5K/VgKe4CHlmxxDBblthnx2TTguGqSq
	847Kx288+cg0zWID4DBR4z6IFnsKoBMTVL/zI9+gbUAURKe4yvkkQDe+9YtgBmCKPdgW4I
	e0rvD/S8JI5+2UsvYzwZo+Id5juxCLA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-193-rVkQkRg3OvWkJZw4tf29CA-1; Tue, 16 Nov 2021 06:24:52 -0500
X-MC-Unique: rVkQkRg3OvWkJZw4tf29CA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC01F1808312;
	Tue, 16 Nov 2021 11:24:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78E9E5D6BA;
	Tue, 16 Nov 2021 11:24:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 03CD54A703;
	Tue, 16 Nov 2021 11:24:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGBNhlW020554 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 06:23:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0416F4047272; Tue, 16 Nov 2021 11:23:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1996404727A
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 11:23:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D876B85A5BC
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 11:23:42 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-525-bwurxd7XNuS6v1-1Otl38g-1;
	Tue, 16 Nov 2021 06:23:41 -0500
X-MC-Unique: bwurxd7XNuS6v1-1Otl38g-1
Received: from [192.168.1.25] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 59040A37F9
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 10:23:03 +0100 (CET)
Message-ID: <d3efdfc7-1af0-623e-eef0-b9ca6dee5e2e@slint.fr>
Date: Tue, 16 Nov 2021 13:23:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any good accessible OCR for linux?
To: blinux-list@redhat.com
References: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
	<09164111-9929-1755-6e5a-88cf448f663b@slint.fr>
In-Reply-To: <09164111-9929-1755-6e5a-88cf448f663b@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AGBNhlW020554
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

UFMgTWVhbndoaWxlIHlvdSBjYW4ganVzdCBkbyB0aGlzIChxdWljayBhbmQgZGlydHkgd2F5KToK
CndnZXQgCmh0dHBzOi8vZ2l0aHViLmNvbS90ZXNzZXJhY3Qtb2NyL3Rlc3NkYXRhX2Zhc3QvcmF3
L21haW4vc2NyaXB0L0hlYnJldy50cmFpbmVkZGF0YQp0aGVuIGFzIHJvb3Q6Cm12IEhlYnJldy50
cmFpbmVkZGF0YSAvdXNyL3NoYXJlL3Rlc3NkYXRhLwoKQ2hlZXJzLApEaWRpZXIKCkxlIDE2LzEx
LzIwMjEgw6AgMTM6MTYsIERpZGllciBTcGFpZXIgYSDDqWNyaXTCoDoKPiBIaSBJYnJhaGltLAo+
IAo+IHRoaXMgY29tbWFuZDoKPiBtb3N0IC92YXIvbG9nL3BhY2thZ2VzL3Rlc3NlcmFjdC1kYXRh
LTQuMC4wLXg4Nl82NC0yc2xpbnQKPiBzaG93cyB0aGF0IEkgaGF2ZSBwYWNrYWdlZCB0cmFpbmVk
IGRhdGEgZm9yIEFyYWJpYyBhbmQgYWxsIExhdGluIHNjcmlwdHMgCj4gYW1vbmcgb3RoZXJzIGJ1
dCBub3QgSGVicmV3IHNvIGZhci4gSWYgeW91IHdhbnQgaXQgSSBjYW4gYWRkIGl0Lgo+IAo+IENo
ZWVycywKPiBEaWRpZXIKPiAKPiBMZSAxNi8xMS8yMDIxIMOgIDAzOjUzLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IE9rYXkgZnJpZW5kcywKPj4KPj4g
YWZ0ZXIgdGhyZWUgd2Vla3Mgb2YgdXNpbmcgU2xpbnQsIEkgYW0gbm93IGZpbmRpbmcgbXlzZWxm
IHVzaW5nIGxpbnV4IAo+PiBtb3JlIGFuZCBtb3JlLsKgIEkgcHJhY3RpY2FsbHkgY29uZmlndXJl
ZCBhbGwgb2YgbXkgZW1haWwgYm94ZXMgdG8gd29yayAKPj4gb24gbGludXguIEkgYWxzbyBhZGRl
ZCBteSBkcm9wYm94IHRvIGxpbnV4IGFuZCBzZXR1cCBteSB3aGF0c2FwcCB3ZWIuCj4+Cj4+IE5v
dyBJIG5lZWQgYSBnb29kIGFjY2Vzc2libGUgb2NyIHBhY2thZ2UsIHByZWZlcmFibHkgbXVsdGkt
bGluZ3VhbCAKPj4gd2hpY2ggY2FuIGRvIEFyYWJpYywgSGVicmV3IGFuZCBGcmVuY2ggYmVzaWRl
cyBFbmdsaXNoLiBBbSBJIGJlaW5nIHRvbyAKPj4gZGVtYW5kaW5nPyBEb2VzIHN1Y2ggYSBMbGlu
dXggcGFja2FnZSBleGlzdD8KPj4KPj4gSSBoYXZlIGEgdGVuIHllYXJzIG9sZCBFcHNvbiBzY2Fu
bmVyIHdoaWNoIEkgcmVhbGx5IGxpa2UuIAo+PiBVbmZvcnR1bmF0ZWx5LCB3aW5kb3dzIHRlbiBu
byBsb25nZXIgc3VwcG9ydHMgdGhpcyBzY2FubmVyLiBJIGhvcGUgaXQgCj4+IHdvdWxkIHJ1biBm
aW5lIHdpdGggTGludXguwqAgSSBjb3VsZCBub3QgdHJ5IGl0IGJlY2F1c2UgSSBoYXZlIG5vIE9D
UiAKPj4gcGFja2FnZSBydW5uaW5nIG9uIG15IExpbnV4IERlc2t0b3AuCj4+Cj4+IElmIHlvdSBn
dXlzIGhhdmUgYW55IHN1Z2dlc3Rpb25zLCBwbGVhc2UgaGVscC4KPj4KPj4KPj4gQ2hlZXJzLAo+
Pgo+PiBJYnJhaGltCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

