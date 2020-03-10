Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 1A17D17F63A
	for <lists+blinux-list@lfdr.de>; Tue, 10 Mar 2020 12:24:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583839472;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/TIYqRcjZnOb0NGFB4uSZ41ujfaUiaOiw1t9OXezeDA=;
	b=idSLHogMTkI7IYh35fqJWevi3lLJI0otuLvhkP8U4Y/2JmYJDykuipRqTxA2CZLmrxFQ+n
	cZeJDJszHkmWQgRsEykx9W6EEvLtTNUwYNdeJz6zabGd7Akr3s9OQH8aU2bUacw8hemRx+
	G+bT26fF2NqWwdPyuRQn/0MgqIRZhrM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-165-HK85NnHnON6P9y5_hRTybQ-1; Tue, 10 Mar 2020 07:24:29 -0400
X-MC-Unique: HK85NnHnON6P9y5_hRTybQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1110800D4E;
	Tue, 10 Mar 2020 11:24:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B499A27184;
	Tue, 10 Mar 2020 11:24:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DC3F086A0A;
	Tue, 10 Mar 2020 11:24:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02ABOHZb023422 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Mar 2020 07:24:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7F2962028DCC; Tue, 10 Mar 2020 11:24:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79DA12028CD5
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 11:24:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BE8408BA52D
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 11:24:14 +0000 (UTC)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-151-RHmCLt5qOkyhNoDZP-MAcw-1; Tue, 10 Mar 2020 07:24:11 -0400
X-MC-Unique: RHmCLt5qOkyhNoDZP-MAcw-1
Received: by mail-io1-f43.google.com with SMTP id r15so12391542iog.0
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 04:24:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=mdu4O9OuTGO2YW3wVF14KrXiTlKtuYqgMvmXNqRHUws=;
	b=oi4DKVLEOZ5wQIJEGYYKGOHm52tV9uFZMM54NKe64CkdxceFK19s6AFA22CVgTrG4w
	wJBKgcLcQpmr/fqDwGMdjeN8ndBEoEbSQMQLNOJaV0WTxiwUnxd/BI3Du6t+z4GNMX95
	+0UitHtDSPY/uUDyDsQLkgkKmwH27zzD90kwPq3iVxW34qMtogzDeSr5ADCX+JheNugQ
	t3uZhli07AScpvp27D8UTfgVDfuhrXX+rInIW0VPdQ7Ov7ChOG6dkg1sItApF8m7wHe8
	z1kVfjcfCfvzuu6E6JL0rnSvU0HuihGOldaYgN+odJ+jDCR73bu7zFC7/efxuElmORck
	MpbQ==
X-Gm-Message-State: ANhLgQ0xog3d61/ouLQRHBeGIfrgH3AaTyss7xPJmMmSmyRXGhTjAPbf
	Gcc3C5bcMKFS1knFbYcHc4Db1h5cTD0diVKae90Img==
X-Google-Smtp-Source: ADFU+vs6ZNlnB3RmrrevemtVowsOmHRx9QTtudSgc18pKXfv/rVvS+o/q0uqXDoQGLexgyMlci36fq20Vmf4a4zxK8A=
X-Received: by 2002:a6b:4f09:: with SMTP id d9mr16852347iob.94.1583839450923; 
	Tue, 10 Mar 2020 04:24:10 -0700 (PDT)
MIME-Version: 1.0
References: <2856df1a-69cb-0a03-d4f0-bf3051b2ab20@gmail.com>
	<ccc1f11e-f015-f66f-c897-e6bbf9c0afc3@crosslink.net>
	<CAPo=n-9HbU7zg09v=fZKLkaq0Tu3M+CQi4FQgKoLN+feKJeiyg@mail.gmail.com>
	<2C30B027-FF78-4791-A129-7BA6865373CB@gmail.com>
