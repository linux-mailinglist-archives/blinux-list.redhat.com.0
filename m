Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CDEFA3B0749
	for <lists+blinux-list@lfdr.de>; Tue, 22 Jun 2021 16:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624371698;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dB955zWf+DloaKWFbr40prjYCvLzM3FIzM2NHTpU4hQ=;
	b=db96McKXZtoarmYjC/cP7HQT4jz2cE0gLCEpJuYKzAIC0xbfpGrBGWNjLUBiYK4A7b4S0j
	TrpgxSxnV68StfRkKqVY6TK+X/zyLwYGOm02qNe/+sYHcDs7jJh37zJzpnvPxjhsVdQcWg
	Q4jasvPezrC2+Q6aMji4HL/qG3syKgk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-229-Ef0LT8HvNTOzBIn-4jn1Yg-1; Tue, 22 Jun 2021 10:21:37 -0400
X-MC-Unique: Ef0LT8HvNTOzBIn-4jn1Yg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A1CFD1882FAA;
	Tue, 22 Jun 2021 14:21:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8AF245D9DE;
	Tue, 22 Jun 2021 14:21:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EC4A21809C99;
	Tue, 22 Jun 2021 14:21:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15MEGjL2017412 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 22 Jun 2021 10:16:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B6C4B200D8DF; Tue, 22 Jun 2021 14:16:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B2B772026990
	for <blinux-list@redhat.com>; Tue, 22 Jun 2021 14:16:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6AB5818A01A9
	for <blinux-list@redhat.com>; Tue, 22 Jun 2021 14:16:42 +0000 (UTC)
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-326-SlJYM6ywMbasiREHftCMrg-1; Tue, 22 Jun 2021 10:16:40 -0400
X-MC-Unique: SlJYM6ywMbasiREHftCMrg-1
Date: Tue, 22 Jun 2021 14:16:33 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: making an accessible version of Nushell
Message-ID: <4c93f3ee-a8db-48eb-3675-ebd73d83e4b4@protonmail.com>
In-Reply-To: <39E7FC5D-C61C-4EE2-8199-F0D94711EF71@cfcl.com>
References: <39E7FC5D-C61C-4EE2-8199-F0D94711EF71@cfcl.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 15MEGjL2017412
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGV5IHRoZXJlLAoKaG1tLCB0aGlzIHNvdW5kcyBkZWZpbml0ZWx5IGludGVyZXN0aW5nIQoKCkkg
d2FudGVkIHRvIG1ha2Ugc29tZXRoaW5nIHNpbWlsYXIgbXlzZWxmLCBhcyB0aGUgY3VycmVudCBz
dGF0ZSBpcwpxdWl0ZS4uLiBwcm9ibGVtYXRpYy4KCkxpa2UgeWVzLCB3ZSBjYW4gcmVhZCB0aGUg
b3V0cHV0IG9mIHRlcm1pbmFsIHdpdGggT3JjYSdzIGZsYXQgcmV2aWV3LApidXQgdGhhdCdzIGxp
a2UgYWxsIGFib3V0IGl0LgoKV2hlbiBpdCBjb21lcyB0byBzdHJ1Y3R1cmVzLCBsaWtlIHRhYmxl
cywgcmVhZGluZyB0aGVtIGlzIHJlYWxseSBhIHBhaW4uCgpUaGVyZSBhcmUgdGhlIGZ1bmN0aW9u
cyB0byBuYXZpZ2F0ZSB0byB0aGUgd29yZCBhYm92ZSBhbmQgYmVsb3csIHRoYXQncwpoYW5keSwg
YnV0IGl0IHRha2VzIHF1aXRlIGEgbG90IG9mIHRpbWUgdG8gbW92ZSAoZmV3IHNlY29uZHMpIGFu
ZCB3aGVuCnRoZSBkaXNwbGF5IGlzIHJlZnJlc2hpbmcsIHRoZSBmbGF0IHJldmlldyBjdXJzb3Ig
Z2V0cyBsb3N0IGNvbXBsZXRlbHkKYWZ0ZXIgc29tZSB0aW1lLgoKCk15IE9yY2EgdmVyc2lvbiBp
cyBzdGlsbCAzLjM5LjEgcHJlLCBtYXkgYmUgSSBzaG91bGQgdHJ5IHRvIHVwZGF0ZSB0bwptYXN0
ZXIgdG8gc2VlIGlmIHNvbWV0aGluZyBoYXMgYmVlbiBkb25lIGFib3V0IHRoaXMsIEkgdGhpbmsg
SSBzYXcgc29tZQpkaXNjdXNzaW9uIGFib3V0IHJld29ya2luZyB0aGUgZmxhdCByZXZpZXcgaWYg
SSByZW1lbWJlciBjb3JyZWN0bHkuCgoKQmVzdCByZWdhcmRzCgoKUmFzdGlzbGF2CgoKRMWIYSAy
MS4gNi4gMjAyMSBvIDIyOjI0IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFw
w61zYWwoYSk6Cj4gTnVzaGVsbCAoaHR0cHM6Ly93d3cubnVzaGVsbC5zaCkgaXMgYSByZS1pbWFn
aW5lZCBzaGVsbCBmb3IgTGludXggKGV0Yykgc3lzdGVtcy4gIFRoZXJlIGFyZSBhIG51bWJlciBv
ZiB0aGluZ3MgdG8gbGlrZSBhYm91dCBpdCwgSU1ITy4gIEZpcnN0LCBpdCBhdHRlbXB0cyB0byBo
YW5kbGUgcHJvZ3JhbSBvdXRwdXQgYXMgc3RydWN0dXJlZCBkYXRhLiAgVGhpcyBtZWFucyB0aGF0
LCBmb3IgZXhhbXBsZSwgdGFidWxhciBvdXRwdXQgY2FuIGJlIGZpbHRlcmVkLCBzb3J0ZWQsIGV0
Yy4gIEl0IGlzIGFsc28gYmVpbmcgd3JpdHRlbiBpbiBSdXN0LCB3aGljaCBzaG91bGQgaGVscCB0
byBwcmV2ZW50IGEgbGFyZ2UgY2xhc3Mgb2Ygc2VjdXJpdHkgaXNzdWVzLgo+Cj4gSG93ZXZlciwg
dGhlIHVzZSBvZiB0ZXh0LWJhc2VkIGxheW91dCBmb3IgdGFidWxhciBvdXRwdXQgaXNuJ3Qgd2Vs
bCBzdWl0ZWQgZm9yIHVzZSB3aXRoIHNjcmVlbiByZWFkZXJzLCBldGMuICBTbywgSSBwb3N0ZWQg
YW4gaXNzdWUgb24gdGhlIE51c2hlbGwgR2l0IHJlcG9zaXRvcnksIHN1Z2dlc3RpbmcgdGhhdCBz
b21lb25lIGxvb2sgaW50byB0aGUgbm90aW9uIG9mIGNyZWF0aW5nIGEgd2ViLWJhc2VkIHZlcnNp
b24uICBIYXBwaWx5LCBzb21lIHdvcmsgaGFzIGFscmVhZHkgYmVlbiBkb25lIG9uIHRoaXMsIG1v
c3RseSB0byBzdXBwb3J0IGFuIG9ubGluZSBkZW1vLgo+Cj4gSWYgeW91IGZpbmQgdGhpcyB0byBi
ZSBpbnRlcmVzdGluZywgeW91IG1pZ2h0IHdhbnQgdG8gYnJvd3NlIG92ZXIgdG8gdGhlaXIgc2l0
ZXMgYW5kIGNoZWNrIG91dCB3aGF0IHRoZXkgaGF2ZSBzbyBmYXIuICBTcGVjaWZpYyBzdWdnZXN0
aW9ucyBvbiB3YXlzIHRvIG1ha2UgdGhlIGludGVyZmFjZSB3b3JrIGJldHRlciB3aXRoIHNjcmVl
biByZWFkZXJzIChldGMpIHdvdWxkIGJlIHZlcnkgdmFsdWFibGUuICBIZXJlIGFyZSBzb21lIGxp
bmtzOgo+Cj4gaHR0cHM6Ly93d3cubnVzaGVsbC5zaAo+IGh0dHBzOi8vd3d3Lm51c2hlbGwuc2gv
ZGVtbwo+Cj4gaHR0cHM6Ly9naXRodWIuY29tL251c2hlbGwvbnVzaGVsbAo+IGh0dHBzOi8vZ2l0
aHViLmNvbS9udXNoZWxsL251c2hlbGwvaXNzdWVzLzM2NjMKPgo+IC1yIChSaWNoIE1vcmluKQo+
Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

