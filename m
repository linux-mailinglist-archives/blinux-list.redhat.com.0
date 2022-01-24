Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFA7497983
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jan 2022 08:34:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643009660;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+jxXOkSwIYuzTQCjZDUJuS6txjUpsEzijKcotkX5IgA=;
	b=ZnHZXJ0v9RrhAnMgSH8/6GdvmcwGsLXERO9vOvBSPGLk3fSRmJlzFTniAU8lsa1qSzX3BZ
	abmBcYMBnq5RqUFmxkYK7F2Sz4bGyWRFVUxNNL1NMreCmfVAGhCDGoJiEBfW3aHC9vHRLJ
	BqwXaqSd13p6Ci8/lEAXljtf3+X4h88=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-595-QRVd0-CXOt2cAmzgYZAcqA-1; Mon, 24 Jan 2022 02:34:17 -0500
X-MC-Unique: QRVd0-CXOt2cAmzgYZAcqA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1E286344B2;
	Mon, 24 Jan 2022 07:34:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA2425F922;
	Mon, 24 Jan 2022 07:34:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A385E1809CB8;
	Mon, 24 Jan 2022 07:34:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20O7XpE5010517 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 24 Jan 2022 02:33:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E45B940CFD1E; Mon, 24 Jan 2022 07:33:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E019C40CFD0A
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 07:33:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C73048011A5
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 07:33:50 +0000 (UTC)
Received: from hypra.fr (hypra.fr [62.210.38.35]) by relay.mimecast.com with
	ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-634-rV6WcVGsNZ6tzeVLiNUuvg-1; Mon, 24 Jan 2022 02:33:48 -0500
X-MC-Unique: rV6WcVGsNZ6tzeVLiNUuvg-1
Received: from [192.168.0.21] (unknown [78.202.86.116])
	by hypra.fr (Postfix) with ESMTPSA id 18824586148
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 08:33:47 +0100 (CET)
Message-ID: <9216b9e7-08b2-611c-b128-ccfb1615710e@debian.org>
Date: Mon, 24 Jan 2022 08:33:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:98.0) Gecko/20100101
	Thunderbird/98.0a1
To: blinux-list@redhat.com
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
	<469727D8-F6CD-42D8-96C4-88845662340C@gmail.com>
	<e1b844dd-2c47-5217-1978-b775319ea70b@gmail.com>
	<3449a41e-479-d678-f49-310f4c2eff@panix.com>
	<b4515952-fdab-c9e1-4a2e-07c7d2f6c783@gmail.com>
	<54c0dae2-c64-d946-e3-cdc8d9806166@panix.com>
	<Pine.LNX.4.64.2201231331180.1558360@server2.shellworld.net>
	<Ye2nqov4+bgZOyz+@panix.com>