In-Reply-To: <2C30B027-FF78-4791-A129-7BA6865373CB@gmail.com>
Date: Tue, 10 Mar 2020 13:23:59 +0200
Message-ID: <CAPo=n-8HcPaP=x9E401U_-sNBSo73QMDG56372GXxds7v9sTOA@mail.gmail.com>
Subject: Re: orca master
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIE9yY2EgbWFzdGVyIHJlZmVycyB0byB0aGUgdmVyeSBsYXRlc3QgdmVyc2lvbiBmcm9tIE9y
Y2HigJlzIGdpdCBzb3VyY2UKY29kZSByZXBvc2l0b3J5LiBTb21lIHBlb3BsZSB1c2UgaXQgZGly
ZWN0bHkgZm9yIHRoZSBsYXRlc3QgZnVuY3Rpb25hbGl0eSwKYnV0IG5vdGUgdGhhdCBpdCBpcyBh
YnNvbHV0ZWx5IGJsZWFkaW5nIGVkZ2UsIHNvIHRoaW5ncyBtaWdodCBnZXQgdW5zdGFibGUKZnJv
bSB0aW1lIHRvIHRpbWUuIEkgYmVsaWV2ZSBzb21lIENocm9taXVtIGNvZGUgaXMgYWxyZWFkeSBp
biB0aGUgbGF0ZXN0Cm9mZmljaWFsIHJlbGVhc2VzIG9mIE9yY2EsIGFuZCB0aGUgYWNjZXNzaWJp
bGl0eSBvZiBDaHJvbWUgaXRzZWxmIGlzIGFsc28Kc3RhcnRpbmcgdG8gdHJpY2tsZSBkb3duIHRv
IG9mZmljaWFsIENocm9tZSByZWxlYXNlcy4gU28gaWYgeW91IGp1c3Qgd2FudAppdCBmb3IgdGhl
IFBERiBzdXBwb3J0LCB5b3UgbWlnaHQgZ2V0IGl0IGluIGEgZmV3IG1vbnRocyBieSBnZW5lcmFs
CnVwZGF0ZXMuCgpJZiB5b3UgaGF2ZSBDaHJvbWUgODAgb3IgbGF0ZXIsIHlvdSBtaWdodCBhbHJl
YWR5IGdldCBpdCB0byB3b3JrIGJ5CmxhdW5jaGluZyBjaHJvbWUgaW4gdGhlIHJ1biBib3ggbGlr
ZSBzbzoKCmNocm9tZSAtLWZvcmNlLXJlbmRlcmVyLWFjY2Vzc2liaWxpdHkKCkknbSB1bmZvcnR1
bmF0ZWx5IG5vdCBjdXJyZW50bHkgaW4gYSBwb3NpdGlvbiB0byBjaGVjayB3aGljaCBvZmZpY2lh
bApyZWxlYXNlIG9mIE9yY2EgY29udGFpbnMgdGhlIGNocm9tZSBzdXBwb3J0LgoKSWYgeW91IHdh
bnQgdG8gZ28gdGhlIE9yY2EgbWFzdGVyIHJvdXRlLCB0aGVyZSBhcmUgaW5zdHJ1Y3Rpb25zIGZv
ciBydW5uaW5nCk9yY2EgbWFzdGVyIGFuZCB0aGUgbGF0ZXN0IENocm9tZSBvbiBPcmNhJ3Mgd2lr
aSBwYWdlLgpZb3UgY2FuIG9mIGNvcmNlIGFsc28gYXNrIGhlcmUgb3Igb24gdGhlIE9yY2EgbWFp
bGluZyBsaXN0IGZvciBoZWxwLgoKUmVnYXJkcywKClJ5bmhhcmR0CgpPbiBUdWUsIDEwIE1hciAy
MDIwLCAxMjo1MiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uLCA8CmJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IHdyb3RlOgoKPiBJIGtub3cgd2hhdCBvcmNhIGlzLCB0aGUgc2NyZWVu
LXJlYWRpbmcgcHJvZ3JhbS4KPiBXaGF0IGlzIG9yY2EgbWFzdGVyCj4KPiA+IE9uIE1hciAxMCwg
MjAyMCwgYXQgMTI6MzIgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+
IGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4KPiA+IFRoZSBiZXN0IFBERiBleHBl
cmlhbmNlIEkga25vdyBhYm91dCBjdXJyZW50bHkgaXMgaWYgeW91IHJ1biBPcmNhIG1hc3Rlcgo+
ID4gd2l0aCB0aGUgbGF0ZXN0IHNuYXBzaG90IG9mIGNocm9taXVtIG9yIENocm9tZS4gVGhlIGJ1
aWx0aW4gUERGIHJlYWRlciBvZgo+ID4gQ2hyb21pdW0gaXMgdmVyeSBuaWNlLCBpdCBwbGFjZXMg
ZXZlcnkgcGFnZSB1bmRlciBhIGRpZmZlcmVudCBsYW5kbWFyayBzbwo+ID4geW91IGNhbiBuYXZp
Z2F0ZSBiZXR3ZWVuIHRoZW0gd2l0aCBtIGFuZCBzaGlmdCttLiBJdCBldmVuIHN1cHBvcnQgYSBm
ZXcKPiBQREYKPiA+IHRhZ3MgYnkgY29udmVydGluZyB0aGVtIHRvIHRoZWlyIEhUTUwgZXF1aXZh
bGVudHMsIGhlYWRpbmdzIGZvciBleGFtcGxlLgo+ID4KPiA+IFJlZ2FyZHMsCj4gPgo+ID4gUnlu
aGFyZHQKPiA+Cj4gPiBPbiBUdWUsIDEwIE1hciAyMDIwLCAwNDowNyBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uLCA8Cj4gPiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
PiA+Cj4gPj4gVWJ1bnR1IE1hdGUgRGVza3RvcCBzZWVtcyB0byBoYXZlIEF0cmlsIERvY3VtZW50
IFZpZXdlci4gIElmIHlvdSBwcmVzcwo+ID4+IEY3IHRvIHR1cm4gb24gY2FyZXQgYnJvd3Npbmcg
aXQgc2VlbXMgdG8gYmUgdXNhYmxlIHdpdGggc29tZSBQREYgZmlsZXMuCj4gPj4gSSBoYXZlIG5v
dCB1c2VkIGl0IGV4dGVuc2l2ZWx5LiAgWW91IGNhbiBhbHNvIHByZXNzIGNvbnRyb2wtYSB0byBz
ZWxlY3QKPiA+PiB0aGUgZW50aXJlIGRvY3VtZW50IGFuZCBwYXN0ZSBpdCBpbnRvIGFuIEVkaXRv
ci4KPiA+Pgo+ID4+Cj4gPj4KPiA+PiBPbiAzLzkvMjAyMCA1OjM2IFBNLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+PiBIZWxsbywKPiA+Pj4KPiA+Pj4KPiA+
Pj4gaXMgdGhlcmUgYW55IGFjY2Vzc2libGUgcGRmIHZpZXdlciBvbiBMaW51eCB3aGljaCBjYW4g
YmUgdXNlZCB3aWh0Cj4gPj4+IE9yY2Egc2NyZWVuIHJlYWRlcj8KPiA+Pj4KPiA+Pj4KPiA+Pj4g
RXZpbmNlIHNlZW1zIG5vdCB0byBiZWxvbmcgdG8gdGhpcyBjYXRlZ29yeS4KPiA+Pj4KPiA+Pj4K
PiA+Pj4gVGhhbmsgeW91IGluIGFkdmFuY2UhCj4gPj4+Cj4gPj4+IFZsYWR5c2xhdgo+ID4+Pgo+
ID4+Pgo+ID4+Pgo+ID4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+ID4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPiA+Pj4KPiA+Pgo+ID4+Cj4gPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

