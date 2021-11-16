Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 88895453015
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 12:17:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637061426;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XgaYaEB3CPumumhzr/aWcF35KNuKeRrbyFwdMytQnu0=;
	b=ZlwTyn8OZwXSQcott2JvgM47zQ69EVXlrIg6jJ/x3lV51YJew3NpHDABUGaGnRbv3ahksU
	fbl/vHv63AjMISrG4u4K1BLkJwql1bgapYNnJWEq1aCLetsZmPRMw8Oil/VhodCM/R/jOK
	GF+IuLLyNXJiWBpheYO9+RblVMxMNhk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-Vrezu11COOec5Va8mtpu0A-1; Tue, 16 Nov 2021 06:17:02 -0500
X-MC-Unique: Vrezu11COOec5Va8mtpu0A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 638D81006AA4;
	Tue, 16 Nov 2021 11:16:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0CFA05D6BA;
	Tue, 16 Nov 2021 11:16:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0DD371819AC1;
	Tue, 16 Nov 2021 11:16:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGBGgCa020193 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 06:16:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B4290404727D; Tue, 16 Nov 2021 11:16:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B024D4047272
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 11:16:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 95C63185A7B4
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 11:16:41 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-463-YrlYqlWMPQSOfqNphDw5zw-1;
	Tue, 16 Nov 2021 06:16:39 -0500
X-MC-Unique: YrlYqlWMPQSOfqNphDw5zw-1
Received: from [192.168.1.25] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id A8669A37F5
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 10:16:00 +0100 (CET)
Message-ID: <09164111-9929-1755-6e5a-88cf448f663b@slint.fr>
Date: Tue, 16 Nov 2021 13:16:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any good accessible OCR for linux?
To: blinux-list@redhat.com
References: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
In-Reply-To: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AGBGgCa020193
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

SGkgSWJyYWhpbSwKCnRoaXMgY29tbWFuZDoKbW9zdCAvdmFyL2xvZy9wYWNrYWdlcy90ZXNzZXJh
Y3QtZGF0YS00LjAuMC14ODZfNjQtMnNsaW50CnNob3dzIHRoYXQgSSBoYXZlIHBhY2thZ2VkIHRy
YWluZWQgZGF0YSBmb3IgQXJhYmljIGFuZCBhbGwgTGF0aW4gc2NyaXB0cyAKYW1vbmcgb3RoZXJz
IGJ1dCBub3QgSGVicmV3IHNvIGZhci4gSWYgeW91IHdhbnQgaXQgSSBjYW4gYWRkIGl0LgoKQ2hl
ZXJzLApEaWRpZXIKCkxlIDE2LzExLzIwMjEgw6AgMDM6NTMsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBPa2F5IGZyaWVuZHMsCj4gCj4gYWZ0ZXIgdGhy
ZWUgd2Vla3Mgb2YgdXNpbmcgU2xpbnQsIEkgYW0gbm93IGZpbmRpbmcgbXlzZWxmIHVzaW5nIGxp
bnV4IAo+IG1vcmUgYW5kIG1vcmUuwqAgSSBwcmFjdGljYWxseSBjb25maWd1cmVkIGFsbCBvZiBt
eSBlbWFpbCBib3hlcyB0byB3b3JrIAo+IG9uIGxpbnV4LiBJIGFsc28gYWRkZWQgbXkgZHJvcGJv
eCB0byBsaW51eCBhbmQgc2V0dXAgbXkgd2hhdHNhcHAgd2ViLgo+IAo+IE5vdyBJIG5lZWQgYSBn
b29kIGFjY2Vzc2libGUgb2NyIHBhY2thZ2UsIHByZWZlcmFibHkgbXVsdGktbGluZ3VhbCB3aGlj
aCAKPiBjYW4gZG8gQXJhYmljLCBIZWJyZXcgYW5kIEZyZW5jaCBiZXNpZGVzIEVuZ2xpc2guIEFt
IEkgYmVpbmcgdG9vIAo+IGRlbWFuZGluZz8gRG9lcyBzdWNoIGEgTGxpbnV4IHBhY2thZ2UgZXhp
c3Q/Cj4gCj4gSSBoYXZlIGEgdGVuIHllYXJzIG9sZCBFcHNvbiBzY2FubmVyIHdoaWNoIEkgcmVh
bGx5IGxpa2UuIFVuZm9ydHVuYXRlbHksIAo+IHdpbmRvd3MgdGVuIG5vIGxvbmdlciBzdXBwb3J0
cyB0aGlzIHNjYW5uZXIuIEkgaG9wZSBpdCB3b3VsZCBydW4gZmluZSAKPiB3aXRoIExpbnV4LsKg
IEkgY291bGQgbm90IHRyeSBpdCBiZWNhdXNlIEkgaGF2ZSBubyBPQ1IgcGFja2FnZSBydW5uaW5n
IG9uIAo+IG15IExpbnV4IERlc2t0b3AuCj4gCj4gSWYgeW91IGd1eXMgaGF2ZSBhbnkgc3VnZ2Vz
dGlvbnMsIHBsZWFzZSBoZWxwLgo+IAo+IAo+IENoZWVycywKPiAKPiBJYnJhaGltCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

