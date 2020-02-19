Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 0B43A164FE2
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 21:31:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582144270;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SxJferVUY5ekA7qkHT2FrniKk4d0eUSiPVeXlUlknz8=;
	b=CgPwGEXLFTt44V5nEUyr8fAKY7INdkaEE16F9m0B3bEAcd0RsskNa5SfimSEfGOi3CX0mN
	viqy+DI8P8/kxZpekNKKyHUPTrXkX0NYgv0k93Ek/1zi1cOlVlyCHYRO+NAhj3kzlI0bL4
	w7rzpuUREJY5iKMCvW2s/CA3cd2H5Wo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-194-SXKlASlwP7Gsj3zwr4cNqw-1; Wed, 19 Feb 2020 15:31:06 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9EBB4107B765;
	Wed, 19 Feb 2020 20:31:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01C6E10013A1;
	Wed, 19 Feb 2020 20:31:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1160535B0D;
	Wed, 19 Feb 2020 20:30:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JKUnDS032159 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 15:30:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C7EC52063209; Wed, 19 Feb 2020 20:30:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C29F62063207
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 20:30:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0232D8007B3
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 20:30:47 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-388-wAkp-2opMAqs7YSh1VXDjQ-1; Wed, 19 Feb 2020 15:30:43 -0500
Received: by mail-wr1-f48.google.com with SMTP id m16so2072652wrx.11
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 12:30:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=B0r7PD4wQjjH3g0UdBt9UhTSQSHqMt7JYDh7fYuxqCc=;
	b=ByEHmu5U6x7Vl8UTM9h9SnOTw+bb56PaXbBBJf6mDdlqpZmawmRaMakRBGKYYlu3rp
	qnj8ffhhaTHOgFl9VHDCUedH05N+WUJzh1/iqeigcim4DTR4KB5gXlehDG2bP1QHoPpB
	hbP5yQ90DmlLnEKDu0bQna0yRf2qSlAnxZIlCzlzE2HWBy5Q8cnVTN1vAm0scs0aHkae
	PyF9wceVeONRhLVJysxEgGkOhN30gvnYq7TGSUaQrxCwPZwFrxJgqvhRFgyS+MnT9/be
	C3ZUV+cPk+4t1I8zcR97ceSecQEIaM+3zs0qTkgJzwvkiipkxxCD8YZTYgVWdLMvrVwO
	u9Yg==
X-Gm-Message-State: APjAAAXPlBVzTOPvAspOD9uO1W7vFuwtCbzwfGTblRjcRFDbqt0RQ9C+
	MaFcVo7MpuY3QdG+FRUKZ4O44R3QjR5vkRoTi2SgASDJ
X-Google-Smtp-Source: APXvYqwVoHGGaQm9xuXUDAen6+yn3zdcMc7mLHi3QzzQDq3/PIPski4X1WuX+9OSbRSfWZjziQXUf1ENOAtBFZvmpHU=
X-Received: by 2002:a05:6000:118e:: with SMTP id
	g14mr39888693wrx.39.1582144240961; 
	Wed, 19 Feb 2020 12:30:40 -0800 (PST)
