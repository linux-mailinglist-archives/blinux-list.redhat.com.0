Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 040B63E855E
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 23:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628631245;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fNuwPEHfgv4aQ43IYiT1XgDw98pu0BaWe9t2Y+GUrq4=;
	b=XkrcWu+xir5Tq/gxJa268IYYO+otSI1Ki2qw56Fw7V/2XxcwvBLP47ODnhCC6bSHhKSc8J
	I+LYhO79NnnSKSsQHvzGZyRLo9DgCvbR3FpDh82+lxfA2GqCmiI+LVkPzAtttqzGrZuOWW
	pOKxlOvPWDjsMok92zJwhL4QArOoWI4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-_hBd77-tMLS9ujINWJ9bTA-1; Tue, 10 Aug 2021 17:34:04 -0400
X-MC-Unique: _hBd77-tMLS9ujINWJ9bTA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B9921853028;
	Tue, 10 Aug 2021 21:34:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B5DD527CAB;
	Tue, 10 Aug 2021 21:33:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 24799181A1CD;
	Tue, 10 Aug 2021 21:33:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17ALXil1020036 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 17:33:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5E58B115D7C8; Tue, 10 Aug 2021 21:33:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A41A115D7CF
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 21:33:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71E1D101A529
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 21:33:41 +0000 (UTC)
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch
	[185.70.40.136]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-231-NQRacLy3MN2UUP8OBzEeSg-1; Tue, 10 Aug 2021 17:33:39 -0400
