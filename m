Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C55E591C90
	for <lists+blinux-list@lfdr.de>; Sat, 13 Aug 2022 22:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660422238;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OKcr2f0HdO5aphIZzpe/7MD9zNsE1UL3OMzYEE0fbEI=;
	b=hagT/jv8l51mrdUb33RsCgs14rmlx7ptmwsyYV6XumrAL7vHW5JOTrk0YXXdlo7HdC9w7Q
	7bl/3NRf8c5xYoCGpXxWrDAtYUvDGAKqlxTrTq/mFopfzgz1XrkmKb4Wn6efKK2OBT7487
	zReKRsFyW0n3cY737vSh14XhfTPAuJI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-67-6doWaC2mPw2fY_dRRVzCIw-1; Sat, 13 Aug 2022 16:23:55 -0400
X-MC-Unique: 6doWaC2mPw2fY_dRRVzCIw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 99AED3C025BB;
	Sat, 13 Aug 2022 20:23:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1B5C7400DFD7;
	Sat, 13 Aug 2022 20:23:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7C5F41946A4B;
	Sat, 13 Aug 2022 20:23:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: Karen Lewellen <klewellen@shellworld.net>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
 <Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net>
 <871qtkrs03.fsf@zamazal.org>
 <Pine.LNX.4.64.2208131430230.1254020@server2.shellworld.net>
