Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 82D6C3D6FCC
	for <lists+blinux-list@lfdr.de>; Tue, 27 Jul 2021 08:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627369076;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cJIrawWT4mfr/4XzYyrKwTrSqENgBmt0GLXeFSDGqpo=;
	b=MhA/8hUi2L6eB6APsbkng/ZskMvBbM/dFHmqye+AjtFdaUwjj57KRe4pi83UTESxooW53B
	uU98eS5x6NMlSvu667lO04cGhoScl3gG4qLQfKNfdpIsadkhR0xkSaTun3X/2ngLO26Ev8
	BBPVfe9MT5Ca8t2GqfNwW9btgSwMXns=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-rTz78OI6OtOR1GU1i1rcOQ-1; Tue, 27 Jul 2021 02:57:55 -0400
X-MC-Unique: rTz78OI6OtOR1GU1i1rcOQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5219E801A92;
	Tue, 27 Jul 2021 06:57:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0EE15D6A1;
	Tue, 27 Jul 2021 06:57:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3FA054BB7C;
	Tue, 27 Jul 2021 06:57:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16R6uf2n015619 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 27 Jul 2021 02:56:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3663D2141E1F; Tue, 27 Jul 2021 06:56:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31DF6218B1FB
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 06:56:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6513F800182
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 06:56:38 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-122-bT2rdWeYPpKnTpTbNCqJRA-1; Tue, 27 Jul 2021 02:56:35 -0400
X-MC-Unique: bT2rdWeYPpKnTpTbNCqJRA-1
Received: by mail-qk1-f180.google.com with SMTP id 190so11374821qkk.12
	for <blinux-list@redhat.com>; Mon, 26 Jul 2021 23:56:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=R2RKQNnaRWPz9mZHHZDjca+fdvE+5a6vqrfaOgYbtso=;
	b=PR2VHK5DhUZpL31vAPfNhFh/zhib29jJmItbdpgIsi17e5odDtqh71hEag5DDkOkie
	QELX2Qia/p9R7ZfHgLC0SLzHVq2Fl5pX0RvLL15ZyzRUFAhiXbG1jNYV+6OVSL6VvzU7
	4NtTW+awGzt+vWEzTqyWT6Ai11RnJ3kk5YsGIR/Q30xw6fhw5x81t/P/+9FBfQWF6hZc
	IpivasAWyrozMUQHPGlRfkTJ+YqcLaLPCrl6QfQQLaLJogasq3uyJPUBlCKxC1JKFsYH
	tDcGQ0vNi/lV+FOFBu+DXvB6tf+HlXMbulhTBexbJR5ACGYjTyE1JDXgJoxlHg1O3XhU
	mzSA==
X-Gm-Message-State: AOAM531dn6DLetBLGBwMq7ql1vrCzsmGvKOqG60XDB+QcAjKkd5z2dYO
	Ota0OQYO5lnx6Od8gTHqL6+TONh7HtlDvdnWAsTyTvJv9e4=
X-Google-Smtp-Source: ABdhPJz1XRDPHIGt1XZyYIoIaxN7ddB4zNwlnJ3Y76WciYgeypvZvBSg3RvbL7XWjfv1a3lELlMuV2XSPE6YE2xf174=
X-Received: by 2002:a05:620a:2408:: with SMTP id
	d8mr13064571qkn.233.1627368994904; 
	Mon, 26 Jul 2021 23:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_4ddTD8GOVSGL676KxR=MuJv-pHz9et=EzHTLiQhngDhSL4Q@mail.gmail.com>
	<d40541e2-5f07-ac96-acac-fccb18d3b135@protonmail.com>
