Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F25453713
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 17:15:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637079323;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nJjsdLsvewbqm7RYUouZ60JJ5MjVVWmh3XyO1U8EeaM=;
	b=RD5OzIqoZ+VLjISPb66D7nRfAQNoX//9QGr90hV9+vbtzsPqwRAfkZASpIYLBDm1ZrgxX3
	6wCbmtRxp/Iz3QK2aYlFNbGQ60pbo7VhvLp+lpN30YrvhETIotyw80kwAD9NFVyk22TTGT
	J8Ww/VjSJWP9eS03qHiwELQ/ryA8FF0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-596-UARsbgJ_O5u4LVa_jwltcQ-1; Tue, 16 Nov 2021 11:15:20 -0500
X-MC-Unique: UARsbgJ_O5u4LVa_jwltcQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 33963871805;
	Tue, 16 Nov 2021 16:15:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90DD167843;
	Tue, 16 Nov 2021 16:15:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EB06F1806D03;
	Tue, 16 Nov 2021 16:15:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGGF7Bo017246 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 11:15:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B2A2A404727D; Tue, 16 Nov 2021 16:15:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE91E4047272
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 16:15:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 95201800C00
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 16:15:07 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-399-xZNjiMdUNX-dUAQBe7jC1Q-1;
	Tue, 16 Nov 2021 11:15:05 -0500
X-MC-Unique: xZNjiMdUNX-dUAQBe7jC1Q-1
Received: from [192.168.1.25] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4F186A374B
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 15:14:27 +0100 (CET)
Message-ID: <23eb33a9-0818-7784-e7e0-a9e42d8b2425@slint.fr>
Date: Tue, 16 Nov 2021 18:15:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any good accessible OCR for linux?
To: blinux-list@redhat.com
References: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
	<09164111-9929-1755-6e5a-88cf448f663b@slint.fr>
	<1ab13c2c-36e7-ba0d-7f57-b68e5f3b36d3@gmail.com>
