Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id D7686F1CD5
	for <lists+blinux-list@lfdr.de>; Wed,  6 Nov 2019 18:52:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1573062726;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zJn1U/VtHZ77EW3IoO3kTDjED043ImL+s4ykRyTDbMk=;
	b=gR1rjcXmHsJhD1QJupu5bOMNFyelJMVEltaGa/c5DT47rOOGWd2ZIFDSETWTazCQKwRun6
	sZ8sRlVGIfmZzEV81mrxS/aYwQBLKV/K3mT0YtoDmSihV9uD4ZnGIthaaulKYOBJNvaHkZ
	U1pcAIh0SxyllR3+k+9W5EQGKhBJ4MA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-359-T44LGGa1Pz2i35B9iGlU3w-1; Wed, 06 Nov 2019 12:52:04 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE777477;
	Wed,  6 Nov 2019 17:51:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E26C25C240;
	Wed,  6 Nov 2019 17:51:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 33EE34BB78;
	Wed,  6 Nov 2019 17:51:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xA6HpmHT017021 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 6 Nov 2019 12:51:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 882C260C88; Wed,  6 Nov 2019 17:51:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx07.extmail.prod.ext.phx2.redhat.com
	[10.5.110.31])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 815AE60BF4
	for <blinux-list@redhat.com>; Wed,  6 Nov 2019 17:51:46 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E3347C049D62
	for <blinux-list@redhat.com>; Wed,  6 Nov 2019 17:51:44 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id f10so2893159oto.3
	for <blinux-list@redhat.com>; Wed, 06 Nov 2019 09:51:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=F43BoXEFRnL7klbT9cPpo3U3itoDB3d2HvOratPKFCQ=;
	b=roDLPxE1BfdY6lK1duOKB0twiHlSmoP2XVC9FWN6FDG8GBLvlYFyfjKU6PzGE/FQLD
	Ada1zS8qo+nlPDHe7wPT6UPq3fHGckfk+m2pWET14elZ2W5zJ46HHAJq4YH9z4glHypG
	ACqPTPU2+pF1xX5hakpg82+M2Ha0gbe9HFBIoiMl6LuEz9D3sB+yzIxjbfRcPgzBPclb
	QT6ihUBrhDoNnPIB6W8gjMrFfkd1Y2XR3AIOYTcM4Hp4FhfmSJRo3lXzzTJUnvS1qDqW
	8JIsbWGQJqsIulKqGATE5f3ImzmQ9bQ+HZwOrbQrOlPdASrRWCTBFT+eqLRdyi9GXufr
	8Iig==
X-Gm-Message-State: APjAAAWwXzRYjevQTbuPsHpIwmSSsI27HDZqAbouHiqVPPXigXCNRNzU
	dWVIKm09PyXg3+BMFbsuZOcEPmCc
X-Google-Smtp-Source: APXvYqyWH+NZj5j10xKOR4VaiAAL2hOvt0UQyvC5szTuL0KsLPDoWm9wsMLC1jIzD1yyvXRzPWne/g==
X-Received: by 2002:a9d:66e:: with SMTP id 101mr2770424otn.51.1573062704074;
	Wed, 06 Nov 2019 09:51:44 -0800 (PST)
Received: from [192.168.1.71] ([2600:1700:81f0:1c10:a9d9:1113:fbfc:2105])
	by smtp.gmail.com with ESMTPSA id
	e19sm3711054otj.51.2019.11.06.09.51.42 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Nov 2019 09:51:42 -0800 (PST)
To: "Linux for blind general discussion" <blinux-list@redhat.com>
Subject: Re: Ubuntu, UEFI and hard disks
Date: Wed, 06 Nov 2019 09:51:41 -0800
Message-ID: <BCFF89A8-2D2A-4B1A-8766-87C0119655AB@gmail.com>
In-Reply-To: <aa4167ae00ea248ef989f6b9a6c457b9@ijn2.net>
References: <9fcc4efe-6f6b-0629-9d3b-5d178f690969@gmail.com>
	<07efbaf7bb6160fb186d50a201106a80@ijn2.net>
	<aeecd4b9-4f4b-01b8-5066-65a52900052e@GMAIL.COM>
	<a68ba38593f76546f0ada88d79932c2a@ijn2.net>
	<9c96b3bc-9ed8-987e-8212-db1fbd244190@GMAIL.COM>
	<aa4167ae00ea248ef989f6b9a6c457b9@ijn2.net>
MIME-Version: 1.0
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.31]);
	Wed, 06 Nov 2019 17:51:45 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]);
	Wed, 06 Nov 2019 17:51:45 +0000 (UTC) for IP:'209.85.210.52'
	DOMAIN:'mail-ot1-f52.google.com' HELO:'mail-ot1-f52.google.com'
	FROM:'maurice.mines@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.097  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.52 mail-ot1-f52.google.com 209.85.210.52
	mail-ot1-f52.google.com <maurice.mines@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.31
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: T44LGGa1Pz2i35B9iGlU3w-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