In-Reply-To: <d40541e2-5f07-ac96-acac-fccb18d3b135@protonmail.com>
Date: Tue, 27 Jul 2021 07:56:06 +0100
Message-ID: <CAD_4ddR69ScTQ-vSeHDKi+zsFsMgU7WuV37otQQcw1ObGC9wNg@mail.gmail.com>
Subject: Re: A question about adding keyboard shortcuts in mate
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gdGhlcmUsCgpXaGF0IEkgd2FzIHRoaW5raW5nIG9mIGRvaW5nIHdhcyBhc3NpZ25pbmcg
YSBrZXlib2FyZCBzaG9ydGN1dCB0bwpvY3JkZXNrdG9wLCBwbHVzIG9jcmRlc2t0b3Agd2l0aCBl
dmVyeW9uZSBvZiBpdCdzIGZsYWdzLgpJIGNvdWxkIGRvIHRoYXQgaW4gR25vbWUsIGJ1dCBJIGNh
bid0IGRvIGl0IGluIE1hdGUsIGFuZCBJIGNhbid0IGluc3RhbGwKZ25vbWUsIGJlY2F1c2Ugc29t
ZSBhcHBzLCBMSU9TIGZvciBleGFtcGxlLCBkb24ndCBsaWtlIEdUSzQgZm9yIHNvbWUKcmVhc29u
LCBhbmQgdGhyb3cgZXJyb3JzLgpJbiBHbm9tZSBJIGNvdWxkIGp1c3Qgc2F5LCBjcmVhdGUgYSBr
ZXlib2FyZCBzaG9ydGN1dCwgZm9yIGV4YW1wbGUsCmN0cmwrYWx0K3NoaWZ0KzEsIHdpdGggbmFt
ZSwgb2NyZGVza3RvcCwgYW5kIHdpdGggY29tbWFuZCwgb2NyZGVza3RvcCwgYW5kCml0IHdvdWxk
IHdvcmssIEknZCBqdXN0IGhhdmUgdG8gd3JpdGUgaXQgYWxsIGRvd24sIHdoaWNoIHdhcyBrb29s
LgpJbiBNYXRlLCBob3dldmVyLCBJIGhhdmUgdG8gZmluZCB0aGUgYXBwLCB3aGljaCBzdWNrcy4K
SWYgSSBjYW4ndCBkbyBpdCwgaG93IGFtIEkgc3VwcG9zZWQgdG8gcmVjb2duaXplIHRoZSBjdXJy
ZW50IHdpbmRvdz8gSSdkCmhhdmUgdG8gdHlwZSBvY3JkZXNrdG9wIGZyb20gdGhlIHRlcm1pbmFs
LCBhbmQgdGhhdCB3b3VsZCByZWNvZ25pemUgdGhlCmN1cnJlbnQgd2luZG93LCBzbyB0aGUgdGVy
bWluYWwsIGFuZCBJIGRvbid0IGtub3cgaWYgdW5yZXN0cmljdGluZyB0aGF0CmZ1bmN0aW9uIHNv
IGl0IGNhbiByZWNvZ25pemUgdGhlIGVudGlyZSB3b3Jrc3BhY2Ugd291bGQgZG8gaXQuClRoYW5r
cyBmb3IgYW55IGFuc3dlci4KQmVzdCByZWdhcmRzLgpGcmFuY2lzY28uCgpPbiBUdWUsIEp1bCAy
NywgMjAyMSBhdCAyOjE5IEFNIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPApi
bGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKCj4gSGV5IHRoZXJlLAo+Cj4gaG1tLCBJJ2Qg
Zmlyc3RseSBhc2ssIGRvZXMgaXQgcmVhbGx5IG1hdHRlcj8KPgo+IEkgbWVhbiwgeW91J3JlIG1v
c3QgbGlrZWx5IGdvaW5nIHRvIGF0dGFjaCBmbGFncyB0byB0aGUgY29tbWFuZCBhbnl3YXksCj4g
c28gaXQgc2hvdWxkbid0IGJlIG11Y2ggb2YgYW4gaXNzdWUgaWYgT0NSRGVza3RvcCBpcyBub3Qg
cHJlc2VudCBhbW9uZwo+IHRoZSBpbnN0YWxsZWQgYXBwcy4KPgo+IEp1c3QgbWFrZSBzdXJlIGl0
J3MgcHJlc2VudCBpbiBlaXRoZXIgL3Vzci9iaW4gb3IgL3Vzci9sb2NhbC9iaW4KPiBhY2NvcmRp
bmcgdG8gdGhlIHdheSB5b3UgaW5zdGFsbGVkIGl0IGFuZCBpdCBzaG91bGQgd29yayBqdXN0IGZp
bmUuCj4KPgo+IEJlc3QgcmVnYXJkcwo+Cj4KPiBSYXN0aXNsYXYKPgo+Cj4gRMWIYSAyNS4gNy4g
MjAyMSBvIDE3OjU5IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwo
YSk6Cj4gPiBIZWxsbyBldmVyeW9uZSwKPiA+Cj4gPiBGb3IgcmVhc29ucyBsaWtlIGVtYWNzcGVh
ayBub3QgbGlraW5nIHBpcGV3aXJlLCAgYW5kIGxpb3Mgbm90IGxpa2luZwo+IGd0azQsCj4gPiBJ
IGRlY2lkZWQgdG8gZG8gYSBjbGVhbiBpbnN0YWxsIG9mIGFyY2ggd2l0aCBNYXRlIHdpdGggcHVs
c2VhdWRpbyAgYW5kCj4gbm93Cj4gPiBldmVyeXRoaW5nIHdvcmtzIGFzIGV4cGVjdGVkLgo+ID4g
SSBhbSBoYXZpbmcgYSBwcm9ibGVtIHRob3VnaDogSSBpbnN0YWxsZWQgb2NyZGVza3RvcCwgYnV0
IEkgY2FuJ3Qgc2VlbSB0bwo+ID4gZmlndXJlIG91dCBob3cgdG8gYmluZCBhIGtleSBiaW5kaW5n
IHRvIHRoZSBjb21tYW5kIG9jcmRlc2t0b3AuCj4gPiBXaGVuIEkgZ28gaW50byB0aGUgY29udHJv
bCBjZW50ZXIsIHNlbGVjdCBrZXlib2FyZCBzaG9ydGN1dHMgYW5kIGNsaWNrIG9uCj4gPiBhZGQs
IGl0IGdpdmVzIG1lIHRoZSBuYW1lIGZpZWxkLCB3aGVyZSBJIHR5cGUgb2NyIGN1cnJlbnQgd2lu
ZG93LCBhbmQgdGhlCj4gPiBjb21tYW5kIGZpZWxkLCB3aGVyZSBJIHR5cGUgb2NyZGVza3RvcC4K
PiA+IFdoZW4gSSBzZWxlY3QgYnJvd3NlIGFwcGxpY2F0aW9ucyB0aG91Z2gsIGFuZCBldmVuIHdo
ZW4gSSBjbGljayBvbiBzaG93Cj4gYWxsCj4gPiBhcHBsaWNhdGlvbnMsIG9jcmRlc2t0b3AgZG9l
c24ndCBzaG93IHVwLgo+ID4gQW55IGlkZWEgaG93IHRvIGZpeCB0aGlzPwo+ID4gQmVzdCByZWdh
cmRzLgo+ID4gRnJhbmNpc2NvLgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+ID4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