X-MC-Unique: NQRacLy3MN2UUP8OBzEeSg-1
Date: Tue, 10 Aug 2021 21:33:29 +0000
To: blinux-list@redhat.com
Subject: Re: Help, I need a Windows VM for my work
Message-ID: <913e9c46-c83a-39bd-c013-772d31851af5@protonmail.com>
In-Reply-To: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17ALXil1020036
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGV5IHRoZXJlLAoKcGVyc29uYWxseSBJIHVzZSBWaXJ0dWFsQm94IG9uIFVidW50dSBtYXRlIDIw
LjA0IGFuZCBpdCB3b3JrcyB3aXRob3V0CmFueSBpc3N1ZXMsIHRob3VnaCB0aGUgaW50ZXJmYWNl
IGlzIHNvbWV0aW1lcyBub3QgZW50aXJlbHkgY29vcGVyYXRpbmcKYW5kIE9DUkRlc2t0b3AgaXMg
cmVxdWlyZWQgdG8gaW1wcm92ZSB0aGUgYWNjdXJhY3kgb2YgT3JjYSBjbGlja3MuCgpCdXQgaXQn
cyBkZWZpbml0ZWx5IGRvYWJsZS4KCgpUaGUgdXNhZ2UgaXMgcXVpdGUgc2ltcGxlLCB5b3UganVz
dCBjcmVhdGUgYSBuZXcgVmlydHVhbCBtYWNoaW5lIGZyb20KdGhlIG1hY2hpbmUgbWVudSwgc2V0
dGluZyB1cCBwYXJhbWV0ZXJzIGxpa2UgUkFNIGFuZCBkaXNrIHNwYWNlLgoKVGhlbiwgd2hlbiB0
aGUgbWFjaGluZSBpcyBjcmVhdGVkLCB5b3UgYXR0YWNoIHRoZSBpbnN0YWxsYXRpb24gSVNPIHRv
Cml0cyB2aXJ0dWFsIENEL0RWRCByb20sIHlvdSBjYW4gZG8gdGhpcyBpbiB0aGUgbWFjaGluZSBz
ZXR0aW5ncywgU3RvcmFnZQp0YWIsIElERSBjb250cm9sbGVyIChpZiB5b3UgZG9uJ3Qgc2VlIGl0
IGluIHRoZSBsaXN0LCBpbmNyZWFzZSB0aGUKbnVtYmVyIG9mIHNhdGEgcG9ydHMgdG8gMikuCgoK
QWZ0ZXIgc3RhcnRpbmcgdGhlIG1hY2hpbmUgd2l0aCB0aGUgaXNvIGF0dGFjaGVkLCBpdCBzaG91
bGQgYm9vdAphdXRvbWF0aWNhbGx5IGFuZCBzdGFydCB0aGUgaW5zdGFsbGF0aW9uLgoKCldoZW4g
eW91J3JlIGRvbmUsIHlvdSBjYW4gcmVtb3ZlIHRoZSBpbnN0YWxsYXRpb24gZGlzayBmcm9tIHRo
ZSBkcml2ZSwKaW4gZmFjdCB0aGlzIGlzIHNvbWV0aW1lcyBkb25lIGF1dG9tYXRpY2FsbHksIGJ1
dCBJIHNhdyBjYXNlcyB3aGVyZSBpdApzdGFpZWQgdGhlcmUsIHNvIEkgYWx3YXlzIGNoZWNrIGl0
LgoKClRoZW4sIHlvdSBjYW4gc3RhcnQgdGhlIFZNIGVpdGhlciBmcm9tIHRoZSBWaXJ0dWFsQm94
IG1hbmFnZXIsIG9yIGZyb20KaXRzIC52Ym94IHNob3J0Y3V0LgoKCkEgZmluYWwgbm90ZSwgd2hl
biBydW5uaW5nIHRoZSBtYWNoaW5lLCBrZXlib2FyZCBpcyBncmFiYmVkIGJ5ClZpcnR1YWxCb3gg
Zm9yIGl0LiBJZiB5b3UgbmVlZCB0byBzZW5kIGtleXMgdG8geW91ciBob3N0IHN5c3RlbSwgcHJl
c3MKdGhlIHJpZ2h0IGN0cmwgb24geW91ciBrZXlib2FyZCwgaXQgd29ya3MgaW4gdGhlIHNhbWUg
d2F5IGFzCk9yY2ErQmFja3NwYWNlIGNvbWJpbmF0aW9uIGZvciBPcmNhLCB3aXRoIHRoZSBleGNl
cHRpb24gdGhhdCB0aGUKa2V5Ym9hcmQgd2lsbCBiZSBncmFiYmVkIGFnYWluIG9ubHkgd2hlbiB5
b3UgcmVlbnRlciB0aGUgd2luZG93IG9mIHRoZQptYWNoaW5lLCBzbyB5b3UgY2FuIHdvcmsgaW4g
eW91ciBob3N0IHN5c3RlbSB3aXRob3V0IGFueSBpc3N1ZXMuCgoKQmVzdCByZWdhcmRzCgoKUmFz
dGlzbGF2CgoKRMWIYSAxMC4gOC4gMjAyMSBvIDEyOjU1IExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4gSGkgYWxsLAo+Cj4KPiBBcyBJIHN0YXRlZCBiZWZv
cmUsIEkgYW0gcnVubmluZyBTbGludCBvbiB0aGUgYmFyZSBtZXRhbCwgaG93ZXZlciBteQo+IHdv
cmsgZW50YWlscyB0ZWFjaGluZyBOVkRBIHRvIGNsaWVudHMsIG9idmlvdXNseSBydW5uaW5nIFdp
bmRvd3MuCj4KPgo+IFRoZXJlZm9yIEkgZGVzcGVyYXRlbHkgbmVlZCBhIFdpbmRvd3MgVk0sIHNv
IEkgY2FuIG1ha2UgYSBsaXZpbmcuIEkKPiBjYW5ub3QgZmlndXJlIHFlbXUsIHZpcnR1YWwtYm94
LCBJIGhhdmUgbm8gaWRlYSwgYW5kIFZNV2FyZSBXb3Jrc3RhdGlvbgo+IFBsYXllciBkb2Vzbid0
IHdhbnQgdG8gaW5zdGFsbCB1bmRlciBTbGludC4KPgo+Cj4gQ291bGQgc29tZW9uZSBwbGVhc2Us
IHBsZWFzZSwgZ2l2ZSBtZSBjb25jaXNlIGluc3RydWN0aW9ucyBmb3Igc2V0dGluZwo+IHVwIGEg
Vk0gdXNpbmcgcWVtdSBpbiBTbGludD8KPgo+Cj4gV2FybSByZWdhcmRzLAo+Cj4KPiBCcmFuZHQg
U3RlZW5rYW1wCj4KPgo+IFNlbnQgZnJvbSBteSBnYXNzIHBvd2VyZWQgU2xpbnQgaGFpciBkcnll
ci4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

