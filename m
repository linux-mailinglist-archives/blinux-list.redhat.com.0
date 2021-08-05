Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 24CEA3E0C76
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 04:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628130648;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MugDGjiYURbodvl7rUDEqd3b+0u8250GBb+pzBCrdBI=;
	b=eKT1wOB5PGgsG9V8swiC2gTEU/GrfMDpQt2y5MRUxxeR9dgcQekiyU2s/C4an46gjq5+U6
	BX4JPnIwT35LOPoy/yozLtTWYIaFvSIeNllBjcH5zC301FCCO/PpDL24WFB+H4TrH5KOPk
	RxFwFTUMeS9AaTWvHE2stdxIxepDZRQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-318-NS6gxOOaN2eVktQOZlIToQ-1; Wed, 04 Aug 2021 22:30:46 -0400
X-MC-Unique: NS6gxOOaN2eVktQOZlIToQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A21F802922;
	Thu,  5 Aug 2021 02:30:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 623FF5C1A1;
	Thu,  5 Aug 2021 02:30:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B27818095C2;
	Thu,  5 Aug 2021 02:30:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1752UZbH006991 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 22:30:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 066451032BF; Thu,  5 Aug 2021 02:30:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 012611032B8
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 02:30:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EFA9289B849
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 02:30:29 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-579-TFDWYyNLNAig2KcDXwtaSA-1; Wed, 04 Aug 2021 22:30:28 -0400
X-MC-Unique: TFDWYyNLNAig2KcDXwtaSA-1
Received: by mail-oi1-f172.google.com with SMTP id o185so5395412oih.13
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 19:30:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=Vdoo+0qwWW60+qZj/NJiUWgXOSysO6W0RK/B89HwEjE=;
	b=uhOFjJiGvRUKwcYeGrZcXv7kGmyBgK7Gm+TssUPYE5jxAVuHz+29W1SEBcobyp/hjK
	Nj8RzDWpOr7bZae1BzEUAzweklyS8GysD+nZjyVM+/zv5P5LPx22VIpC1kitzqX3ICYl
	6ZitO+gR+IkEWfU1KXDa9Y9f1ymuUfcY9LVdlUvt+TW29SHqt5G5HvJ39EM5P+scQinc
	ePXkh4ZEDLkykYEdiM3m6o1tdEOWg4u94Iiv6+yrUiC9kj/VCn3l5EhTXabBCieqDuV5
	WUHPyGWp0l+mm7vXIdCMBo6Ao2Rd0N8L5TAOR5Vq7imLMVrctUTaskDLP3vixP13DcHH
	xucQ==
X-Gm-Message-State: AOAM533dcdvHLCx7l8KwJ/y6gca0evmBZ1ONnMcW+QRYL+47NV5Yn+GH
	HXooly3fh3Ifpfzyjq1kvhJL0/mfK+M=
X-Google-Smtp-Source: ABdhPJwMKj/fXEq9KDtvWE3SSrBWRCLNkOvoeqrccfxD9hcXbCNo0LwVpVWUypZcueZVjNvumHsVpQ==
X-Received: by 2002:aca:6706:: with SMTP id z6mr1757438oix.135.1628130627337; 
	Wed, 04 Aug 2021 19:30:27 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:45c9:39c8:e5af:5000])
	by smtp.gmail.com with ESMTPSA id u14sm744947oth.73.2021.08.04.19.30.26
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Aug 2021 19:30:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Wed, 4 Aug 2021 21:30:26 -0500
References: <B9F8B793-E7C7-445B-91D4-27AE5BE5C394@gmail.com>
	<50777D22-914C-4419-983C-1EB067198F3E@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <50777D22-914C-4419-983C-1EB067198F3E@gmail.com>
