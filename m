Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5E7393CD552
	for <lists+blinux-list@lfdr.de>; Mon, 19 Jul 2021 15:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626699645;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bM5ZgOI1sunczBM11x9veDMHExRRKtrOfGuNFMoY1qI=;
	b=VSNODum8lug3kYkUR5JAT7Fu9pB2d9mJNT1cORdPDjO0Y8LRKbIVi1erubncupfQnCexuu
	5EgAluuCivH8LR/0fkGEs8jAWzz7kropcNZesYi/qGkdNEB2b9o31EderZ1nrTPwWGNHx+
	I8Fap8DDJumkBoqyKhlyf4B+r2pc+CY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-383-4ZLAZl5eOzemlzdcH0pnZA-1; Mon, 19 Jul 2021 09:00:43 -0400
X-MC-Unique: 4ZLAZl5eOzemlzdcH0pnZA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ABCD780365C;
	Mon, 19 Jul 2021 13:00:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 518E55C232;
	Mon, 19 Jul 2021 13:00:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F19681832E39;
	Mon, 19 Jul 2021 13:00:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16JD0Hfh018566 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 19 Jul 2021 09:00:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 20E4D6E1D0; Mon, 19 Jul 2021 13:00:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B7F363F99
	for <blinux-list@redhat.com>; Mon, 19 Jul 2021 13:00:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C1AD80B726
	for <blinux-list@redhat.com>; Mon, 19 Jul 2021 13:00:13 +0000 (UTC)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-447-6QX3gP4PNUiIvyzTFcXxLg-1; Mon, 19 Jul 2021 09:00:10 -0400
X-MC-Unique: 6QX3gP4PNUiIvyzTFcXxLg-1
Received: by mail-io1-f42.google.com with SMTP id g22so19833155iom.1
	for <blinux-list@redhat.com>; Mon, 19 Jul 2021 06:00:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=pVb+FpwzUpY6rBCnopc9I7tBYY/1KLFJfd4B2Semwh4=;
	b=ACl0K3gybzBCW40vEq/nRsrxZCiu8pSYi3sXMG4trYlOOYo8/IbSv/eaEIsocKt/OG
	lbLUkKwyv8Nxy7kVqJstdwU1kHn79XbQuulWV54NKTBk/AIPhbFPovn/swldqy14GjKg
	Y9FRhEQFtjYuXLTPXqNBfW+Z/T/gTeN7VtM1ZvuejjMj0f9i1JK1y5pqh/xxHDQc+d1t
	SR9rWG3J5yNnHp+NDN33qHGrzvMKKil7NQZO31hA5p37vCKPYgc9J8Eyyj+0XMzdel2K
	1+uxOudBAJiIKyDZj+BAjCba4HIcXTYI9FnSO5VOijxFt6/uLXOrIWeFuyy0Tgai+9/l
	Ergg==
X-Gm-Message-State: AOAM533n4kKUH0P1B2V6R/86MBi1lv3ZW/NxeHeYhg1WEHKcZ82AKwwE
	PvdY4YpAE/bXEhR1irSLSM2I2blm57pQk1qLXicSp7Jb
X-Google-Smtp-Source: ABdhPJwEYJ1Q92gAMoIO+fXkYsKIzmT7qZR4jBMlaAUqVklvCLTkOLY+wH74zXmwIF0AXLF1dK0CTlUpTKipQAOP3B4=
X-Received: by 2002:a5e:9306:: with SMTP id k6mr19530717iom.157.1626699609419; 
	Mon, 19 Jul 2021 06:00:09 -0700 (PDT)
MIME-Version: 1.0
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
	<74CC17E1-4CF3-41EA-A314-75A2D0ADB886@gmail.com>
