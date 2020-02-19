Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id F358D163B3A
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 04:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582082940;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xRbtdgd3bhIsY79FYt1R25K7UHYsqyWetkmJHNwTNNo=;
	b=eWNZz+rdGKCI0tkB8H60lFH7n5HqEcYPWt0meDb8ml7CYPKP1ijoOQdWgr7X+ORQP+HvwC
	zZAs3wDGlCQFz20yUcfEH+1yVmtZCEcE8W67BFzlZvHx5ZyQHh7fIo3Pbp4WchCiXh6vli
	1jTvO93NN/vLZAmGDRXyM5Zfq1K9CBk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-120-xxRZHqEpNxm4x0xEHufSZA-1; Tue, 18 Feb 2020 22:28:58 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E17AA8010E5;
	Wed, 19 Feb 2020 03:28:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B47C8AC45;
	Wed, 19 Feb 2020 03:28:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AA7014EBDE;
	Wed, 19 Feb 2020 03:28:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01J3ShSR006651 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Feb 2020 22:28:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 41C4F2166B29; Wed, 19 Feb 2020 03:28:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CDAE2166B28
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 03:28:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEC69803869
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 03:28:40 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-304-KB3u7wBHNhibhRkL-7pmjA-1; Tue, 18 Feb 2020 22:28:37 -0500
Received: by mail-wm1-f46.google.com with SMTP id p9so4882470wmc.2
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 19:28:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=THo2rTC0NQRrLM5O2MAPqLbfA7ZR27lazZmUvOtJeHM=;
	b=rgxoZS6ZzrsLapmex0oLiVlSiBgSqOPRbW++5k+fKOUkSkXaBwJYyJ2VzLIEcbQGOK
	m8wGX/BFfjzzzwQqRsFcQOPDMz/mKTbhD28uYiqusJFB07YIXG1mmO0Zl4HhHbSHiEvZ
	ZV9XLYUuvgNu4BAQvVJCIXryPldLeC8srettufS54ZM95l2sxb3RkVmAkyxJlyp4Iu7h
	b2wa1KzTKyCM5TPlyiaIP55BCmDZVNYqCqH6P1C8g2a1ywCVCS2YjOruipLjr5bBVcwv
	HfT7+DSJswlbHm72j6WUaasHreDEzbEz5HS7dvUy8Swgx6JpjeplMwINvx0WczeLiaz8
	+wVw==
X-Gm-Message-State: APjAAAXm4aQsfJko8h2lT4qa8EOP507QxixRxA8oToqRgPkRGppfkmRI
	UTAKMUO1I9cNARnwzZ38ilzpkZunNp8R+YFSTsNXx6xI
X-Google-Smtp-Source: APXvYqwvta71Q+eZc1oj5fFuntPOYFcQJBxDopvzLSQt0MLOvaI5Lo08STowjpRrT/DKYzU2ITzg+l3P4MrcUF0/chM=
X-Received: by 2002:a1c:2282:: with SMTP id i124mr6627116wmi.109.1582082915943;
	Tue, 18 Feb 2020 19:28:35 -0800 (PST)
