Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F97441074
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 20:28:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635708503;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jyFoYjhEdGYsvrXJPPcP1Ok6wApsjZpEBkG+82mgRak=;
	b=dgMq/VBQSjtta8hQGelh6qmbfrZlF42FJ4gWt6KmY93i951/HvEKG5pw7Q8a0BqoovW5kQ
	1TXccJfcAEIllbK0Lfl77pqMArZrcw86Njd52wafCzSwcJoaAkC0K2Ki5IhZ3b43wYlu+h
	oLf8C0o1CVBYOz0/MUVXuVJkuvE7bbs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-164-tqQKmNOBN8mGh2nBdQqbtA-1; Sun, 31 Oct 2021 15:28:19 -0400
X-MC-Unique: tqQKmNOBN8mGh2nBdQqbtA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8312B1006AA2;
	Sun, 31 Oct 2021 19:28:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 075A42AF6D;
	Sun, 31 Oct 2021 19:28:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DF9C61806D03;
	Sun, 31 Oct 2021 19:28:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VJS9rH024763 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 15:28:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CF5BE40CFD10; Sun, 31 Oct 2021 19:28:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA71D40CFD0F
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 19:28:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7EF15801212
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 19:28:09 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-257-hbDm4OzEMsSplqgqEaWvkQ-1; Sun, 31 Oct 2021 15:28:07 -0400
X-MC-Unique: hbDm4OzEMsSplqgqEaWvkQ-1
Received: by mail-qt1-f176.google.com with SMTP id t40so14089070qtc.6
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 12:28:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
	:message-id:references:in-reply-to:subject:to;
	bh=ElVX5D/flZNs8avUa6ovMCQFWxyW4sCHlX2Uyoz0/Mc=;
	b=Mie7eSo7sgBUI9GrIKp7EtzVD7uN5SbOtRSXysRuD78tgcpIvkaOP9lky/YUi002Td
	5K5cBDgfSnFAZhMT7djnmEm7iHXAF1saXtJ9TUDhAGroxY8g+NRbq+zqr+/gruQCeMyt
	PKyAjvJ9ZHEv+s1R0lKOQp3NNJis23B1UfglB0Ng6j6HzCakNiFlW/bUhxLCp3+P9M0D
	qCsCELrzO/jC85f6ZNnVl9OFydDVpIRF+qgRyyNsiGCdk5Mp8x1tTAKextMFZX9O9Zvd
	ly+MHLaivZx2p7j4rNZiKlCPmL0HSYpgFP3FCluAjqG/YdUEbNn2s3zLadvQYtPjKMKE
	Jssw==
X-Gm-Message-State: AOAM533UUAx0/3FGiJuKcaiSaAZ7I4SpIKgvBYrgEa80qR3XKIHEA7jQ
	5rWll8owzxvUer792eJ2Lsjup5V3Ae7Rrw==
X-Google-Smtp-Source: ABdhPJzMYoaqC1ZtBFCiYl/2ycfZba2RldngpYAFzjgMivn2jzseVERftHwKOYy0FIhPG65JH9aJGA==
X-Received: by 2002:a05:622a:18a6:: with SMTP id
	v38mr25235765qtc.208.1635708486611; 
	Sun, 31 Oct 2021 12:28:06 -0700 (PDT)
Received: from smtpclient.apple ([2601:152:4000:330:3d67:a2de:171e:2190])
	by smtp.gmail.com with ESMTPSA id
	h17sm2616250qtx.64.2021.10.31.12.28.05 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 31 Oct 2021 12:28:06 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 31 Oct 2021 15:28:05 -0400
Message-Id: <8182AB42-45DC-4800-8F7F-AA4D5D5CEB7F@gmail.com>
References: <2ecf58b4-4c80-0018-4c80-93d5dcf4d476@slint.fr>
In-Reply-To: <2ecf58b4-4c80-0018-4c80-93d5dcf4d476@slint.fr>
Subject: Re: have any of you mannaged to successfully install linux alongside
	with windows?