MIME-Version: 1.0
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
Date: Wed, 19 Feb 2020 15:30:29 -0500
Message-ID: <CAJKfDDG_M7XDxYPgRvV5s0tomokymQOqfBZGU4cw9gzrTeOKLw@mail.gmail.com>
Subject: Re: early warning I hope
To: blinux-list <blinux-list@redhat.com>
X-MC-Unique: wAkp-2opMAqs7YSh1VXDjQ-1
X-MC-Unique: SXKlASlwP7Gsj3zwr4cNqw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoZWxwIG1hbmFnZSBhIG1hc3NpdmVseSBhY3RpdmUgTGludXggY29tbXVuaXR5IG9mIG92ZXIg
MTAwayBtZW1iZXJzIGZvcgpuZWFyIGEgZGVjYWRlLCBJIGJhcmVseSByZWNhbGwgdG8gaGF2ZSBz
ZWVuIGFueSBTbGFja3dhcmUgdXNlciwgTGludXgKcXVlc3Rpb25zIHdlYnNpdGUgaXMgb25lIG9m
IG9sZGVzdCBsaW51eCByZXNzb3VyY2VzIGFuZCBnb3QgYXJvdW5kIDE1CnNsYWNrd2FyZSBxdWVz
dGlvbnMgcGVyIGRheSBpbiB0aGUgbGFzdCB0d28gZGF5cyBidXQgb25seSA4IHF1ZXN0aW9ucyBv
bgptYXliZSAzMCBnb3QgYW5zd2VyZWQgc28gaXQncyB1cCB0byBkZWJhdGUgLi4uIChTbGFja3dh
cmUgaXMgNyBvZiAyNTAKYWN0aXZlIGRpc3Ryb3MgYWJvdXQgMi44JSBvZiBMaW51eCBhcyBhIHdo
b2xlLCB3aGlsZSBEZWJpYW4gaXMgdGhlIGJhc2Ugb2YKMTIwIG9mIDI1MCBkaXN0cm9zIHNvIDQ4
JSBvZiBMaW51eCBvbiBhIHF1aWNrIGNoZWNrKQoKRGViaWFuIGRvbid0IGZvY3VzIG9uIGFjY2Vz
c2liaWxpdHkgc28gdGhlIG1haWxpbmcgbGlzdCBtaWdodCBvYnZpb3VzbHkgYmUKbGVzcyBhY3Rp
dmUgYnV0IG92ZXJhbGwgaXQncyB0aGUgc3VwcG9ydCBvZiBhIGNvbW11bml0eSB0aGF0IG1hdHRl
ciBmb3IKcXVpY2sgdHJvdWJsZXNob290aW5nLgoKU3RvcCBtYWtpbmcgbGlrZSBkaXN0cm8gaG9w
cGluZyB3YXJzIHRoYXQgYXJlIHBsYWluIHN0dXBpZCwgU2xpbnQgc2VlbSB0bwpsYWNrIHRoZSBt
YWduaWZpY2F0aW9uIGdhaW4gb2YgQ29tcGl6LCBtYWtlIGNvbG9yIGZpbHRlcnMgYW5kIGNvbG9y
CmludmVyc2lvbiBtb3JlIHRlZGlvdXMgc28gYXBhcnQgdGhlIG1vdmUgZnJvbSBjb25zb2xlIHRv
IGd1aSBtYXliZSBlYXNpZXIsCm5vdCBzdXJlIGhvdyBpdCBjb21wZXRlIHdpdGgganVzdCB1YnVu
dHUgbWF0ZS4KCk15IGFpbSB3aXRoIHRyeWluZyB0byBtZXJnZSBWaW51eCBhbmQgU29uYXIgd2hp
bGUgYWRkaW5nIG5ldyBjb250ZW50IHdvdWxkCmhhdmUgZml4ZWQgdGhhdCBzdHVwaWQgZnJhZ21l
bnRhdGlvbiB0aGF0IGRvZXMgbm90aGluZyB0byBoZWxwIGVuZC11c2VycwpidXQgaXQgaGFzIHRv
IGJlIGRvbmUgdGhlIHJpZ2h0IHdheS4KClRoYXQgQXJjaGxpbnV4IGFjY2Vzc2liaWxpdHkgdG9v
bHMgcmFyZWx5IGJyZWFrIGlzbid0IGVub3VnaCwgZm9yIGEgYmxpbmQKdXNlciBoaXMgc3lzdGVt
IGNhbid0IGJyZWFrLCBsaWtlIGEgcGhvbmUgZm9yIDkxMSwgbGlrZSB0diBvciBnYW1lCmNvbnNv
bGVzLCB0aGluayBjcml0aWNhbCBzZXJ2ZXIgdGhhdCBjYW4ndCBiZSBvZmZsaW5lIGZvciBkZWNh
ZGVzIG9yIGp1c3QgYQpwYWNlbWFrZXIgaWYgeW91IGRvbid0IHVuZGVyc3RhbmQgd2VsbCBob3cg
aXQgbWF0dGVyLgoKT2J2aW91c2x5IHRoYXQgdGhpcyBzdHVwaWQgZWxpdGUgdGhpbmtpbmcgdGhh
dCBtYWtlIG1lIGtlZXAgbXkgamV3ZWxzIHRoYXQKSSBjb3VsZCBjb250cmlidXRlIGNhdXNlIHRo
ZXkgd291bGQgYmUgYmFkbHkgdXNlZCBhbmQgaXQgd291bGQgYmUgZG9uZSB0aGUKb3Bwb3NpdGUg
d2F5IHRoYXQgd2hhdCB3b3VsZCBuZWVkZWQgdG8gZG8gLi4uCgpNaWNoYcOrbCBDYXJvbiBDb3V0
dXJpZXIKCgpMZSBtYXIuIDE4IGbDqXZyLiAyMDIwLCDDoCAwNCBoIDA3LCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gYSDDqWNyaXQg
OgoKPiBJIGp1c3QgcmFuIGEga2VybmVsIHVwZGF0ZSBhIGZldyBtaW51dGVzIGFnbyBvbiBhcmNo
bGludXggYW5kIHRyaWVkCj4gcmVib290aW5nLgo+IFNvbWUgdXVpZCBjYW5ub3QgYmUgZm91bmQg
YW5kIEkgZ290IHRocm93biBpbnRvIGFuIGVtZXJnZW5jeSBzaGVsbC4gIEFsbAo+IG9mIHRoaXMg
b2YgY291cnNlIHdpdGhvdXQgc2NyZWVuIHJlYWRlciB3b3JraW5nLgo+IEkgZm91bmQgdGhpcyBv
dXQgYXMgYSByZXN1bHQgb2YgdGFsa2luZyB0byBhIGJlIG15IGV5ZXMgdm9sdW50ZWVyIG9uIHRo
ZQo+IHBob25lIGFmdGVyIHNoZSBleGFtaW5lZCBteSBzY3JlZW4uCj4gSSBoYXZlIG5vIGlkZWEg
d2hhdCBjYXVzZWQgdGhhdCBhbmQgaGF2ZSBtaW5pbWFsIHVzYiBzdHVmZiBjb25uZWN0ZWQgdG8K
PiB0aGUgY29tcHV0ZXIuICBJIGhhZCBkaXNjb25uZWN0ZWQgYSBmbGFzaCBkcml2ZSBmcm9tIHRo
ZSBjb21wdXRlciB0aGlua2luZwo+IHRoZSBmbGFzaCBkcml2ZSB3YXMgdGhlIGNhdXNlIG9mIHRo
ZSBtaXNzaW5nIHV1aWQgYnV0IHRoYXQgd2Fzbid0IHRoZQo+IGNhc2UuCj4gRm9ydHVuYXRlbHkg
SSB1c2Ugc29saWQgc3RhdGUgZHJpdmVzIGFuZCBoYXZlIGFub3RoZXIgZGlmZmVyZW50IHN5c3Rl
bSBvbgo+IG9uZSBvZiB0aGVtIG9yIEknZCBiZSBvZmZsaW5lIGZvciBhIHdoaWxlLgo+IFRoZSB2
b2x1bnRlZXIgZGlkbid0IHJlYWQgbWUgdGhlIGxvbmcgbnVtYmVyIGFmdGVyIHRoYXQgdXVpZCBl
cnJvci4KPgo+Cj4KPiAtLQo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

