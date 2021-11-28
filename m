Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD6846099B
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 21:13:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638130405;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l7ssroDltZZby66K3cFR41DsI94y3seJNEa7BfiwGbw=;
	b=fuwU8ySp4qpHY7W65wIxstbtJBgorKi252Ows0BUYgpfpa+QR01t/O4BHpXXF0JxM6p5/h
	7vk1LXnQ6ERf50ah+ElQnRHWeZ+vWIo4fi0B2e5gRm/9ygnXQAnLi5bBcDWSdd3FndURlO
	MAULIVGfvvEkOnUVw6691+YVHPmgVTU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-562-ZpM-RlyGP3qdh8ezelzMVA-1; Sun, 28 Nov 2021 15:13:19 -0500
X-MC-Unique: ZpM-RlyGP3qdh8ezelzMVA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72BF31006AA0;
	Sun, 28 Nov 2021 20:13:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C7B910016F2;
	Sun, 28 Nov 2021 20:13:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 37A6E4BB7B;
	Sun, 28 Nov 2021 20:13:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASKCwmK018318 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 15:12:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 99DDD2166B2F; Sun, 28 Nov 2021 20:12:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 942132166B2D
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:12:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B969C802A5E
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:12:55 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-192-doNMR8jeN7az62BvYKHveQ-1;
	Sun, 28 Nov 2021 15:12:53 -0500
X-MC-Unique: doNMR8jeN7az62BvYKHveQ-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 8D55BA3ECC
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 19:12:11 +0100 (CET)
Message-ID: <91c67ade-b15f-7130-5641-980ffc0e1a6f@slint.fr>
Date: Sun, 28 Nov 2021 21:12:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
To: blinux-list@redhat.com
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
	<fda47b2b-0bad-b566-b60d-942b64720311@slint.fr>
	<ed84ed62-9e28-7054-9f49-aa505ada1a1f@hubert-humphrey.com>
In-Reply-To: <ed84ed62-9e28-7054-9f49-aa505ada1a1f@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ASKCwmK018318
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQ2hpbWUsCgpBbWF6aW5nbHkgdGhlIHNhbWUgZ3V5IChEYW5pZWwgVHJpemVuKSBtYWludGFp
biBib3RoIHBpcGUtdmlld2VyIGFuZAp5b3V0dWJlLXZpZXdlci4KClRoZSBvbmx5IG9idmlvdXMg
ZGlmZmVyZW5jZSBiZWluZyB0aGF0IHBpcGUtdmlld2VyIGRvZXMgbm90IG5lZWQgYSAKWW91VHVi
ZSBBUEkKa2V5LiBGb3IgdGhpcyByZWFzb24gSSB3aWxsIHBhY2thZ2UgdGhpcyBvbmUuCgpDaGVl
cnMsCkRpZGllcgoKTGUgMjgvMTEvMjAyMSDDoCAyMDoyOCwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIERpZGllcjogWWVzdGVyZGF5IEkgdHJpZWQg
cGlwZS12aWV3ZXIsIHN1cmUgaXQgd29ya3MsIGJ1dCBldmVuIHdpdGggCj4gbWF4IHJlc3VsdHMg
c2V0IGF0IDUwLCBJIG9ubHkgZ2V0IDIwLCB1bmxpa2UgeW91dHViZS12aWV3ZXIgd2hlcmUgaXQg
aXMgCj4gNTAuIFdoZW4gSSBoYWQgc3RyYXctdmlld2VyLCBJIG5vdGljZWQsIHlvdSBjb3VsZCBn
ZXQgYXdheSB3aXRoIG1heCAKPiByZXN1bHRzIGF0IDU4IGJ1dCBoYWxmIG9mIHRoZSBpdGVtcyB3
ZXJlIGR1cGxpY2F0ZXMuIEJ5IHRoZSB3YXksIG15IAo+IExpbnV4IHBlcnNvbiB3cm90ZSBtZSBh
biBhbGlhcyB0byB1cGRhdGUgeW91dHViZS12aWV3ZXIuIEFjdHVhbGx5LCBpdHMgCj4gc2hvcnQg
ZW5vdWdoLgo+ICMhL3Vzci9iaW4vc2gKPiBjZCAvaG9tZS9jaGltZS95b3V0dWJlLXZpZXdlci8K
PiBnaXQgZmV0Y2gKPiBnaXQgbWVyZ2UKPiAKPiBwZXJsIEJ1aWxkLlBMCj4gc3VkbyAvaG9tZS9j
aGltZS95b3V0dWJlLXZpZXdlci8uL0J1aWxkIGluc3RhbGxkZXBzCj4gc3VkbyAvaG9tZS9jaGlt
ZS95b3V0dWJlLXZpZXdlci8uL0J1aWxkIGluc3RhbGwKPiBCYWNrIGFnYWluIGxpdmUsIEkganVz
dCB0eXBlICJ0dWJlIiBhbmQgbm93IEkgYW0gYXQgMy45LjYKPiBDaGltZQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