Date: Sat, 13 Aug 2022 22:04:32 +0200
In-Reply-To: <Pine.LNX.4.64.2208131430230.1254020@server2.shellworld.net>
 (Karen Lewellen's message of "Sat, 13 Aug 2022 14:36:36 -0400 (EDT)")
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Message-ID: <mailman.420.1660422232.10501.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Cc: Blinux-list@redhat.com, speakup@linux-speakup.org
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Pj4+Pj4gIktMIiA9PSBLYXJlbiBMZXdlbGxlbiA8a2xld2VsbGVuQHNoZWxsd29ybGQubmV0PiB3
cml0ZXM6CgogICAgS0w+IG1heSBJIGFzayBmcm9tIHdoZXJlIGhlIG9idGFpbmVkIGhpcyBzb2Z0
d2FyZSBlbmdpbmVlcmluZwogICAgS0w+IGRlZ3JlZT8gIFN0dWRpZWQgY29tcHV0ZXIgc2NpZW5j
ZT8gIFBlcmhhcHMgZGlzYWJpbGl0eSBzdHVkaWVzPwogICAgS0w+IHRoZXJlIGFyZSBjZXJ0YWlu
bHkgc2NvcmVzIG9mIGRpc2FibGVkIGluZGl2aWR1YWxzIHdpdGggdGhlc2UKICAgIEtMPiB2YXJp
b3VzIGxldmVscyBvZiBxdWFsaWZpY2F0aW9uLi5ldmVuIHdobyBhcmUgTGludXggdXNlcnMuICBU
aGUKICAgIEtMPiBpbnRlcnZpZXcgZGlkIG5vdCBkb2N1bWVudCBhIHNpbmdsZSBvbmUsIG91dHNp
ZGUgb2YgaGlzCiAgICBLTD4gZXhwZXJpZW5jaW5nIGJsaW5kbmVzcy4ud2hpY2ggaXMgbm90IGdv
aW5nIHRvIGluc3VyZSBoZSBjcmVhdGVzCiAgICBLTD4gYW4gYWNjZXNzaWJsZSBwbGF0Zm9ybSBm
b3IgZmVkb3JhIHNpbmNlIGFjY2VzcyByZWZlcnMgdG8gc2V2ZXJhbAogICAgS0w+IHBvcHVsYXRp
b25zLiAgYW5kIGhlIHN0YXRlcyBoZSBrbm93cyBub3RoaW5nIGFib3V0IHRob3NlLgoKSSBoYXZl
IGFscmVhZHkgc2FpZCByZWdhcmRpbmcgdGhpcyB3aGF0IEkgZmVsdCB3YXMgbmVlZGVkIGFuZCBJ
IGRvbuKAmXQKZmluZCBhcHByb3ByaWF0ZSBjb250aW51aW5nIHRoYXQgZGlzY3Vzc2lvbiBoZXJl
LiAgSeKAmWQgc3VnZ2VzdCBmb2N1c2luZwpvbiBob3cgdG8gaW1wcm92ZSBmcmVlIHNvZnR3YXJl
IGFjY2Vzc2liaWxpdHkgaW5zdGVhZC4KCklmIGFueWJvZHkgY2FyZXMgYWJvdXQgRmVkb3JhIGFj
Y2Vzc2liaWxpdHksIHRoZXJlIGlzIGFsd2F5cyBvcHBvcnR1bml0eQp0byBoZWxwIGJ5IHByb3Zp
ZGluZyBmaXhlcyB0byByZXBvcnRlZCBidWdzLCBnaXZpbmcgdGVjaG5pY2FsIGFkdmljZSBvcgpm
aWxpbmcgYnVncyBvbiBub3QgeWV0IHJlcG9ydGVkIGlzc3Vlcy4gIEFsbCBvZiB0aGVzZSBpcyBu
ZWVkZWQsIGl04oCZcwpzb21ldGltZXMgZGlmZmljdWx0IHRvIG1vdmUgb24gd2l0aCBzb21lIGlz
c3VlcyBhbmQgdG8gZ2V0IGFueSBoZWxwLgpPVE9IIHRyeWluZyB0byBkZW1vdGl2YXRlIHBlb3Bs
ZSB3aG8gd29yayBvbiBhY2Nlc3NpYmlsaXR5IGlzIGNlcnRhaW5seQpub3QgaGVscGZ1bC4KClJl
Z2FyZHMsCk1pbGFuCgogICAgS0w+IE9uIFNhdCwgMTMgQXVnIDIwMjIsIE1pbGFuIFphbWF6YWwg
d3JvdGU6CgogICAgPj4+Pj4+PiAiS0wiID09IEthcmVuIExld2VsbGVuIDxrbGV3ZWxsZW5Ac2hl
bGx3b3JsZC5uZXQ+IHdyaXRlczoKICAgID4+IAogICAgS0w+IFdoYXQgYm90aGVycyBtZSBtb3N0
IGFyZSBoaXMgbGFjayBvZiBhY3R1YWwgcXVhbGlmaWNhdGlvbnMsIGFuZAogICAgS0w+IGFic29s
dXRlIGRpc21pc3NhbCBvZiB3aGF0IGhlIGhhcyBub3QgZXhwZXJpZW5jZWQuLmFzIGlmIGhlCiAg
ICBLTD4gZGVmaW5lcyBMaW51eCB1c2FnZSBmb3IgZXZlcnlvbmUuICBUaGF0IGF0dGl0dWRlIGlz
IGRhbmdlcm91cywKICAgIEtMPiBiZWNhdXNlIGhlIGlzIGVkdWNhdGluZyB0aG9zZSBvdXRzaWRl
IG9mIHRoZSBhY2Nlc3NpYmlsaXR5CiAgICBLTD4gZXhwZXJpZW5jZXMsIHdobyB3aWxsIGJlbGll
dmUgaGlzIGlnbm9yYW5jZSBpcyBmYWN0dWFsLiAgaGUgaGFzCiAgICBLTD4gdG8gYmUgZXhwZXJ0
LCBpdCBpcyBoaXMgam9iLgogICAgPj4gCiAgICA+PiBIaSBLYXJlbiwKICAgID4+IAogICAgPj4g
SSBrbm93IEx1a2FzIHBlcnNvbmFsbHkgYW5kIEkgYWRtaXJlIGhpcyBza2lsbHMgYW5kCiAgICA+
PiBxdWFsaWZpY2F0aW9ucy4gIEkgYWxzbyBrbm93IGZpcnN0IGhhbmQgdGhhdCBoZSBpcyBvcGVu
IHRvCiAgICA+PiBjb25zdHJ1Y3RpdmUgZmVlZGJhY2sgYW5kIEkgYmVsaWV2ZSBoZeKAmWQgYmUg
aGFwcHkgdG8gYmUgY29ycmVjdGVkCiAgICA+PiBhYm91dCBwb3NzaWJsZSB0ZWNobmljYWwgaW5h
Y2N1cmFjaWVzIGluIHRoZSBpbnRlcnZpZXcuICBJdCBtYXkKICAgID4+IGJlIGFsc28gYSBnb29k
IG9wcG9ydHVuaXR5IHRvIGZpbmQgb3V0IHdoYXTigJlzIHBvc3NpYmx5IG1pc3NpbmcgaW4KICAg
ID4+IG1ha2luZyBhbnlib2R5IGJldHRlciBpbmZvcm1lZC4KICAgID4+IAogICAgPj4gQXMgZm9y
IOKAnGFic29sdXRlIGRpc21pc3NhbCBvZiB3aGF0IGhlIGhhcyBub3QgZXhwZXJpZW5jZWTigJ0s
IHdoYXQKICAgID4+IHJlYXNvbmFibGUgZnJlZSBzb2Z0d2FyZSBhbHRlcm5hdGl2ZXMgdG8gYSBs
ZXNzIG9yIG1vcmUgc3RhbmRhcmQKICAgID4+IGRlc2t0b3Agd2l0aCBPcmNhIGFuZCBhIHNvZnR3
YXJlIHN5bnRoZXNpemVyIGNhbiB5b3Ugc2VlIGZvciBhCiAgICA+PiBjb21tb24gYmxpbmQgdXNl
ciB3aG8gbmVlZHMgdG8gdXNlIGEgZnVsbHkgd29ya2luZyB3ZWIgYnJvd3NlciwKICAgID4+IHRv
IHJlYWQgYW5kIHByb2Nlc3MgdGV4dCBkb2N1bWVudHMsIHRvIGJlIGNvbXBhdGlibGUgd2l0aCBv
dGhlcgogICAgPj4gY29tcHV0ZXIgdXNlcnMsIGV0Yy4/CiAgICA+PiAKICAgID4+IEFuZCBsZXTi
gJlzIGJlIHJlYWxpc3RpYy4gIFdlIGNlbGVicmF0ZSBldmVyeSBzaW5nbGUgZGV2ZWxvcGVyCiAg
ICA+PiBoaXJlZCB0byBpbXByb3ZlIGFjY2Vzc2liaWxpdHkuICBUaGlzIHRlbGxzIHNvbWV0aGlu
ZyBhYm91dCB0aGUKICAgID4+IHN0YXRlIG9mIHRoZSBtYXR0ZXJzLiAgV2UgY2Fubm90IGV4cGVj
dCB0aGF0IGEgc2luZ2xlIHBlcnNvbiB3aWxsCiAgICA+PiBmaXggYWxsIHRoZSBraW5kcyBvZiBh
Y2Nlc3NpYmlsaXR5IHByb2JsZW1zIGluIGFsbCB0aGUKICAgID4+IGVudmlyb25tZW50cy4gIEx1
a2FzIHdvcmtzIGF0IGhpcyBqb2IgZm9jdXNpbmcgb24gY2VydGFpbiBhcmVhcwogICAgPj4gY3Vy
cmVudGx5IHNlZW4gdGhlcmUgYXMgdXJnZW50IG9uZXMgYW5kIEkgYXBwcmVjaWF0ZSB0aGlzCiAg
ICA+PiBvcHBvcnR1bml0eS4gIEFueWJvZHkgZWxzZSBzZWVpbmcgYSBuZWVkIHRvIHdvcmsgb24g
b3RoZXIgYXJlYXMKICAgID4+IGlzIHdlbGNvbWUgdG8gY29udHJpYnV0ZSB0byB3aGF0ZXZlciBz
ZWVzIGZpdCwgYXMgSSBkby4KICAgID4+IAogICAgPj4gUmVnYXJkcywgTWlsYW4KICAgID4+IAog
ICAgPj4gCiAgICA+PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