Message-Id: <5D8E2A74-079F-43CA-8350-F160F66BEB26@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1752UZbH006991
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXMgU29sdXMgYmFzZWQgb24gYXJjaD8KCj4gT24gQXVnIDQsIDIwMjEsIGF0IDk6MTAgUE0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+
IHdyb3RlOgo+IAo+IEJlZm9yZSB5b3UgdHJ5IHRoYSwgeW91IG1heSBoYXZlIHRvIHNldCB1cCBw
b3dlciBidXR0b24gYmVoYXZpb3IgaW4gc2V0dGluZ3MuICBZb3UgY291bGQgZ2V0IHRoZXJlIGJ5
IGhpdHRpbmcgInN1cGVyIiBhbmQgdHlwaW5nICJwb3dlciIsIGFuZCBmaW5kaW5nIHRoZSBzZXR0
aW5ncyB3aXRoIHlvdXIgYXJyb3dzIGFuZCBzdHVmZi4gIEkgZGlkIGEgbGl0dGxlIG1vcmUgcGxh
eSB3aXRoIEJ1ZGdpZSwgb24gdGhlIGxpdmUgc3lzdGVtIGFuZCBmaW5kIHRoYXQgdGhlICdydW4n
IGRpYWxvZyBpcyBpbmFjY2Vzc2libGUuICBOb3QgYSBibG9ja2VyLCBidXQsIGFuIGFubm95aW5n
IGRpc2NvdmVyeS4KPiAKPiBNYXliZSBJJ2xsIHRocm93IEJ1ZGd5IG9yIEdOT01FIG9uIHRoZSBw
cm9ib29rLiBJJ20gaW50ZXJlc3RlZCBpbiB3aGV0aGVyIHRoZSBzcGVlY2ggY3JhY2tsaW5zIGdv
IGF3YXkuICBJIHRoaW5rIHlvdSBtZW50aW9uZWQgdGhhdCB0aGV5IGRvbid0IHNob3cgaW4geW91
ciBpbnN0YWxsZWQgQnVkZ2llIHN5c3RlbT8KPiAKPiBDaGVlcnMsCj4gCj4gRGF2ZSBILgo+IAo+
IAo+IAo+IFNlbnQgZnJvbSBteSBpUGhvbmUKPiAKPj4gT24gQXVnIDQsIDIwMjEsIGF0IDk6MDIg
UE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhh
dC5jb20+IHdyb3RlOgo+PiAKPj4g77u/SSB3aWxsIHRyeSB0aGF0Lgo+PiBJIGhhdmUgYSB0aGlu
ayBwYWQgd2hpY2ggd2FzLCB1bnRpbCBhIGNvdXBsZSBkYXlzIGFnbywgYSB3aW5kb3dzIHRlbiBt
YWNoaW5lLgo+PiBOb3cgaXQgaXMgbGludXguCj4+IAo+Pj4gT24gQXVnIDQsIDIwMjEsIGF0IDc6
MzAgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+IHdyb3RlOgo+Pj4gCj4+PiBZb3UgY291bGQgaGl0IHRoZSBwb3dlci1vZmYgYnV0
dG9uLCBhbmQgaXQgd2lsbCBhc2sgd2hhdCB5b3Ugd2FudCB0byBkby4KPj4+IAo+Pj4gCj4+PiAt
LSAgRGF2ZSAgLS0KPj4+IAo+Pj4gCj4+PiAKPj4+IFNlbnQgZnJvbSBteSBMZW5vdm8gVGhpbmtw
YWQsIHJ1bm5pbmcgU2xpbnQgR05VL0xpbnV4LiAgaHR0cHM6Ly9zbGludC5mciBmb3IgaW5mbwo+
Pj4gCj4+Pj4gT24gOC80LzIxIDc6NTIgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4+Pj4gQSB2ZXJ5IGJhc2ljIHF1ZXN0aW9uLCBob3cgbWF5IEkgc2h1dGRv
d24gb3IgcmVzdGFydCBhIGJ1ZGdpZSBzeXN0ZW0/Cj4+PiAKPj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gCj4+IAo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+IAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0