ICBIZWxsbywgSeKAmXZlIHNvbWUgcXVlc3Rpb25zLCBob3csIGFuZCB3aGVyZSBjYW4gSSBkb3du
bG9hZCB0aGlzIApkaXN0cmlidXRpb24/IEhvdyBzdGFibGUgaXMgb3JjYT8gTXkgZmluYWwgcXVl
c3Rpb24gaXMgaG93IG11Y2ggc3BhY2UgCndoYXQgSSBuZWVkIGl0IGluIGEgdmlydHVhbCBtYWNo
aW5lIGluIG9yZGVyIHRvIHJ1biB0aGlzIGRpc3RyaWJ1dGlvbj8gClNpdHRpbmcgaGVyZSBwcmVw
YXJpbmcgZm9yIGEgY29uZmVyZW5jZS4gQW5kIGZpZ3VyZWQgSSB3b3VsZCBpbnZlc3RpZ2F0ZSAK
Z2l2ZW4gVWJ1bnR1ICBhIHRyeS4KClNpbmNlcmVseSBNYXVyaWNlIE1pbmVzLgoKT24gNiBOb3Yg
MjAxOSwgYXQgODowMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Cj4gT24gMjAxOS0xMS0wNCAxNDozNCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPgo+PiBEaWRpZXIsIEkgd291bGQgaWYgSSBjb3VsZCBnZXQgdGhhdCBmYXIuIEZv
ciBzb21lIGluYW5lIHJlYXNvbi4uLm15Cj4+IERlbGwgSW5zcHJpb24gNTQ4MiBzZWVtcyB0byB0
aGluayBhbnl0aGluZyB3aXRoIHNlY3VyZSBib290IG9mZiA9Cj4+IGxlZ2FjeSBtb2RlLCBkZXNw
aXRlIGV2ZXJ5dGhpbmcgYmVpbmcgc2V0IHVwIHdpdGggRVVGSSBubyBtYXR0ZXIgCj4+IHdoYXQu
Cj4+Cj4+IEJpcmRpZSwgaG93IGV4YWN0bHkgd291bGQgSSBjaGVjayB3aGF0IEkgZ290IGluIFdp
bmRvd3MgYXMgSSBnb3QgdG9sZAo+PiBtYW55LCBtYW55IHdheXMgdG8gY2hlY2sKPgo+IE9uZSB3
YXkgb2YgY2hlY2tpbmcgaXMgc3RhcnRpbmcgUG93ZXJTaGVsbCBhcyBhbiBhZG1pbmlzdHJhdG9y
Lgo+IEluIFBvd2VyU2hlbGwgdXNlIEdldC1QaHlzaWNhbERpc2sKPiBIb3BlZnVsbHkgaXQgdGVs
bHMgdGhlIGNvbm5lY3Rpb24gdHlwZSB0b28uCj4KPiBUaGFua3MgZm9yIHRlbGxpbmcgdGhlIG1h
a2UgYW5kIG1vZGVsIG9mIHlvdXIgbGFwdG9wLiBJdCBoZWxwZWQgc2luY2UKPiBJIHdhcyBhYmxl
IHRvIGNoZWNrIHRoZSBzcGVjaWZpY2F0aW9ucyBmcm9tIERlbGwuCj4KPiBZb3VyIGxhcHRvcCBo
YXMgdHdvIHN0b3JhZ2Ugc3BhY2VzLiBJdCBjb3VsZCBoYXZlIG9uZSAyLjUtaW5jaCBoYXJkIAo+
IGRyaXZlCj4gKG9yIFNTRCksIGNvbm5lY3Rpb24gaXMgU0FUQSBBSENJIDYgR2Jwcy4KPiBUaGUg
b3RoZXIgaXMgTS4yIDIyODAgc3BhY2UgZm9yIHNvbGlkLXN0YXRlIGRyaXZlLiBDb25uZWN0aW9u
IGNvdWxkIGJlCj4gZWl0aGVyIFNBVEEgQUhDSSA2IEdicHMgb3IgUENJZSBOVk1lIHVwIHRvIDMy
IEdicHMuIFRoZSBjb25uZWN0b3IKPiBwcm92aWRlcyBib3RoIHR5cGVzLgo+Cj4gSWYgeW91cnMg
d2VyZSBjb25uZWN0aW5nIHVzaW5nIEFIQ0kgaXQgd291bGQgaGF2ZSB3b3JrZWQgb3V0IG9mIHRo
ZSAKPiBib3guCj4KPiBTaW5jZSBpdCBkaWQgbm90LCBteSBlZHVjYXRlZCBndWVzcyBpcyB0aGF0
IHlvdSBoYXZlIE5WTWUuCj4gQXBwYXJlbnRseSB5b3VyIFVidW50dSBpbnN0YWxsZXIgZG9lc24n
dCB1bmRlcnN0YW5kIHlvdXIgTlZNZQo+IGNvbnRyb2xsZXIuCj4KPiBUaGUgb3B0aW9ucyBhcmUg
ZWl0aGVyIGluc3RhbGwgYW4gaW50ZXJuYWwgQUhDSSBjb25uZWN0ZWQgU1NEIG9yCj4gdHJ5IHNv
bWUgb3RoZXIgTGludXggZGlzdHJpYnV0aW9uLiBEaWRpZXIgY291bGQgaGVscCB5b3UgdGhlcmUK
PiBzaW5jZSB0byBteSB1bmRlcnN0YW5kaW5nIGhlIG1haW50YWlucyBvbmUgZGlzdHJpYnV0aW9u
IHBlcnNvbmFsbHkuCj4KPiBSZWdhcmRzLAo+IEJpcmRpZQo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