Subject: Re: Favorite out-of-the-box accessible Linux laptops?
In-Reply-To: <Ye2nqov4+bgZOyz+@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20O7XpE5010517
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
Content-Language: fr
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhdCBpcyB3aHkgSHlwcmEgcHJvdmlkZXMgc3VjaCBtYWNoaW5lcywgeWVzLiBUbyBlbmFibGUg
cGVvcGxlIHRvIGhhdmUgCmEgZnVuY3Rpb25hbCBMaW51eCBsYXB0b3AsIGFjY2Vzc2libGUgZm9y
IHRoZSBiZXN0IFVYIHRvZGF5LCB3aXRoIGxvdyBvciAKbm9uIHZpc2lvbiwgd2l0aG91dCBhbnkg
ZWZmb3J0cy4gQW55b25lIGNhbiB0aGVuIGN1c3RvbWl6ZSBvciByZS1kbyB0aGUgCmluc3RhbGxh
dGlvbiwgYnV0IGF0IGxlYXN0IGl0IGV4aXN0cy4gQU5kIGl0IGVuYWJsZWQgbWFueSBwZW9wbGUg
dG8gaGF2ZSAKYW4gYWNjZXNzaWJsZSBjb21wdXRlciwgdW5kZXIgTGludXgsIHdoaWxlIHRoZXkg
ZGlkIG5vdCB3YW50IHRvIGluc3RhbGwgCmFuIE9TLCBhbGwgdGhlIG1vcmUgaW4gdGhlIGN1cnJl
bnQgc2l0dWF0aW9uIHdoZXJlIG1hbnkgbWFjaGluZXMgYmVjb21lIAphIHBhaW4gdG8gYmUgaW5z
dGFsbGVkIGR1ZSB0byB2YXJpb3VzIGxvY2tzLgoKUmVnYXJkcwoKCkplYW4tUGhpbGlwcGUgTUVO
R1VBTApEZWJpYW4gRGV2ZWxvcGVyIG5vbiB1cGxvYWRpbmcKQ29tbXVuaXR5IHRlYW0gbWVtYmVy
CkFjY2Vzc2liaWxpdHkgdGVhbSBtZW1iZXIKZGViaWFuLWwxMG4tZnJlbmNoIHRlYW0gbWVtYmVy
ClByZXNpZGVudCBvZiBEZWJpYW4gRnJhbmNlIG5vbi1wcm9maXQgb3JnYW5pemF0aW9uCgpMZSAy
My8wMS8yMDIyIMOgIDIwOjA4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEg
w6ljcml0wqA6Cj4gSXQgY291bGQgYmUgaWYgdGhvc2Ugd2hvIHRha2UgdGhlIHRyb3VibGUgcHV0
IHRvZ2V0aGVyIGFuIEFjY2Vzc2libGUgTGludXggTGFwdG9wIEluc3RhbGxhdGlvbiBzdGVwIGJ5
IHN0ZXAKPiBmb3IgdGhhdCBwYXJ0aWN1bGFyIGxhcHRvcCBhbmQgdmVyc2lvbiBvZiBMaW51eC4K
PiAKPiBUcnVlLCB0aGVyZSB3b3VsZCBiZSBhIGxvdCBvZiB0aGVtLCBidXQgaWYgY29sbGVjdGVk
IGluIG9uZSBwbGFjZSBpdCBjb3VsZCBiZSBhIHZlcnkgaGVscGZ1bCBzb3VyY2UgZm9yIHRob3Nl
IHdobwo+IHdhbnQgdG8gZ2l2ZSBpdCBhIGdvIHdpdGhvdXQgcmVpbnZlbnRpbmcgdGhlIHdoZWVs
Lgo+IAo+IFJ1ZHkKPiAKPiBPbiBTdW4sIEphbiAyMywgMjAyMiBhdCAwMTozNDo1MFBNIC0wNTAw
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBUaGVyZSBpcyBu
byBzdWNoIHRoaW5nIGFzIGFuIG91dCBvZiB0aGUgYm94IGFjY2Vzc2libGUgcHJvZHVjdCBmb3IK
Pj4gYWJzb2x1dGVseSBldmVyeW9uZS4KPj4gQSBiZXR0ZXIgcXVlc3Rpb24gZm9yIHRoaXMgdGhy
ZWFkIHdvdWxkIGJlIGZhdm9yaXRlIGxhcHRvcCB0aGF0IGNvdWxkIHJ1bgo+PiB3aGF0IHlvdSAg
bmVlZCwgcmF0aGVyIHRoYW4gZ2VuZXJhbGl6aW5nLgo+PiBBbmQgZG8gbm90IGdldCBtZSBzdGFy
dGVkIG9uIHdoYXQgZmVlbHMgbGlrZSBlbGl0aXN0ICB0ZWNobm9sb2d5Cj4+IHByaXZpbGVnZS4u
LndoeSBidXkgYSBtYWNoaW5lICB3aXRoIGEgcHJlaW5zdGFsbGVkIHN5c3RlbSB3aGVuIEkgY2Fu
IGp1c3QgZG8KPj4gaXQgbXlzZWxmPwo+PiBUaGF0IGlzIGluZGl2aWR1YWxpemVkIGtub3dsZWRn
ZSBoYXJkbHkgdHJhbnNmZXJhYmxlIHRvICB0aGUgZ2VuZXJhbCBwdWJsaWMuCj4+Cj4+Cj4+Cj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