MIME-Version: 1.0
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
Date: Tue, 18 Feb 2020 22:28:24 -0500
Message-ID: <CAJKfDDFSWCnqVdnyjaYhFE5gRUQ8_5+Fd7wij1-k5BF5Q8JRkg@mail.gmail.com>
Subject: Re: early warning I hope
To: blinux-list <blinux-list@redhat.com>
X-MC-Unique: KB3u7wBHNhibhRkL-7pmjA-1
X-MC-Unique: xxRZHqEpNxm4x0xEHufSZA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RG8geW91IHJlYWxpemUgdGhhdCBhcmNobGludXggaXMgaW50ZW5kZWQgdG8gYWR2YW5jZWQgdXNl
cnMgYW5kIHRoYXQgYQpyb2xsaW5nIHJlbGVhc2UgbWlnaHQgYnJlYWsgdGhpbmdzIGFueXRpbWUg
d2hlbiBhIGJsaW5kIHVzZXIgYWJzb2x1dGVseQpjYW4ndCB1c2UgaGlzIGNvbXB1dGVyIGlmIHRo
ZSBhY2Nlc3NpYmlsaXR5IHRvb2xzIGhlIG5lZWQgZG9uJ3Qgd29yayA/CgpPbiB0aGUgb3RoZXIg
c2lkZSwgU2xpbnQgaXMgU2xhY2t3YXJlIGJhc2VkLCBvdXQgb2YgdGhlIDUgbWFqb3JzCmRpc3Ry
aWJ1dGlvbnMgYmFzZXMsIGl0J3Mgb25lIG9mIHRoZSB0d28gZmFyIGxlc3MgdXNlZCBzbyB0aGUg
dXNlciBoYXZlCmJhcmVseSBubyBjb21tdW5pdHkgdG8gaGVscCBoaW0gaW4gY2FzZSBvZiBpc3N1
ZXMuCgpTbyBEZWJpYW4gbWFrZSBzZW5zZSBzaW5jZSBpdCdzIHRoZSBiYXNlIG9mIDgwJSBvZiBh
bGwgZGlzdHJpYnV0aW9ucyBzbwppdCdzIGJ5IGZhciB0aGUgd2lkZXN0IGNvbW11bml0eSBzbyBz
dXBwb3J0IGlzIGEgbm8gYnJhaW5lciwgYWxzbyBEZWJpYW4KbmFtZSBpcyBzdGFiaWxpdHkgYW5k
IGJsaW5kcyBuZWVkIGl0IGF0IHBvaW50IHdheSBoaWdoZXIgdGhhbiBhdmVyYWdlCmVuZC11c2Vy
cy4KClVidW50dSBNYXRlIHN0YWJpbGl0eSBpcyBsb3dlciBzbyBMVFMgdmVyc2lvbnMgYXJlIGhl
YXZpbHkgcmVjb21tZW5kZWQgZm9yCmJsaW5kcywgZm9yIHJlZ3VsYXIgbm90IGJsaW5kIGVuZC11
c2VycyB2ZXJzaW9uIDE5LjEwIGhhdmUgYW4gZWRnZSBmb3IgYQpmZXcgZmVhdHVyZXMgYnV0IHRo
ZXkgc2hvdWxkIHN3YXAgYW5kIGtlZXAgMjAuMDQgTFRTIGFzIHNvb24gYXMgcmVsZWFzZWQuCgpG
b3Igb3V0ZGF0ZWQgYWNjZXNzaWJpbGl0eSBzdGFjayBpdCdzIG1vc3RseSBmYWxzZSwgRGViaWFu
IHN0YWJsZSB3aXRoCmJhY2twb3J0cyBvciBEZWJpYW4gdGVzdGluZyBhcmUgZXZlbiBtb3JlIHVw
ZGF0ZWQgdGhhbiBVYnVudHUgYWZ0ZXIgYWxsClVidW50dSBpcyBiYXNlZCBmcm9tIERlYmlhbiB0
ZXN0aW5nIGJ1dCBpdCdzIHNsaWdodGx5IG91dGRhdGVkIHNpbmNlIHRoZXkKaGF2ZSB0byBtYWtl
IGEgcmVsZWFzZSBmaXJzdC4KCktub3BwaXggQWRyaWFubmUgaXMgbm90IHN1aXRlZCBmb3IgYW4g
aW5zdGFsbGVkIHNldHVwLgoKRm9yIGxvdyB2aXNpb24gdXNlcnMgYW5kIGNvbG9yIGJsaW5kcywg
TWF0ZSB0d2VhayBhbGxvdyB0byBhZGQgQ29tcGl6IHRoYXQKYWRkIGNvbG9yIGZpbHRlcnMgY29s
b3IgaW52ZXJzaW9uIGFuZCBtYWduaWZpY2F0aW9uIHNob3J0Y3V0cy4KCkZvciB0aGUgcmVzdCwg
d2l0aG91dCBrbm93aW5nIGZlYXR1cmVzIEkgd2FubmEgaW1wbGVtZW50LCB5b3UgbWF5IHVuZGVy
bG9vawpEZWJpYW4gYnV0IHdpdGggdGhlbSwgaXQgbWF5IGJlIGdhbWUgY2hhbmdlciBidXQgSSB3
b24ndCBoYW5kIG15IGpld2VscwpjYXVzZSBJIG5lZWQgdG8gcmVsZWFzZSBhIHdob2xlIHNldCBv
ZiBpZGVhcyBhcyBhIHByb29mIG9mIGNvbmNlcHQsCm90aGVyd2lzZSBpZGlvdHMgd291bGQgd2Fz
dGUgaWRlYXMgdGhhdCBjb3VsZCBjaGFuZ2UgZXZlcnl0aGluZyBhbmQgc29sdmUKbWFueSBsaW51
eCBpc3N1ZXMgYXQgdGhlIHNhbWUgdGltZS4KCk1pY2hhw6tsIENhcm9uIENvdXR1cmllcgoKCkxl
IG1hci4gMTggZsOpdnIuIDIwMjAsIMOgIDA0IGggMDcsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPApibGludXgtbGlzdEByZWRoYXQuY29tPiBhIMOpY3JpdCA6Cgo+IEkganVz
dCByYW4gYSBrZXJuZWwgdXBkYXRlIGEgZmV3IG1pbnV0ZXMgYWdvIG9uIGFyY2hsaW51eCBhbmQg
dHJpZWQKPiByZWJvb3RpbmcuCj4gU29tZSB1dWlkIGNhbm5vdCBiZSBmb3VuZCBhbmQgSSBnb3Qg
dGhyb3duIGludG8gYW4gZW1lcmdlbmN5IHNoZWxsLiAgQWxsCj4gb2YgdGhpcyBvZiBjb3Vyc2Ug
d2l0aG91dCBzY3JlZW4gcmVhZGVyIHdvcmtpbmcuCj4gSSBmb3VuZCB0aGlzIG91dCBhcyBhIHJl
c3VsdCBvZiB0YWxraW5nIHRvIGEgYmUgbXkgZXllcyB2b2x1bnRlZXIgb24gdGhlCj4gcGhvbmUg
YWZ0ZXIgc2hlIGV4YW1pbmVkIG15IHNjcmVlbi4KPiBJIGhhdmUgbm8gaWRlYSB3aGF0IGNhdXNl
ZCB0aGF0IGFuZCBoYXZlIG1pbmltYWwgdXNiIHN0dWZmIGNvbm5lY3RlZCB0bwo+IHRoZSBjb21w
dXRlci4gIEkgaGFkIGRpc2Nvbm5lY3RlZCBhIGZsYXNoIGRyaXZlIGZyb20gdGhlIGNvbXB1dGVy
IHRoaW5raW5nCj4gdGhlIGZsYXNoIGRyaXZlIHdhcyB0aGUgY2F1c2Ugb2YgdGhlIG1pc3Npbmcg
dXVpZCBidXQgdGhhdCB3YXNuJ3QgdGhlCj4gY2FzZS4KPiBGb3J0dW5hdGVseSBJIHVzZSBzb2xp
ZCBzdGF0ZSBkcml2ZXMgYW5kIGhhdmUgYW5vdGhlciBkaWZmZXJlbnQgc3lzdGVtIG9uCj4gb25l
IG9mIHRoZW0gb3IgSSdkIGJlIG9mZmxpbmUgZm9yIGEgd2hpbGUuCj4gVGhlIHZvbHVudGVlciBk
aWRuJ3QgcmVhZCBtZSB0aGUgbG9uZyBudW1iZXIgYWZ0ZXIgdGhhdCB1dWlkIGVycm9yLgo+Cj4K
Pgo+IC0tCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

