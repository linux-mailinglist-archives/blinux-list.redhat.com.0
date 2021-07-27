Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 53CF83D71C2
	for <lists+blinux-list@lfdr.de>; Tue, 27 Jul 2021 11:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627377252;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0lQh/vxRwj1Q7DgvoJBgMAzhvsX2k0T6H/++DTyabY0=;
	b=QOerrazuRGVECPwyc59Db8evvhZqgineun5SR+9dOYKGe1/ynim1NhFr8/2GLhNyBz5RlL
	yVuzohg3zR55XRvpK11e79txg5zHiHS2r32RM9RMWK99jaLIcc2Ds8UWxtH6KcSplTuBzJ
	q73mAZCCIMgoi1yDppyNmhVp4JMzR4g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-414-vpqtp4YbMi21Pnf1odstkA-1; Tue, 27 Jul 2021 05:14:10 -0400
X-MC-Unique: vpqtp4YbMi21Pnf1odstkA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3920B800D55;
	Tue, 27 Jul 2021 09:14:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7581969324;
	Tue, 27 Jul 2021 09:14:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0BD134BB7C;
	Tue, 27 Jul 2021 09:14:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16R97x3Q029074 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 27 Jul 2021 05:07:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 37DFF10F26FF; Tue, 27 Jul 2021 09:07:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F43E1009059
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 09:07:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A654A800BED
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 09:07:55 +0000 (UTC)
Received: from smtprelay07.ispgateway.de (smtprelay07.ispgateway.de
	[134.119.228.97]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-66-iXX4hN8QMBC2sPHYWmq6OQ-1; Tue, 27 Jul 2021 05:07:52 -0400
X-MC-Unique: iXX4hN8QMBC2sPHYWmq6OQ-1
Received: from [37.4.229.143] (helo=smtpclient.apple)
	by smtprelay07.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1m8IRN-0007co-UT
	for blinux-list@redhat.com; Tue, 27 Jul 2021 10:27:54 +0200
Mime-Version: 1.0 (1.0)
Subject: Re: A question about adding keyboard shortcuts in mate
Date: Tue, 27 Jul 2021 10:30:04 +0200
Message-Id: <0B5B1D7B-CDA1-4A04-9BC9-0AEF80D6EA74@linux-a11y.org>
References: <CAD_4ddR69ScTQ-vSeHDKi+zsFsMgU7WuV37otQQcw1ObGC9wNg@mail.gmail.com>
In-Reply-To: <CAD_4ddR69ScTQ-vSeHDKi+zsFsMgU7WuV37otQQcw1ObGC9wNg@mail.gmail.com>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

SG93ZHksCgpJIGRvbnQgdXNlIE1hdGUgYnV0IGkga25vdyB0aGVyZSBpcyBzb21ldGhpbmcgdG8g
YmluZCBzaG9ydGN1dHMuIFdoYXQgaGFwcGVucyBpZiB5b3UgcnVuIGl0IGZyb20gdGVybWluYWw6
CgptYXRlLWtleWJpbmRpbmctcHJvcGVydGllcwoKVGhlcmUgaXMgYWxzbyB4YmluZGtleXMKCmh0
dHBzOi8vd2lraS5hcmNobGludXgub3JnL3RpdGxlL1hiaW5ka2V5cwoKPiBJZiBJIGNhbid0IGRv
IGl0LCBob3cgYW0gSSBzdXBwb3NlZCB0byByZWNvZ25pemUgdGhlIGN1cnJlbnQgd2luZG93PyBJ
J2QKV2VsbCB5b3UgY2FuIHRyeSB1c2luZyB0aGUg4oCecnVu4oCcIHVzaW5nICBhbHQgKyBmMQoK
Q2hlZXJzCgo+IEFtIDI3LjA3LjIwMjEgdW0gMDg6NTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPiAKPiDvu79IZWxs
byB0aGVyZSwKPiAKPiBXaGF0IEkgd2FzIHRoaW5raW5nIG9mIGRvaW5nIHdhcyBhc3NpZ25pbmcg
YSBrZXlib2FyZCBzaG9ydGN1dCB0bwo+IG9jcmRlc2t0b3AsIHBsdXMgb2NyZGVza3RvcCB3aXRo
IGV2ZXJ5b25lIG9mIGl0J3MgZmxhZ3MuCj4gSSBjb3VsZCBkbyB0aGF0IGluIEdub21lLCBidXQg
SSBjYW4ndCBkbyBpdCBpbiBNYXRlLCBhbmQgSSBjYW4ndCBpbnN0YWxsCj4gZ25vbWUsIGJlY2F1
c2Ugc29tZSBhcHBzLCBMSU9TIGZvciBleGFtcGxlLCBkb24ndCBsaWtlIEdUSzQgZm9yIHNvbWUK
PiByZWFzb24sIGFuZCB0aHJvdyBlcnJvcnMuCj4gSW4gR25vbWUgSSBjb3VsZCBqdXN0IHNheSwg
Y3JlYXRlIGEga2V5Ym9hcmQgc2hvcnRjdXQsIGZvciBleGFtcGxlLAo+IGN0cmwrYWx0K3NoaWZ0
KzEsIHdpdGggbmFtZSwgb2NyZGVza3RvcCwgYW5kIHdpdGggY29tbWFuZCwgb2NyZGVza3RvcCwg
YW5kCj4gaXQgd291bGQgd29yaywgSSdkIGp1c3QgaGF2ZSB0byB3cml0ZSBpdCBhbGwgZG93biwg
d2hpY2ggd2FzIGtvb2wuCj4gSW4gTWF0ZSwgaG93ZXZlciwgSSBoYXZlIHRvIGZpbmQgdGhlIGFw
cCwgd2hpY2ggc3Vja3MuCj4gSWYgSSBjYW4ndCBkbyBpdCwgaG93IGFtIEkgc3VwcG9zZWQgdG8g
cmVjb2duaXplIHRoZSBjdXJyZW50IHdpbmRvdz8gSSdkCj4gaGF2ZSB0byB0eXBlIG9jcmRlc2t0
b3AgZnJvbSB0aGUgdGVybWluYWwsIGFuZCB0aGF0IHdvdWxkIHJlY29nbml6ZSB0aGUKPiBjdXJy
ZW50IHdpbmRvdywgc28gdGhlIHRlcm1pbmFsLCBhbmQgSSBkb24ndCBrbm93IGlmIHVucmVzdHJp
Y3RpbmcgdGhhdAo+IGZ1bmN0aW9uIHNvIGl0IGNhbiByZWNvZ25pemUgdGhlIGVudGlyZSB3b3Jr
c3BhY2Ugd291bGQgZG8gaXQuCj4gVGhhbmtzIGZvciBhbnkgYW5zd2VyLgo+IEJlc3QgcmVnYXJk
cy4KPiBGcmFuY2lzY28uCj4gCj4+IE9uIFR1ZSwgSnVsIDI3LCAyMDIxIGF0IDI6MTkgQU0gTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4+IGJsaW51eC1saXN0QHJlZGhhdC5j
b20+IHdyb3RlOgo+PiAKPj4gSGV5IHRoZXJlLAo+PiAKPj4gaG1tLCBJJ2QgZmlyc3RseSBhc2ss
IGRvZXMgaXQgcmVhbGx5IG1hdHRlcj8KPj4gCj4+IEkgbWVhbiwgeW91J3JlIG1vc3QgbGlrZWx5
IGdvaW5nIHRvIGF0dGFjaCBmbGFncyB0byB0aGUgY29tbWFuZCBhbnl3YXksCj4+IHNvIGl0IHNo
b3VsZG4ndCBiZSBtdWNoIG9mIGFuIGlzc3VlIGlmIE9DUkRlc2t0b3AgaXMgbm90IHByZXNlbnQg
YW1vbmcKPj4gdGhlIGluc3RhbGxlZCBhcHBzLgo+PiAKPj4gSnVzdCBtYWtlIHN1cmUgaXQncyBw
cmVzZW50IGluIGVpdGhlciAvdXNyL2JpbiBvciAvdXNyL2xvY2FsL2Jpbgo+PiBhY2NvcmRpbmcg
dG8gdGhlIHdheSB5b3UgaW5zdGFsbGVkIGl0IGFuZCBpdCBzaG91bGQgd29yayBqdXN0IGZpbmUu
Cj4+IAo+PiAKPj4gQmVzdCByZWdhcmRzCj4+IAo+PiAKPj4gUmFzdGlzbGF2Cj4+IAo+PiAKPj4g
RMWIYSAyNS4gNy4gMjAyMSBvIDE3OjU5IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gbmFww61zYWwoYSk6Cj4+PiBIZWxsbyBldmVyeW9uZSwKPj4+IAo+Pj4gRm9yIHJlYXNvbnMg
bGlrZSBlbWFjc3BlYWsgbm90IGxpa2luZyBwaXBld2lyZSwgIGFuZCBsaW9zIG5vdCBsaWtpbmcK
Pj4gZ3RrNCwKPj4+IEkgZGVjaWRlZCB0byBkbyBhIGNsZWFuIGluc3RhbGwgb2YgYXJjaCB3aXRo
IE1hdGUgd2l0aCBwdWxzZWF1ZGlvICBhbmQKPj4gbm93Cj4+PiBldmVyeXRoaW5nIHdvcmtzIGFz
IGV4cGVjdGVkLgo+Pj4gSSBhbSBoYXZpbmcgYSBwcm9ibGVtIHRob3VnaDogSSBpbnN0YWxsZWQg
b2NyZGVza3RvcCwgYnV0IEkgY2FuJ3Qgc2VlbSB0bwo+Pj4gZmlndXJlIG91dCBob3cgdG8gYmlu
ZCBhIGtleSBiaW5kaW5nIHRvIHRoZSBjb21tYW5kIG9jcmRlc2t0b3AuCj4+PiBXaGVuIEkgZ28g
aW50byB0aGUgY29udHJvbCBjZW50ZXIsIHNlbGVjdCBrZXlib2FyZCBzaG9ydGN1dHMgYW5kIGNs
aWNrIG9uCj4+PiBhZGQsIGl0IGdpdmVzIG1lIHRoZSBuYW1lIGZpZWxkLCB3aGVyZSBJIHR5cGUg
b2NyIGN1cnJlbnQgd2luZG93LCBhbmQgdGhlCj4+PiBjb21tYW5kIGZpZWxkLCB3aGVyZSBJIHR5
cGUgb2NyZGVza3RvcC4KPj4+IFdoZW4gSSBzZWxlY3QgYnJvd3NlIGFwcGxpY2F0aW9ucyB0aG91
Z2gsIGFuZCBldmVuIHdoZW4gSSBjbGljayBvbiBzaG93Cj4+IGFsbAo+Pj4gYXBwbGljYXRpb25z
LCBvY3JkZXNrdG9wIGRvZXNuJ3Qgc2hvdyB1cC4KPj4+IEFueSBpZGVhIGhvdyB0byBmaXggdGhp
cz8KPj4+IEJlc3QgcmVnYXJkcy4KPj4+IEZyYW5jaXNjby4KPj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+IAo+PiAKPj4gCj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