In-Reply-To: <1ab13c2c-36e7-ba0d-7f57-b68e5f3b36d3@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AGGF7Bo017246
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSWJyYWhpbSwKCklzc3VpbmcgdGhpcyBjb21tYW5kIHdvdWxkIGFsbG93IG9jciB0byB3b3Jr
IGluIEhlYnJldy4KCnlvdSBtYXkgZGlzY2FyZCB0aGUgbWVzc2FnZSBmcm9tIExpb3MgYXMgaXQg
aXMganVzdCBhIHdhcm5pbmcsIHByZXNzaW5nIE9LLgoKSSB3aWxsIHBhY2thZ2UgYXNwZWxsLWFy
IGFuIGFzcGVsbC1oZSBpbiB0aGUgY29taW5nIGRheXMsIHRoZW4geW91IHdpbGwgCmdldCBzcGVs
bCBjaGVja2luZyBhbmQgYXV0by1yb3RhdGlvbiBpbiBBcmFiaWMgYW5kIEhlYnJldyBpbiBMaW9z
LgoKQ2hlZXJzLApEaWRpZXIKCkxlIDE2LzExLzIwMjEgw6AgMTY6MjcsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBUaGFua3MgYSBtaWxsaW9uIERpZGll
ciwKPiAKPiBXb3VsZCBpc3N1aW5nIHRoaXMgY29tbWFuZCBpbnN0YWxsIHRoaXMgcGFja2FnZSBv
biBteSBkZXNrdG9wPyBMYXN0IAo+IG5pZ2h0IHdoZW4gSSB0cmllZCB0byBydW4gTGlvcyBJdCBn
YXZlIG1lIGEgbG9uZyBtZXNzYWdlIGJhc2ljYWxseSAKPiB0ZWxsaW5nIG1lIHRoYXQgSSBoYXZl
IHRvIGluc3RhbGwgZGljdGlvbmFyaWVzIGZvciBBcmFiaWMgYW5kIG90aGVyIAo+IGxhbmd1YWdl
cy4KPiAKPiBUaGUgY29tbWFuZCBpdCBzdWdnZXN0ZWQgd2FzIHNvbWV0aGluZyBsaWtlIHRoaXM6
ICJhcHQtZ2V0IGluc3RhbGwgLi4uLiIKPiAKPiBDaGVlcnMsCj4gCj4gSWJyYWhpbQo+IAo+IAo+
IE9uIDExLzE2LzIxIDc6MTYgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+IEhpIElicmFoaW0sCj4+Cj4+IHRoaXMgY29tbWFuZDoKPj4gbW9zdCAvdmFyL2xv
Zy9wYWNrYWdlcy90ZXNzZXJhY3QtZGF0YS00LjAuMC14ODZfNjQtMnNsaW50Cj4+IHNob3dzIHRo
YXQgSSBoYXZlIHBhY2thZ2VkIHRyYWluZWQgZGF0YSBmb3IgQXJhYmljIGFuZCBhbGwgTGF0aW4g
Cj4+IHNjcmlwdHMgYW1vbmcgb3RoZXJzIGJ1dCBub3QgSGVicmV3IHNvIGZhci4gSWYgeW91IHdh
bnQgaXQgSSBjYW4gYWRkIGl0Lgo+Pgo+PiBDaGVlcnMsCj4+IERpZGllcgo+Pgo+PiBMZSAxNi8x
MS8yMDIxIMOgIDAzOjUzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6lj
cml0wqA6Cj4+PiBPa2F5IGZyaWVuZHMsCj4+Pgo+Pj4gYWZ0ZXIgdGhyZWUgd2Vla3Mgb2YgdXNp
bmcgU2xpbnQsIEkgYW0gbm93IGZpbmRpbmcgbXlzZWxmIHVzaW5nIGxpbnV4IAo+Pj4gbW9yZSBh
bmQgbW9yZS7CoCBJIHByYWN0aWNhbGx5IGNvbmZpZ3VyZWQgYWxsIG9mIG15IGVtYWlsIGJveGVz
IHRvIAo+Pj4gd29yayBvbiBsaW51eC4gSSBhbHNvIGFkZGVkIG15IGRyb3Bib3ggdG8gbGludXgg
YW5kIHNldHVwIG15IHdoYXRzYXBwIAo+Pj4gd2ViLgo+Pj4KPj4+IE5vdyBJIG5lZWQgYSBnb29k
IGFjY2Vzc2libGUgb2NyIHBhY2thZ2UsIHByZWZlcmFibHkgbXVsdGktbGluZ3VhbCAKPj4+IHdo
aWNoIGNhbiBkbyBBcmFiaWMsIEhlYnJldyBhbmQgRnJlbmNoIGJlc2lkZXMgRW5nbGlzaC4gQW0g
SSBiZWluZyAKPj4+IHRvbyBkZW1hbmRpbmc/IERvZXMgc3VjaCBhIExsaW51eCBwYWNrYWdlIGV4
aXN0Pwo+Pj4KPj4+IEkgaGF2ZSBhIHRlbiB5ZWFycyBvbGQgRXBzb24gc2Nhbm5lciB3aGljaCBJ
IHJlYWxseSBsaWtlLiAKPj4+IFVuZm9ydHVuYXRlbHksIHdpbmRvd3MgdGVuIG5vIGxvbmdlciBz
dXBwb3J0cyB0aGlzIHNjYW5uZXIuIEkgaG9wZSBpdCAKPj4+IHdvdWxkIHJ1biBmaW5lIHdpdGgg
TGludXguwqAgSSBjb3VsZCBub3QgdHJ5IGl0IGJlY2F1c2UgSSBoYXZlIG5vIE9DUiAKPj4+IHBh
Y2thZ2UgcnVubmluZyBvbiBteSBMaW51eCBEZXNrdG9wLgo+Pj4KPj4+IElmIHlvdSBndXlzIGhh
dmUgYW55IHN1Z2dlc3Rpb25zLCBwbGVhc2UgaGVscC4KPj4+Cj4+Pgo+Pj4gQ2hlZXJzLAo+Pj4K
Pj4+IElicmFoaW0KPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

