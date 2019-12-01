Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id CB35F10E262
	for <lists+blinux-list@lfdr.de>; Sun,  1 Dec 2019 16:43:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1575215007;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+MoXo6mrNWiMpScDAp4S1li9bBuyXjrUnY0UES6iDjI=;
	b=a9uQpN+nm/1iTBhwXnOhCYVbDTTblEdDdycG5HnMNrXZMZNKrcVSJPwsjbABVg1CtUon0/
	Lh6F1/KHqflgkZpeIZUUyXWwO0uJe8/sadbSoASCpRniHELXhtNtpZ47bcodKgGzsLJo56
	0d5dM8/4CJol744Ybko0/lN4Jg+0QEs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-5rPl8r7eMTSuImPcuLWjYw-1; Sun, 01 Dec 2019 10:43:25 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D62FC10054E3;
	Sun,  1 Dec 2019 15:43:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B65410013A7;
	Sun,  1 Dec 2019 15:43:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8AF084E9EC;
	Sun,  1 Dec 2019 15:43:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xB1Fh10u003073 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Dec 2019 10:43:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 61AAA2166B29; Sun,  1 Dec 2019 15:43:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D6A72166B27
	for <blinux-list@redhat.com>; Sun,  1 Dec 2019 15:42:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3500F185AB73
	for <blinux-list@redhat.com>; Sun,  1 Dec 2019 15:42:59 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-367-P5FFiCAzPDmZEWsOXl_gTw-1; Sun, 01 Dec 2019 10:42:57 -0500
Received: by mail-wm1-f45.google.com with SMTP id p17so7389751wmi.3
	for <blinux-list@redhat.com>; Sun, 01 Dec 2019 07:42:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=7PyaQSvPWvnFSfpVW9Nokl8TclRatAOAOWCcuoubFaY=;
	b=AXxKDHvHIvWmK+IyBctseXdjJZ+dLPeitKHNJ8sMefUpAvtTEDB0AU4aRPQ4VcZrCu
	KbnZsPknhTb378JRw92R09lBI+q8rPWTvQhJuoviJdow2wNHucO0LTsqbw1N3xtP3vvY
	HrrusKG5sBraN85Tce1Efr1IG/RIhlFQDJCPIEItM0V/W7pORpYattO79d/7QYMorAiQ
	fRGiRcdh5YFDT2QMw7bzvRQ6+YZT/CcPZBxvXtntLzIIejiw+bMaVW9bZRYM4+jcV0TA
	rU4siXVrOudtzLYD5DcRPZJ6IQwHSgIj3y5rs+oym88iuTf0BMc4CaAtos9p4dlT8mBg
	7zdQ==
X-Gm-Message-State: APjAAAWDhEtv1JypR22I5vLEt9DzBEK/+1eKmVBOnzNiyL4FFxKE5TEq
	HYq584RUd97PwhOK0Swvnw9VT93e8kW4YdC7XuFqtQ==
X-Google-Smtp-Source: APXvYqzlunH+I6m48c3BPisYawP2smHclCcZHCA9PJsqhcvZgX8bhZ4zAzKuv1gaJ5G2exPav9SzYog1fl9dlRvrlCQ=
X-Received: by 2002:a05:600c:243:: with SMTP id
	3mr7818721wmj.169.1575214975988; 
	Sun, 01 Dec 2019 07:42:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a7b:ce15:0:0:0:0:0 with HTTP;
	Sun, 1 Dec 2019 07:42:55 -0800 (PST)
In-Reply-To: <00ECC5AD-FF56-410F-9EA2-B8EB0DE98A23@gmail.com>
References: <00ECC5AD-FF56-410F-9EA2-B8EB0DE98A23@gmail.com>
Date: Sun, 1 Dec 2019 10:42:55 -0500
Message-ID: <CAJKfDDGz+tn5c7BY=OCa9oG-cSp6WXzvcddvCRs128zirrhNpw@mail.gmail.com>
Subject: Re: A question about how to get speech running on Ubuntu version 18.
	Please read below?
To: blinux-list@redhat.com
X-MC-Unique: P5FFiCAzPDmZEWsOXl_gTw-1
X-MC-Unique: 5rPl8r7eMTSuImPcuLWjYw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xB1Fh10u003073
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3b3VsZG4ndCByZWNvbW1lbmQgdG8gdXNlIExpbnV4IHRoYXQgd2F5LCBmb3IgYWNjZXNzaWJp
bGl0eSBhdCB0aGUKbW9tZW50IFVidW50dSBNYXRlIDE4LjA0IExUUyBmcm9tIGEgbGl2ZSB1c2Ig
b3IgYXMgYSBuYXRpdmUKaW5zdGFsbGF0aW9uIGlzIGhhcmQgdG8gYmVhdCwgaXQgbmVlZCBzb21l
IHNtYWxsIHR3ZWFrcyB0byBzaGluZSBhdApwZWFrIHBvdGVudGlhbCBob3dldmVyLCBjaGVjayBN
YXRlIHR3ZWFrIGZvciBDb21waXogYW5kIGxlYXJuIGFib3V0CmFjY2Vzc2liaWxpdHkgZmVhdHVy
ZXMgaXQgb2ZmZXIuCgoyMDE5LTExLTMwIDE1OjE3IFVUQ+KIkjA1OjAwLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uCjxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPiAgIEhlbGxv
IGV2ZXJ5b25lLCBJ4oCZbSB0cnlpbmcgdG8gc2V0IHVwIFVidW50dSBpbiBhIHZpcnR1YWwgbWFj
aGluZS4KPiBXaGF0IGNvbW1hbmQgZG8gSSBpc3N1ZSB0byBzdGFydCB0aGF0IHNwZWVjaCB3aGlj
aCBJIGJlbGlldmUgaXMgYQo+IGZlc3RpdmFsIHNwZWVjaCBwYWNrYWdlLiBXaGljaCBpcyBlbWJl
ZGRlZCBpbiBvcmNhLiBBbnkgZ29vZCBzdWdnZXN0aW9ucwo+IG9uIHRoaXMgcXVlc3Rpb24/Cj4K
PiBTaW5jZXJlbHkgTWF1cmljZSBNaW5lcy4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0CgoKLS0gCk1pY2hhw6tsIENhcm9uIENvdXR1cmllcgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