In-Reply-To: <74CC17E1-4CF3-41EA-A314-75A2D0ADB886@gmail.com>
Date: Mon, 19 Jul 2021 07:59:58 -0500
Message-ID: <CAGJxbF5mQ301ZWTbgiksQU_rASyW24QLmJ3MDczzaFao_t7w7w@mail.gmail.com>
Subject: Re: Fedora pros and cons
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlc3MgV2luZG93cyAoc3VwZXIpICsgQWx0ICsgUywgYW5kIE9yY2Egc2hvdWxkIHNwZWFrLgpE
ZXZpbiBQcmF0ZXIKci5kLnQucHJhdGVyQGdtYWlsLmNvbQpnZW1pbmk6Ly90aWxkZS5waW5rL35k
ZXZpbnByYXRlci8KCgoKT24gU2F0LCBKdWwgMTcsIDIwMjEgYXQgMTA6MDQgQU0gTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8CmJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3Rl
OgoKPiBJIHRyaWVkIGluc3RhbGxpbmcgRmVkb3JhIGluIFZNV2FyZSB3b3Jrc3RhdGlvbiBpbiBX
aW5kb3dzLCBidXQgSSBoYXZlIG5vCj4gaWRlYSB3aGF0IHRvIGRvIGFmdGVyIHBvd2VyaW5nIG9u
IHRoZSBWTS4KPgo+IFBsZWFzZSBoZWxwPwo+Cj4gV2FybSByZWdhcmRzLAo+Cj4gQnJhbmR0IFN0
ZWVua2FtcAo+Cj4gU2VudCBmcm9tIG15IE1hY0Jvb2sgQWlyCj4KPiBDb250YWN0Ogo+Cj4gUGhv
bmU6ICsyNyAoMCk2MCA1MjUgOTE4MSA8dGVsOi8vKzI3NjA1MjU5MTgxPgo+Cj4gRW1haWw6IGJy
YW5kdC5zdGVlbmthbXBAZ21haWwuY29tIDxtYWlsdG86YnJhbmR0LnN0ZWVua2FtcEBnbWFpbC5j
b20+Cj4KPiBUd2l0dGVyOiBAYnJhbmR0c3RlZW5rYW1wIDxodHRwOi8vd3d3LnR3aXR0ZXIuY29t
L2JyYW5kdHN0ZWVua2FtcD4KPgo+Cj4KPgo+ID4gT24gMTYgSnVsIDIwMjEsIGF0IDE3OjQyLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPiBibGludXgtbGlzdEByZWRoYXQu
Y29tPiB3cm90ZToKPiA+Cj4gPiBXaXRoIEZlZG9yYSwgeW91IGF0IGxlYXN0IGtub3cgdGhhdCB0
aGUgTWF0ZSBpbnN0YWxsZXIgaXMgYWNjZXNzaWJsZS4KPiBVYnVudHUgTWF0ZeKAmXMgaW5zdGFs
bGVyIGlzbuKAmXQgYWNjZXNzaWJsZSwgd2l0aCB0aGUgbGF0ZXN0IDIwLjEwIHJlbGVhc2UuCj4g
RmVkb3Jh4oCZcyBNYXRlIHNwaW4sIHdoaWNoIEkganVzdCBpbnN0YWxsZWQgdG9kYXksICppcyog
YWNjZXNzaWJsZS4gWW91Cj4gc3RpbGwgaGF2ZSB0byBlbmFibGUgQXNzaXN0aXZlIFRlY2hub2xv
Z3kgc3VwcG9ydCwgYW5kIHR1cm4gb24gT3JjYSwgYW5kCj4gc2V0IGEga2V5Ym9hcmQgY29tbWFu
ZCBmb3IgT3JjYSwgYnV0IHRoYXTigJlzIG5vdCB0b28gaGFyZCB0byBkby4KPiA+IERldmluIFBy
YXRlcgo+ID4gci5kLnQucHJhdGVyQGdtYWlsLmNvbQo+ID4KPiA+IEh0dHBzOi8vZGV2aW5wcmF0
ZXIuZmxvdW5kZXIub25saW5lCj4gPgo+ID4+IE9uIEp1bCAxNiwgMjAyMSwgYXQgMTA6MjkgQU0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+IGJsaW51eC1saXN0QHJlZGhh
dC5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gSGVsbG8sIEkgYW0gaW50ZXJlc3RlZCBpbiBhZHZhbnRh
Z2VzIGFuZCBkaXNhZHZhbnRhZ2VzIG9mIEZlZG9yYSB2cwo+IFVidW50dS1iYXNlZCBsaW51eC4K
PiA+Pgo+ID4+Cj4gPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiA+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+ID4+Cj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

