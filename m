Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 84B623CFFB4
	for <lists+blinux-list@lfdr.de>; Tue, 20 Jul 2021 18:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626799413;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2cIql31u73UsFXrFYJ6/XNQTrdxmDB1fd1qpgZ4yZQs=;
	b=YPTXdOAL2kOG+uZXMkZglubsPD0NLlk99Y0054eJyScW3ac3wDoWvqPUZOv3I2Us/4Kdwa
	8Vzeu1SpGYq2+sAxAP6e5k6gVUHl+3iVS2EzoWIUImEKoD8w9yJbksbmq+OaWMlRoJq9nj
	fo6r0uYOs/4bBWtrAxGrHYURon4Ou34=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-253-tzXOvPq0M3y6D9VHCedC6Q-1; Tue, 20 Jul 2021 12:43:32 -0400
X-MC-Unique: tzXOvPq0M3y6D9VHCedC6Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0003B802E62;
	Tue, 20 Jul 2021 16:43:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD7CD5D9DC;
	Tue, 20 Jul 2021 16:43:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 476D04EA2A;
	Tue, 20 Jul 2021 16:43:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16KGgrqa016693 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Jul 2021 12:42:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E9F582039D8D; Tue, 20 Jul 2021 16:42:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3B632039D85
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 16:42:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42D37180F6E0
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 16:42:49 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
	[209.85.218.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-69-28EtDRezPpK10nxCYgdudg-1; Tue, 20 Jul 2021 12:42:46 -0400
X-MC-Unique: 28EtDRezPpK10nxCYgdudg-1
Received: by mail-ej1-f42.google.com with SMTP id nd37so35286784ejc.3
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 09:42:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=Lnwm8xokp/wGxxjQ32pxQs3hWVWMcHMtGd8EV4h7Sp8=;
	b=GZbzcv3PYx8xEU/Ur38yMPPtjhzlvp/+CtlgAzUdysjWwqZec8DgB6lePBk9pr7A5H
	kYrzf4JrcFTs9WNlKNE44nvoYrdBvy7Sb8FQB81gUgK9S18YT/dXMI3yoVDEKJjFnRih
	FyGpuL9HlM+xdRyA7Rq9PDImEbXuN+09Njuqt9sG9SZESFvM2uimsJG4FF8tQrwWef8X
	Yb2PU+AbV0AZeYr1b+iNBYVWCtfja7x4tUBg/4GocVRvWwWUuqjk8SDvw92dMRTQcE4H
	RrA2BBAQXJbKXqlLCLlcbAFUOydLkNbh9Fuf1BTzSJCe1krZ19e/mUT9kMrsxy0NV3re
	G4qw==
X-Gm-Message-State: AOAM533DY8FlhtQrgNuvpoM9uc5CEQ6YfNs+gtGkeW6Iffv9MvB8sB3A
	lH9JCISG+k2zurfAK1UTv5EZifxuYaY=
X-Google-Smtp-Source: ABdhPJwXnoLt+w0FO2xQT3LkJX7QAZ94vLnfflpMnJCLfx2zmrKeLDkz+qrx6ow+LfJz6pmZb+93gw==
X-Received: by 2002:a17:906:c30c:: with SMTP id
	s12mr34199348ejz.476.1626799365373; 
	Tue, 20 Jul 2021 09:42:45 -0700 (PDT)
Received: from LAPTOP57VCMCF1 ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id
	gu15sm7335388ejb.63.2021.07.20.09.42.43 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 20 Jul 2021 09:42:44 -0700 (PDT)
To: <blinux-list@redhat.com>
References: <c1411831-1b3f-9bfc-6e1e-156b648864ff@gmail.com>
	<2a956027-104d-5f6a-c3e7-08824785b7f5@slint.fr>
In-Reply-To: <2a956027-104d-5f6a-c3e7-08824785b7f5@slint.fr>
Subject: RE: changing the keymap in fluxbox on Slint
Date: Tue, 20 Jul 2021 18:42:42 +0200
Message-ID: <018401d77d86$43c1c120$cb454360$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQGgyK65YqGZC8gTpWvbwU1ZwIttPwHBeLh3q6tvHPA=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16KGgrqa016693
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-za
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGlkaWVyLAoKU29ycnksIG5vIGx1Y2sgb24gZml4aW5nIHRoZSBrZXlib2FyZCBsYXlvdXQu
IEkgdHJpZWQgZXZlcnl0aGluZyBJIGNvdWxkIHRoaW5rIG9mIHRvIGRvLCBidXQgbm8gbHVjay4K
Ci0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCkZyb206IGJsaW51eC1saXN0LWJvdW5jZXNAcmVk
aGF0LmNvbSA8YmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tPiBPbiBCZWhhbGYgT2YgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgpTZW50OiBUdWVzZGF5LCAyMCBKdWx5IDIw
MjEgMTg6MTUKVG86IGJsaW51eC1saXN0QHJlZGhhdC5jb20KU3ViamVjdDogUmU6IGNoYW5naW5n
IHRoZSBrZXltYXAgaW4gZmx1eGJveCBvbiBTbGludAoKSGkgQnJhbmR0LAoKSXQgY291bGQgYmUg
YW4gaXNzdWUgd2l0aCB0aGUgZmlsZSAvdXNyL3NoYXJlL3NhbGl4dG9vbHMva2V5bWFwcyBsZWFk
aW5nIHRvIHdyaXRlIGluIC9ldGMvWDExL3hvcmcuY29uZi5kLzEwLWtleW1hcC5jb25mCgpPcHRp
b24gICAgICAgICAgICAgICAgICAgICAgICAgICJYa2JMYXlvdXQiICJkdm9yYWsiCmluc3RlYWQg
b2Y6Ck9wdGlvbiAgICAgICAgICAgICAgICAgICAgICAgICAgIlhrYkxheW91dCIgImR2b3Jhay1s
IgoKd2hlbiBydW5uaW5nIGtleWJvYXJkc2V0dXAgb3IgZ3Rra2V5Ym9hcmRzZXR1cC4KClBsZWFz
ZSBlZGl0IHRoaXMgMTAta2V5bWFwLmNvbmYgYXMgcm9vdCwgcmVwbGFjaW5nIGR2b3JhayBieSBk
dm9yYWstbCwgcmVzdGFydCBhIHdpbmRvdyBtYW5hZ2VyLiBEb2VzIGl0IG5vdyB3b3JrPwoKQmVz
dCByZWdhcmRzLApEaWRpZXIKLS0KRGlkaWVyIFNwYWllcgpTbGludCBtYWludGFpbmVyCmRpZGll
cmF0c2xpbnRkb3RmcgoKTGUgMjAvMDcvMjAyMSDDoCAxNzoyNiwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4gSGkgYWxsLAo+IAo+IAo+IEkgaW5zdGFsbGVk
IFNsaW50IGluIGEgVk0sIGJ5IGRlZmF1bHQgcnVubmluZyB0aGUgTWF0ZSBkZXNrdG9wLCB3aGlj
aCAKPiBJIGNvdWxkIGVhc2lseSBmaXgsIGJ1dCB3aGVuIEkgc3RhcnQgRmx1eEJveCwgbm90IHNv
IG11Y2guCj4gCj4gCj4gVGhlIGlzc3VlIGlzIGFzIGZvbGxvd3M6IEluIHRoZSBTbGludCBpbnN0
YWxsIEkgY2hvc2UgRHZvcmFrIC1MIAo+IChMZWZ0LUhhbmRlZCBEdm9yYWspIGFzIG15IGtleWJv
YXJkLiBIb3dldmVyLCB3aGVuIEkgcmFuICJzdGFydHgiIHRvIAo+IGdldCBpbiB0byBteSBkZXNr
dG9wLCBJIHdhcyBwcmVzZW50ZWQgd2l0aCB0aGUgRHZvcmFrIGtleWJvYXJkIGxheW91dCwgCj4g
d2hpY2gsIGFzIGEgb25lLWhhbmRlZCBsZWZ0eSwgSSBvYnZpb3VzbHkgZG8gbm90IGtub3cuCj4g
Cj4gCj4gSSBmaXhlZCB0aGlzIHZlcnkgZWFzaWx5IGluIHRoZSBNYXRlIGRlc2t0b3AsIGJ1dCBo
YXZlIG5vIGlkZWEgaG93IHRvIAo+IGRvIHNvIGluIHRoZSBXaW5kb3cgTWFuYWdlcnMsIEZsdXhC
b3gsIEJsYWNrQm94LCBldGMuCj4gCj4gCj4gSWYgYW55b25lIGNhbiwgcGxlYXNlIGhlbHAgbWUg
d2l0aCB0aGlzIGlzc3VlPyBJIHdvdWxkIHJlYWxseSAKPiBhcHByZWNpYXRlIGl0Lgo+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

