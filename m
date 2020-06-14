Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 241DC1F8B33
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jun 2020 00:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592174475;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a1OCh7jlw0aNcaZOH3xgfitphs96hS52+S2drXA3Wbw=;
	b=XG7UDT8azCLcYKkKUZILjfQHNxACyV4pEGQ7wMfA5aciQdMxEU1e5wKH6jw8lYaokzK9wS
	97WBsxfTJMvUL/JwQM5SsG5stCEcyOSHQ19padS02G1RwV0k662Mbuz2A9IHWNhMDDNWbD
	TZ1QWVL+Pc9shhbdO/cKPSF9mov/KRo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-CU2_E8MzOCW-FqGqGcNBiA-1; Sun, 14 Jun 2020 18:41:12 -0400
X-MC-Unique: CU2_E8MzOCW-FqGqGcNBiA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6CDE18CA26E;
	Sun, 14 Jun 2020 22:41:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9238F8F352;
	Sun, 14 Jun 2020 22:41:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ECB5F1809547;
	Sun, 14 Jun 2020 22:41:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EMexIQ010631 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 18:40:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 60B372026971; Sun, 14 Jun 2020 22:40:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C7EE20267F2
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 22:40:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D3BE185A78B
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 22:40:57 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
	[209.85.210.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-302-G9_bQBgcM4K-OY2J50MQUw-1; Sun, 14 Jun 2020 18:40:44 -0400
X-MC-Unique: G9_bQBgcM4K-OY2J50MQUw-1
Received: by mail-ot1-f45.google.com with SMTP id n70so11682772ota.5
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 15:40:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=R4emM821HLZQhDAsE/f6iQ6XjqKfYiI44kW3h2jhOg8=;
	b=uCGlAB+T4any7vY6QXovAr5HaZvKbkpLmQP/JoKmn1qH9ErucjuouC7u1FpC4BjQvq
	APlKvGshoNKWU4xa22YpILcSTbl2qg2Fc0xHfq+9PIPmiPPKLATWfS4qWpJQcTLhCTCD
	7+Tm41KVos95/8ln2lC7Mq4zPP3RcFtBH+dUqaoZaZabivKUmRmHWCgAISJ4U+8ndt8k
	VnQRItDC5NFYYM90DRQnrZCcF0R2f8bvJ0YYyXLWyQ+etPdovVuZUsRpnfDJA8VMZCIS
	YLSkhc/ihyARZnDHezRxf/1quoCdj97ud8JDShxrQLndquBaVWYQczVZRiChnU9lth5Z
	Rt2A==
X-Gm-Message-State: AOAM532PdeC7UVPxdYuBPZCM01W5EtZpdg6AfwcyZwDcBFeMeZVfx3j+
	9ksB8U9bRsMIDJtg2uEgrYoOzMYiMXQ=
X-Google-Smtp-Source: ABdhPJxhEX5aMpazJLyiwD4mJVw1fCg/0bMDUQxXbqbOqRiEDosftIvqqca1oynrwS5umaFVTno1Uw==
X-Received: by 2002:a9d:5c8:: with SMTP id 66mr18500099otd.136.1592174443415; 
	Sun, 14 Jun 2020 15:40:43 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:65c8:3c65:c272:f700?
	([2601:3c2:8200:9360:65c8:3c65:c272:f700])
	by smtp.gmail.com with ESMTPSA id p5sm2971030oof.7.2020.06.14.15.40.42
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 14 Jun 2020 15:40:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Sun, 14 Jun 2020 17:40:41 -0500
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
Message-Id: <99BF0F0E-8052-407D-9E6B-00E2D17E4129@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05EMexIQ010631
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzLgpJdCBpcyBqdXN0IHdoYXQgSSB0aGluay4KQnV0IEkgdGhpbmsgdGhlIHdvcmQg4oCY
aXNzdWXigJkgaXMgb3Zlci11c2VkIHRoZXNlIGRheXMuCgo+IE9uIEp1biAxNCwgMjAyMCwgYXQg
Mzo1MCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RA
cmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4+IE9uIEp1biAxNCwgMjAyMCwgYXQgMTM6MjMsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdy
b3RlOgo+PiAKPj4gV2hhdCBpcyBhIOKAmHNldHRpbmdzIGlzc3Vl4oCZPwo+PiBBcmUgeW91IG1l
YW5pbmcgYSBwcm9ibGVtIHdpdGggc2V0dGluZ3M/Cj4gCj4gWWVzLiAgT24gYWxsIG9mIG15IG90
aGVyIG1haWxpbmcgbGlzdHMsIHRoZSBpZGVudGl0eSBvZiB0aGUgc2VuZGVyIGlzIGdpdmVuIGlu
IHRoZSBGcm9tIGxpbmUuICBJbiBzb21lIGNhc2VzLCB0aGUgZW1haWwgYWRkcmVzcyBpcyBvYmZ1
c2NhdGVkLCBidXQgSSBzdGlsbCBrbm93IHdobyBzZW50IHRoZSBtZXNzYWdlLiAgSW4gdGhpcyBs
aXN0LCBhbGwgb2YgdGhlIEZyb20gbGluZXMgc2F5ICJPbiAuLi4sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOiIuICBJIGZp
bmQgdGhpcyBjb25mdXNpbmcsIGJlY2F1c2UgSSBjYW4ndCB0ZWxsIHdobydzIHNheWluZyB3aGF0
ICh1bmxlc3MgdGhleSBoYXBwZW4gdG8gZW5kIHRoZWlyIHBvc3Qgd2l0aCBhIHNpZ25hdHVyZSku
Cj4gCj4gSWYgdGhpcyBtYWlsaW5nIGxpc3QgYmVoYXZpb3IgaXMgaW50ZW50aW9uYWwsIHBsZWFz
ZSBsZXQgbWUga25vdyBhbmQgSSdsbCBsaXZlIHdpdGggaXQuICBJZiBpdCBpc24ndCwgcGVyaGFw
cyB0aGUgc2V0dGluZ3Mgb24gdGhlIG1haWxpbmcgbGlzdCBuZWVkIHRvIGJlIG1vZGlmaWVkLgo+
IAo+IC1yCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