To: blinux-list@redhat.com
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19VJS9rH024763
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBhbSBnb2luZyB0aHJvdWdoIHRoZSBoYW5kYm9vayBhbmQgdHJ5aW5nIHRvIHVuZGVyc3RhbmQg
dGhlIHZhcmlvdXMgY29uY2VwdHMuIEkgaGF2ZSBub3Qgc2VlbiB0aGUgaW5zdGFsbGF0aW9uIGlu
IGEgdmlydHVhbCBib3ggeWV0LiBJIGFtIHdvbmRlcmluZyBpZiBJIGNhbiBpbnN0YWxsIGl0IG9u
IGEgMzIgb3IgNjQgR0IgVVNCIHN0aWNrLCBvciBkb2VzIGl0IGhhdmUgdG8gYmUgYW4gZXh0ZXJu
YWwgU1NEPwpSZWdhcmRzLApJYnJhaGltCgoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBPY3Qg
MzEsIDIwMjEsIGF0IDI6NDMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IO+7v0hpIElicmFoaW0uCj4gCj4gTm8s
IHRoZXJlIGlzIG5vIGxpdmUgaW5zdGFsbCBmb3IgU2xpbnQuCj4gCj4gSG93ZXZlcjoKPiAKPiAx
KSBCZWZvcmUgeW91IGluc3RhbGwgaXQgb24geW91ciBoYXJkIGRpc2ssIHlvdSBjYW4gaW5zdGFs
bCBhbmQgcnVuIGl0IGluIGEKPiBWaXJ0dWFsQm94IHZpcnR1YWwgbWFjaGluZS4gVGhlbiwgY2hv
b3NlIHRoZSBpbnRlbCBoZCBhdWRpbyBjb250cm9sbGVyIHJpZ2h0Cj4gYWZ0ZXIgdGhlIHZpcnR1
YWwgbWFjaGluZSBjcmVhdGlvbi4gdG8gcHJldmVudCBsb3NzIG9mIHNwZWVjaCBkdXJpbmcKPiBp
bnN0YWxsYXRpb24uCj4gCj4gMikgSWYgeW91IGNhbiBhZmZvcmQgaXQgeW91IGNhbiBpbnN0YWxs
IFNsaW50IGluIGEgZGVkaWNhdGVkIGhhcmQgZHJpdmUgb3IgU1NECj4gd2hpY2ggY2FuIGJlIGFu
IGFuIGludGVybmFsIHNlY29uZCBkcml2ZSBvciBhbiBleHRlcm5hbCBkcml2ZSBVU0IgY29ubmVj
dGVkLgo+IAo+IDMpIFlvdSBjYW4gc2FmZWx5IHNoYXJlIGEgZHJpdmUgYmV0d2VlbiBXaW5kb3dz
IGFuZCBTbGludCwgaWYgV2luZG93cyBib290cyBpbgo+IFVFRkkgbW9kZS4KPiAKPiA0KSBJbiBh
bnkgY2FzZSB0aGUgaW5zdGFsbGVyIHdpbGwgcHJlc2VudHMgeW91IGFsbCBwb3NzaWJpbGl0aWVz
IGZvcgo+IGluc3RhbGxhdGlvbiBhbmQgd2lsbCBsZXQgeW91IHJldmlldyBhbGwgaW5zdGFsbGF0
aW9uIG9wdGlvbnMgYmVmb3JlIHdyaXRpbmcKPiBhbnl0aGluZyBvbiBhIGhhcmQgZGlzay4gSWYg
eW91IGNoYW5nZSB5b3VyIG1pbmQgeW91IHdpbGwgYmUgYWJsZSB0byBjaGFuZ2UKPiBhbnkgb3B0
aW9uLiBJZiB5b3UgZGVjaWRlIHRvIGluc3RhbGwgbGF0ZXIgb3Igbm90IGF0IGFsbCwgYWZ0ZXIg
YSByZWJvb3QgV2luZG93cwo+IHdpbGwgc3RhcnQgYXMgdXN1YWwuCj4gCj4gQWZ0ZXIgaW5zdGFs
bGF0aW9uIHlvdSB3aWxsIGJlIGFibGUgdG8gY2hvb3NlIHdoaWNoIHN5c3RlbSB0byBzdGFydCBh
dCBib290IHVwLgo+IFdoZW4geW91IHdpbGwgaGVhciBhIHNvdW5kIHRlbGxpbmcgeW91IHRoYXQg
dGhlIG1hY2hpbmUgaXMgcmVhZHkgdG8gYm9vdCwganVzdAo+IHByZXNzIEVudGVyIHRvIHN0YXJ0
IFNsaW50IG9yIHByZXNzIGFycm93IGRvd24gdGhlbiBFbnRlciB0byBzdGFydCBXaW5kb3dzLgo+
IAo+IEZlbGwgZnJlZSByZXF1aXJlIG1vcmUgZ3VpZGFuY2UgaW4gb25lIG9mIHRoZSBzdXBwb3J0
IGNoYW5uZWxzIGxpc3RlZCBpbiB0aGUKPiBIYW5kQm9vay4KPiAKPiBIb3BlIHRoaXMgaGVscHMK
PiBEaWRpZXIKPiAtLQo+IERpZGllciBTcGFpZXIKPiBTbGludCBtYWludGFpbmVyCj4gZGlkaWVy
IGF0IHNsaW50IGRvdCBmcgo+IExlIDMxLzEwLzIwMjEgw6AgMTY6NDEsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+PiBUaGFua3MgYSBtaWxsaW9uIERpZGll
ciwKPj4gVGhpcyBpcyBhIGdyZWF0IGhhbmRib29rLiBPbmUgb2YgdGhlIHRoaW5ncyB3aGljaCBk
aXNjb3VyYWdlZCBtZSBmcm9tIGFkb3B0aW5nIGxpbnV4IGluIHRoZSBwYXN0IHdhcyB0aGUgbGFj
ayBvZiBlYXN5IHRvIGZvbGxvdyBkb2N1bWVudGF0aW9ucy4gRXZlcnl0aW1lIEkgdHJpZWQsIEkg
Zm91bmQgbXlzZWxmIGJyb3dzaW5nIGluIGhpZ2hseSB0ZWNobmljYWwgZG9jdW1lbnRzIHRoYXQg
c291bmRlZCBsaWtlIGEgZm9yZWlnbiBsYW5ndWFnZSB0byBtZS4gVGhpcyBoYW5kYm9vayBzZWVt
cyB0byBhdm9pZCB0aGlzIHByb2JsZW0uCj4+IEkgd2lsbCBjZXJ0YWlubHkgdHJ5IHNsaW50LCBp
ZiBpdCBjYW4gYmUgdXNlZCBhcyBhIGxpdmUgaW5zdGFsbCB3aXRob3V0IGhhdmluZyB0byBwaHlz
aWNhbGx5IGluc3RhbGwgb24gbXkgaGFyZCBkaXNjLiBJIHdpbGwgYWxzbyBicm93c2UgdGhpcyBo
YW5kYm9vayB0byBsZWFybiBtb3JlIGFib3V0IHNsaW50Lgo+PiBUaGFua3MgZm9yIHRoaXMuIEkg
d2lsbCBjZXJ0YWlubHkgbmVlZCB5b3VyIGhlbHAgaWYgSSBpbnN0YWxsIGl0IG9uIG15IGhhcmQg
ZGlzYy4gV2hhdCBJIHdhbnQgaWRlYWxseSBpcyB0aGUgYWJpbGl0eSB0byBoYXZlIGJvdGggbGlu
dXggYW5kIHdpbmRvd3MgcnVubmluZyBvbiB0aGUgc2FtZSBtYWNoaW5lLCBhbmQgSSBjaG9vc2Ug
d2hpY2ggb25lIHRvIHN0YXJ0IGF0IGJvb3R1cC4KPj4gUmVnYXJkcywKPj4gSWJyYWhpbQo+PiBP
biAxMC8zMS8yMSA0OjA2IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+Pj4gSGVsbG8gSWJyYWhpbSwKPj4+IHRoaXMgaXMgZWFzaWx5IGRvbmUgd2l0aCBTbGlu
dCwgaWYgV2luZG93cyBib290cyBpbiBFRkkgbW9kZToKPj4+IGh0dHBzOi8vc2xpbnQuZnIvZG9j
L0hhbmRCb29rLmh0bWwKPj4+IENoZWVycywKPj4+IERpZGllcgo+Pj4gLS0KPj4+IERpZGllciBT
cGFpZXIKPj4+IFNsaW50IG1haW50YWluZXIKPj4+IExlIDMxLzEwLzIwMjEgw6AgMDQ6MTgsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+Pj4+IEhlbGxvIGZv
bGtzLAo+Pj4+IEkgaGF2ZSBiZWVuIHBsYXlpbmcgd2l0aCBMaW51eCBtaW50IGFuZCBBY2Nlc3Np
YmxlIENvY29udXQgZm9yIG92ZXIgMjQgaG91cnMuIEkgYW0gZ2V0dGluZyB0byBsaWtlIHRoaXMg
c3lzdGVtLiBIb3dldmVyLCBXaGVuIEkgY29udGVtcGxhdGVkIGluc3RhbGxpbmcgb24gbXkgaGFy
ZCBkaXNrLCBJIGZvdW5kIHRoZSBpbnN0YWxsYXRpb24gcHJvY2VzcyBhIGxpdHRsZSBjb25mdXNp
bmcgYW5kIHNjYXJ5LiBJIGFsd2F5cyByZXZlcnRlZCBiYWNrIGFuZCBhYm9ydGVkIHRoZSBpbnN0
YWxsYXRpb24gdG8gcHJldmVudCBhbiB1bmludGVuZGVkIGRhbWFnZSB0byBteSB3aW5kb3dzIG9w
ZXJhdGluZyBzeXN0ZW0uCj4+Pj4gSWYgYW55IG9mIHlvdSBoYXZlIHN1Y2Nlc3NmdWxseSBtYW5h
Z2VkIHRvIGluc3RhbGwgbGludXggYWxvbmdzaWRlIHdpdGggd2luZG93cyBvbiB0aGUgc2FtZSBo
YXJkIGRpc2ssIHBsZWFzZSBhZHZpc2UgbWUgb24gaG93IHRvIGdvIGFib3V0IGl0IHNhZmVseS4K
Pj4+PiBSZWdhcmRzLAo+Pj4+IElicmFoaW0KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

