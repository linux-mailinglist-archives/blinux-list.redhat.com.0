Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id D2A441F8A9D
	for <lists+blinux-list@lfdr.de>; Sun, 14 Jun 2020 22:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592166159;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xt1QMG2qjqyvs/tq6tTcxmPG8fSBu7IF3waJQbfTG1g=;
	b=K7vv/RxcIt4WeYn+VvJApTds7KaXXNFhIxC3FlQ8lSDCAPER5gu3+RLRN5EgqwlRyBt4DC
	6dVYUKcgh6Os/mt7RCj60QPnOIauNY/93AC+6dEH69oThozPur/4QeOKeSV/5s30mC6EA/
	GXr5f5KkOoUszQYaIQvyPI6SsbfVJmo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-484-PKrJb3-CO6W2hvtx-MzBLA-1; Sun, 14 Jun 2020 16:22:11 -0400
X-MC-Unique: PKrJb3-CO6W2hvtx-MzBLA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9888F1030981;
	Sun, 14 Jun 2020 20:22:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ED20F7CAB4;
	Sun, 14 Jun 2020 20:22:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E746E833A0;
	Sun, 14 Jun 2020 20:22:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EKLs8C032031 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 16:21:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 66E57110F393; Sun, 14 Jun 2020 20:21:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62262110F392
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 20:21:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6C929800655
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 20:21:52 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-127-07mffxqCMfyZMNJynaqoYQ-1; Sun, 14 Jun 2020 16:21:49 -0400
X-MC-Unique: 07mffxqCMfyZMNJynaqoYQ-1
Received: by mail-oi1-f179.google.com with SMTP id t25so14032089oij.7
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 13:21:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=ISWX31Bmh3MJ3K1mRO5vrmqlLh06zp84IjUNhLZ1Ar0=;
	b=ZlkaB8pFdHbGaXpR03yxr3gOqQd+qCg88bF7GII3eSdNNDKkZvKoBdzaU+YCqO3DPF
	IzgV9z3xUhI7PqILGZBPOwewSlV4EgGmG69NS6VTDiabPmJ7b+SBuweNy4W0/V5Fc/zz
	VgGAQUG9WJcZHe6MpFWzmAZnMzmL/sVqTh9uWQJGASeWxfTFY3SBld8zsPRGPYMSzeTf
	fFVDCxA7FEt3wlVeVEdL0ctR/QXkrAOzNVZk4k0IgUgZPuj8SKwpZRjKm1s6+7NEmASd
	uEmGwzDezHme49xVIKqlMKk5+QEsofVPl4snwJm0Sn5JGxSKoHp/cSmSDY3PkQ43+w2T
	UcBg==
X-Gm-Message-State: AOAM531GC0N0zDRbiziJbhiRlO1gko3X5pLg4Ic8RQfXWHhbIpgvtQQK
	abU2SG84ei73Q1+Op+Fdm0bG/8YTQZw=
X-Google-Smtp-Source: ABdhPJwPbMKUUXNKMSnpppwYbMuyjytFcRf9IWTranowXya3zteU2ivbQbYsVUJEEsVbs6uivYaaWA==
X-Received: by 2002:aca:5190:: with SMTP id f138mr6810817oib.177.1592166108574;
	Sun, 14 Jun 2020 13:21:48 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:65c8:3c65:c272:f700?
	([2601:3c2:8200:9360:65c8:3c65:c272:f700])
	by smtp.gmail.com with ESMTPSA id k84sm3026840oia.3.2020.06.14.13.21.47
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 14 Jun 2020 13:21:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Sun, 14 Jun 2020 15:21:46 -0500
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<20200614173508.GA2180@rednote.net>
	<6ED533D5-1AE5-49D2-AD98-C4F461ECC938@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <6ED533D5-1AE5-49D2-AD98-C4F461ECC938@gmail.com>
Message-Id: <B3F158A2-DD70-411D-A7CF-C31CD45D8730@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05EKLs8C032031
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q291bGQgdGhhdCBoYXZlIGJlZW4gQmlsbCBBY2tlcj8KCj4gT24gSnVuIDE0LCAyMDIwLCBhdCAx
OjA5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPiB3cm90ZToKPiAKPiBIaSwgSeKAmW0gcGFzc2luZyB0aGlzIGFsb25nIHRvIGEg
YmxpbmQgYW5kIEFyY3RpYyBwZXJzb24uIFNoZSBydW5zIGFuZHJvaWQgZGlzY3VzcyBhIG1haWxp
bmcgbGlzdC4gSeKAmXZlIGFscmVhZHkgc2VudCBoZXIgYSBwcml2YXRlIG5vdGUgdGhhdCBlc3Nl
bnRpYWxseSBzYWlkIHRoaXMuIEFib3V0IExlbm94LiBJIGluIGFuIGV4dHJlbWVseSBzbWFsbCB3
YXkgbWVudGlvbmVkIHRvIGhlciB0aGF0IG9uZSBvZiB0aGUgbGlzdCBtZW1iZXJzIGluIGZhY3Qg
dGhlIHBlcnNvbiBJ4oCZbSByZXNwb25kaW5nIHRvIGFuZCBJIG1ldCB2aWNhcmlvdXNseSB0aHJv
dWdoIGEgbGF0ZSBhbWF0ZXVyIHJhZGlvIG9wZXJhdG9yLiBXaG8gbGl2ZWQgaW4gRGVudmVyIHRh
dWdodCBtZSBhIGxvdCB0aGF0IEkga25vdyBvZiBYLiBJIHdhcyBqdXN0IHNpdHRpbmcgaGVyZSBn
ZXR0aW5nIGFib3V0IHRoZSBwYXN0IGJyaWVmbHkuIEkgc2FpZCB0byB0aGUgZmluYWwgdm90ZSB0
aGF0IHBlcnNvbiBpcyBubyBsb25nZXIgd2l0aCB1cy4gSGUgaXMgY2VydGFpbmx5IG5vdCBmb3Jn
b3R0ZW4uIEJlIHdlbGwgZXZlcnlvbmUuCj4gCj4gU2luY2VyZWx5IE1hdXJpY2UgTWluZXMuCj4g
Cj4+IE9uIEp1biAxNCwgMjAyMCwgYXQgMTA6MzUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+PiAKPj4gSSBiZWxpZXZl
IHRoZSByZWFzb24gdGhlcmUncyBubyBPcmNhIG9uIExpbnV4IGlzIGJlY2F1c2UgdGhlIFVJIGxh
eWVyIG9uCj4+IEFuZHJvaWQgaXMgYmFzZWQgb24gSmF2YSwgd2hlcmVhcyBPcmNhIGlzIGEgR05P
TUUvR1RLIGFwcGxpY2F0aW9uLgo+PiAKPj4gU28sIHllcywgdGhleSBib3RoIGhhdmUgTGludXgg
dW5kZXIgdGhlIGhvb2Q7IGJ1dCB0aGF0J3MgYWJvdXQgdGhlCj4+IGV4dGVudCBvZiB0aGUgc2lt
aWxhcml0eS4KPj4gCj4+IFBTOiBBbHNvIGxhY2tpbmcgb24gQW5kcm9pZCBpcyBzY3JlZW4gcmVh
ZGVyIGFjY2VzcyB0byBhbnl0aGluZyB0ZXJtaW5hbAo+PiBiYXNlZC4gVGFsa2JhY2ssIGJlaW5n
IEphdmEgYmFzZWQgYW5kIG9iamVjdCBvcmllbnRlZCwgaXNuJ3QgbGlrZWx5IGV2ZXIKPj4gdG8g
c3VwcG9ydCB0ZXJtaW5hbCBhcHBsaWNhdGlvbnMgb24gQW5kcm9pZC4gWWV0LCBxdWl0ZSBhIGZl
dyB1c2Vycwo+PiB3b3VsZCBsb3ZlIHRvIGJyaW5nIHVwIGEgYmFzaCBwcm9tcHQgb24gdGhlaXIg
QW5kcm9pZCBkZXZpY2VzLAo+PiBlc3BlY2lhbGx5IHRvIHNzaCBvdXQgdG8gYW4gZXh0ZXJuYWwg
TGludXguCj4+IAo+PiBTcFtlYWt1cCBpcyB1bmxpa2VseSB0byB3b3JrIHdlbGwgZm9yIHRoYXQs
IGFzIEdvb2dsZSdzIExpbnV4IGtlcm5lbAo+PiBzZWVtcyBwcmV0dHkgc3BlY2lmaWMgdG8gd2hh
dCB0aGV5IGNvbnNpZGVyIGltcG9ydGFudCwgdmlzIGEgdmlzCj4+IHN1cHBvcnRpbmcgYWxsIExp
bnV4IGtlcm5lbCBtb2R1bGVzLiBQZXJoYXBzIHdoZW4gU3BlYWt1cCBmaW5hbGx5IGV4aXN0cwo+
PiBTdGFnaW5nIGFuZCBiZWNvbWVzIHBhcnQgb2YgdGhlIExpbnV4IGtlcm5lbCwgdGhpcyBtYXkg
YmUgYW4gb3B0aW9uLgo+PiAKPj4gRmFyIG1vcmUgcHJhY3RpY2FsLCBpbW8sIGlzIEZlbnJpci4g
SSBoYXZlIHNvbWV0aW1lcyB0aG91Z2h0IG9mIHB1dHRpbmcKPj4gdG9nZXRoZXIgYW4gQW5kcm9p
ZCBidWlsZCBlbnZpcm9ubWVudCB0byBzZWUgd2hldGhlciBJIGNvdWxkIGdldCBGZW5yaXIKPj4g
dG8gcnVuIG9uIEFuZHJvaWQtLWJ1dCBJJ2QgYmUgcGVyZmVjdGx5IGhhcHB5IHNob3VsZCBzb21l
b25lIGVsc2UgZ2V0Cj4+IHRoZXJlIGZpcnN0ISA8c21pbGU+Cj4+IAo+PiBCZXN0LAo+PiAKPj4g
SmFuaW5hCj4+IAo+PiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyaXRlczoK
Pj4+IEkndmUgYmVlbiBkb2luZyBzb21lIHdlYiBjcmF3bGluZywgdHJ5aW5nIHRvIGdldCBhbiBp
ZGVhIG9mIHRoZSBwcm9zcGVjdHMKPj4+IGZvciBhIGJsaW5kLWFjY2Vzc2libGUsIChtb3N0bHkp
IG9wZW4gc291cmNlIE9TIGZvciBBbmRyb2lkIEhXIGRldmljZXMuCj4+PiAKPj4+IFRoZSByZXN0
IG9mIHRoaXMgbWVzc2FnZSBpcyBhIG1pc2htYXNoIG9mIGxpbmtzIGFuZCBub3RlczsgaWYgYW55
b25lIGNhbgo+Pj4gcHJvdmlkZSBhZGRpdGlvbnMgYW5kIGNvcnJlY3Rpb25zLCBJJ2QgYmUgbW9z
dCBncmF0ZWZ1bC4uLgo+Pj4gCj4+PiAtcgo+Pj4gCj4+PiAjIEF2YWlsYWJpbGl0eQo+Pj4gCj4+
PiBUaGUgQW5kcm9pZCBhcHBsaWNhdGlvbiBwYWNrYWdlIChBUEspIGlzIHRoZSBHb2xkZW4gUGF0
aCBmb3IgZGlzdHJpYnV0aW9uLAo+Pj4gYnV0IHNvbWUgR29vZ2xlIFBsYXkgYXBwcyBhcmVuJ3Qg
YXZhaWxhYmxlIHRvICJyb290ZWQiIEFuZHJvaWQgcGhvbmVzOgo+Pj4gCj4+PiBTYWZldHlOZXQg
RXhwbGFpbmVkOiBXaHkgQW5kcm9pZCBQYXkgYW5kIE90aGVyIEFwcHMgRG9u4oCZdCBXb3JrIG9u
IFJvb3RlZCBEZXZpY2VzCj4+PiBodHRwczovL3d3dy5ob3d0b2dlZWsuY29tLzI0MTAxMgo+Pj4g
Cj4+PiBJdCB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgYSBMaW51eC1mcmllbmRseSB0b29sIChlLmcu
LCBBUFQpIGFzIGFuIGFsdGVybmF0aXZlLgo+Pj4gTWVhbndoaWxlLCBzb21lIHBhY2thZ2VzIGFy
ZSBhdmFpbGFibGUgdmlhIG1pY3JvRyAoaHR0cHM6Ly9taWNyb2cub3JnKS4KPj4+IAo+Pj4gIyBB
Y2Nlc3NpYmlsaXR5Cj4+PiAKPj4+ICMjIEFuZHJvaWQKPj4+IAo+Pj4gVGhlIEdvbGRlbiBQYXRo
IGZvciBhMTF5IHNlZW1zIHRvIGJlIHRoZSBBbmRyb2lkIEFjY2Vzc2liaWxpdHkgU3VpdGUsIGF2
YWlsYWJsZQo+Pj4gb24gdGhlIEdvb2dsZSBQbGF5IFN0b3JlOgo+Pj4gCj4+PiBodHRwczovL3Bs
YXkuZ29vZ2xlLmNvbS9zdG9yZS9hcHBzL2RldGFpbHM/aWQ9Y29tLmdvb2dsZS5hbmRyb2lkLm1h
cnZpbi50YWxrYmFjawo+Pj4gCj4+PiBNb3JlIGdlbmVyYWwgaW5mb3JtYXRpb24gaXMgYXZhaWxh
YmxlIG9uIHRoZSBBbmRyb2lkIGFjY2Vzc2liaWxpdHkgb3ZlcnZpZXcgcGFnZToKPj4+IAo+Pj4g
aHR0cHM6Ly9zdXBwb3J0Lmdvb2dsZS5jb20vYWNjZXNzaWJpbGl0eS9hbmRyb2lkL2Fuc3dlci82
MDA2NTY0P2hsPWVuCj4+PiAKPj4+ICMjIENlbGlhCj4+PiAKPj4+IFRoaXMgc2VlbXMgaW50ZXJl
c3RpbmcsIGV2ZW4gdGhvdWdoIGl0IChjdXJyZW50bHkpIG9ubHkgc3VwcG9ydHMgQ2hpbmVzZS4K
Pj4+IEhvd2V2ZXIsIGl0IChhbmQgRU1VSSkgYXJlIHByb3ByaWV0YXJ5Lgo+Pj4gCj4+Pj4gQ2Vs
aWEgaXMgYW4gYXJ0aWZpY2lhbGx5IGludGVsbGlnZW50IHZpcnR1YWwgYXNzaXN0YW50IGRldmVs
b3BlZCBieSBIdWF3ZWkKPj4+IGZvciBpdHMgbGF0ZXN0IEFuZHJvaWQtYmFzZWQgRU1VSSBzbWFy
dHBob25lcyB0aGF0IGxhY2sgR29vZ2xlIFNlcnZpY2VzCj4+PiBhbmQgYSBHb29nbGUgQXNzaXN0
YW50Lgo+Pj4gCj4+PiAtLSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9DZWxpYV8oVmly
dHVhbF9hc3Npc3RhbnQpCj4+PiAKPj4+ICMjIFNjcmVlbiBSZWFkZXJzLCBldGMuCj4+PiAKPj4+
IFRhbGtCYWNrIGFuZCBCcmFpbGxlQmFjayAoYm90aCBmb3VuZCBpbiB0aGUgQW5kcm9pZCBBY2Nl
c3NpYmlsaXR5IFN1aXRlKQo+Pj4gc2VlbSB0byBiZSB0aGUgR29sZGVuIFBhdGggZm9yIGJsaW5k
LWZyaWVuZGx5IEFuZHJvaWQgc3VwcG9ydC4KPj4+IAo+Pj4gRGVzcGl0ZSB0aGlzIHRpdGxlLCB0
aGVyZSBkb2Vzbid0IGFwcGVhciB0byBiZSBhbnkgQVBLIHZlcnNpb24gb2YgT3JjYToKPj4+IAo+
Pj4gT3JjYSBEb3dubG9hZCBmb3IgTGludXggKGFwaywgZGViLCBlb3BrZywgcnBtLCB0Z3osIHR4
eiwgeHosIHpzdCkKPj4+IGh0dHBzOi8vcGtncy5vcmcvZG93bmxvYWQvb3JjYQo+Pj4gCj4+PiBN
b3JlIGdlbmVyYWxseSwgSSBjYW4ndCBmaW5kIGFueSBvcGVuIHNvdXJjZSBzY3JlZW4gcmVhZGVy
cyBsaXN0ZWQgZm9yIEFQSzoKPj4+IAo+Pj4gU2VhcmNoIFJlc3VsdHMgZm9yICJzY3JlZW4gcmVh
ZGVyIgo+Pj4gaHR0cHM6Ly9wa2dzLm9yZy9zZWFyY2gvP3E9JTIyc2NyZWVuJTIwcmVhZGVyJTIy
Cj4+PiAKPj4+ICMgT1MgRmFtaWx5IFRyZWUKPj4+IAo+Pj4gVEw7RFI6IFRoZXJlIGFyZSBsb3Rz
IG9mIChhbGwgb3IgbW9zdGx5KSBmcmVlIE9TIHZhcmlhbnRzLCBidXQgdGhlaXIgYTExeQo+Pj4g
c3VwcG9ydCBpcyBleHRyZW1lbHkgbGltaXRlZC4gIEFsc28sIG1hbnkgb2YgdGhlbSBhcmUgb25s
eSBpbnRlbmRlZCB0byBiZQo+Pj4gdXNlZCBvbiBhIHNpbmdsZSB2ZW5kb3IncyBkZXZpY2VzLgo+
Pj4gCj4+PiBBbnl3YXksIGhlcmUgaXMgYW4gT1MgZmFtaWx5IHRyZWUgb2Ygc29ydHMsIHdpdGgg
aW5mb3JtYXRpb25hbCBsaW5rcy4KPj4+IEl0J3MgYmFzZWQgb24gV2lraXBlZGlhJ3MgIkxpc3Qg
b2YgY3VzdG9tIEFuZHJvaWQgZGlzdHJpYnV0aW9ucyIKPj4+IChodHRwczovL2VuLndpa2lwZWRp
YS5vcmcvd2lraS9MaXN0X29mX2N1c3RvbV9BbmRyb2lkX2Rpc3RyaWJ1dGlvbnMpLAo+Pj4gc3Vw
cGxlbWVudGVkIHdpdGggaW5mb3JtYXRpb24gZ2xlYW5lZCBmcm9tIGFzc29ydGVkIHdlYiBzaXRl
cyAoWU1NVikuCj4+PiAKPj4+IExpbnV4ICAgICAgICAgICAgICAgICAgIC0gaHR0cHM6Ly9lbi53
aWtpcGVkaWEub3JnL3dpa2kvTGludXhfa2VybmVsCj4+PiAtIEFPU1AgICAgICAgICAgICAgICAg
ICAtIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0FuZHJvaWRfKG9wZXJhdGluZ19zeXN0
ZW0pI0FPU1AKPj4+IC0gLSBDb25xdWVyT1MgICAgICAgICAgIC0gaHR0cHM6Ly9naXRodWIuY29t
L0NvbnF1ZXJPUy9tYW5pZmVzdAo+Pj4gLSAtIENvcHBlcmhlYWRPUyAgICAgICAgLSBodHRwczov
L2VuLndpa2lwZWRpYS5vcmcvd2lraS9Db3BwZXJoZWFkT1MKPj4+IC0gLSBDeWFub2dlbk1vZCAg
ICAgICAgIC0gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvQ3lhbm9nZW5Nb2QKPj4+IC0g
LSAtIExpbmVhZ2VPUyAgICAgICAgIC0gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvTGlu
ZWFnZU9TCj4+PiAtIC0gLSAtIENyRHJvaWQgICAgICAgICAtIGh0dHBzOi8vZW4ud2lraXBlZGlh
Lm9yZy93aWtpL0NyRHJvaWQKPj4+IC0gLSAtIC0gUHJvamVjdCBTYWt1cmEgIC0gaHR0cHM6Ly9z
b3VyY2Vmb3JnZS5uZXQvcHJvamVjdHMvcHJvamVjdHNha3VyYS9maWxlcy9NaWRvCj4+PiAtIC0g
LSAtIFJlcGxpY2FudCAgICAgICAtIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1JlcGxp
Y2FudF8ob3BlcmF0aW5nX3N5c3RlbSkKPj4+IC0gLSAtIC0gLSAvZS8gICAgICAgICAgIC0gaHR0
cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvL2UvXyhvcGVyYXRpbmdfc3lzdGVtKQo+Pj4gLSAt
IERlcnBGZXN0ICAgICAgICAgICAgLSBodHRwczovL2RlcnBmZXN0Lm9yZwo+Pj4gLSAtIEVtdGVy
aWEuT1MgICAgICAgICAgLSBodHRwczovL2VtdGVyaWEuY29tCj4+PiAtIC0gRU1VSSAgICAgICAg
ICAgICAgICAtIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0VNVUkKPj4+IC0gLSBFdm9s
dXRpb25YICAgICAgICAgIC0gaHR0cHM6Ly9ldm9sdXRpb24teC5vcmcvIwo+Pj4gLSAtIEZseW1l
ICAgICAgICAgICAgICAgLSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9NZWl6dSNGbHlt
ZQo+Pj4gLSAtIEdyYXBoZW5lT1MgICAgICAgICAgLSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcv
d2lraS9HcmFwaGVuZU9TCj4+PiAtIC0gR1NJICAgICAgICAgICAgICAgICAtIGh0dHBzOi8vc291
cmNlLmFuZHJvaWQuY29tL3NldHVwL2J1aWxkL2dzaQo+Pj4gLSAtIEhhdm9jLU9TICAgICAgICAg
ICAgLSBodHRwczovL3NvdXJjZWZvcmdlLm5ldC9wcm9qZWN0cy9oYXZvYy1vcwo+Pj4gLSAtIElv
biBPUyAgICAgICAgICAgICAgLSBodHRwczovL3NvdXJjZWZvcmdlLm5ldC9wcm9qZWN0cy9pLW8t
bgo+Pj4gLSAtIE1vS2VlICAgICAgICAgICAgICAgLSBodHRwczovL2Rvd25sb2FkLm1va2VlZGV2
LmNvbQo+Pj4gLSAtIE1JVUkgICAgICAgICAgICAgICAgLSBodHRwczovL2VuLndpa2lwZWRpYS5v
cmcvd2lraS9NSVVJCj4+PiAtIC0gTVNNLVh0ZW5kZWQgICAgICAgICAtIGh0dHBzOi8vc291cmNl
Zm9yZ2UubmV0L3Byb2plY3RzL3h0ZW5kZWQgIAo+Pj4gLSAtIE9tbmlST00gICAgICAgICAgICAg
LSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9PbW5pUk9NCj4+PiAtIC0gT3h5Z2VuT1Mg
ICAgICAgICAgICAtIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL094eWdlbk9TCj4+PiAt
IC0gUGFyYW5vaWQgQW5kcm9pZCAgICAtIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1Bh
cmFub2lkX0FuZHJvaWRfKHNvZnR3YXJlKQo+Pj4gLSAtIFBpeGVsIEV4cGVyaWVuY2UgICAgLSBo
dHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9QaXhlbF9FeHBlcmllbmNlCj4+PiAtIC0gUmVh
bG1lICAgICAgICAgICAgICAtIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1JlYWxtZQo+
Pj4gLSAtIFNtYXJ0aXNhbiBPUyAgICAgICAgLSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lr
aS9TbWFydGlzYW5fT1MKPj4+IC0gLSBWaXBlck9TICAgICAgICAgICAgIC0gaHR0cHM6Ly9kb3du
bG9hZC52aXBlcm9zLm9yZy8jCj4+PiAKPj4+ICMgU3RhcnRpbmcgUG9pbnRzCj4+PiAKPj4+IE15
IHN1c3BpY2lvbiBpcyB0aGF0IHRoZSBMaW5lYWdlT1MsIFJlcGxpY2FudCwgYW5kIC9lLyBmbGF2
b3JzIGFyZSB0aGUKPj4+IG1vc3QgcHJvbWlzaW5nIHN0YXJ0aW5nIHBvaW50cywgYnV0IEkgY291
bGQgY2VydGFpbmx5IGJlIHdyb25nLiAgSWYgeW91Cj4+PiBrbm93IG9mIHNvbWV0aGluZyB5b3Ug
dGhpbmsgaXMgYmV0dGVyLCBwbGVhc2UgbGV0IG1lIGtub3chCj4+PiAKPj4+IFNwZWFraW5nIG9m
IHdoaWNoLCB0aGUgZGVmaW5pdGlvbiBvZiAiYmV0dGVyIiBpcyB2ZXJ5IGNvbnRleHQtZGVwZW5k
ZW50Lgo+Pj4gSWYgYXZvaWRpbmcgYW55IGFuZCBhbGwgcHJvcHJpZXRhcnkgc29mdHdhcmUgaXMg
eW91ciBnb2FsLCBSZXBsaWNhbnQgbWF5Cj4+PiBiZSB0aGUgYmVzdCBjaG9pY2UuICBJZiB5b3Ug
d2FudCBpbnN0YW50IGdyYXRpZmljYXRpb24sIHlvdSBtaWdodCB3YW50Cj4+PiB0byBwdXJjaGFz
ZSBhIHBob25lIHRoYXQgYWxyZWFkeSBoYXMgL2UvIGluc3RhbGxlZC4uLgo+Pj4gCj4+PiBBbHNv
LCBpZiB5b3UncmUgb25seSB1c2luZyBXaS1GaSBmb3IgY29ubmVjdGl2aXR5LCB5b3UgY2FuIGln
bm9yZSBzb21lCj4+PiBjZWxsIHBob25lIGlzc3VlcyAoZS5nLiwgQ0RNQSwgRkRNQSwgYW5kIFRE
TUEgc2lnbmFsIGVuY29kaW5nKS4KPj4+IAo+Pj4gIyMgUmVwbGljYW50Cj4+PiAKPj4+IC0gaHR0
cHM6Ly9yZXBsaWNhbnQudXMvCj4+PiAtIGh0dHBzOi8vcmVwbGljYW50LnVzL2Fib3V0LnBocCNm
YXEKPj4+IC0gaHR0cHM6Ly9yZXBsaWNhbnQudXMvZnJlZWRvbS1wcml2YWN5LXNlY3VyaXR5LWlz
c3Vlcy5waHAKPj4+IC0gaHR0cHM6Ly9yZXBsaWNhbnQudXMvc3VwcG9ydGVkLWRldmljZXMucGhw
Cj4+PiAKPj4+IC0gaHR0cHM6Ly9yZWRtaW5lLnJlcGxpY2FudC51cy9wcm9qZWN0cy9yZXBsaWNh
bnQvd2lraS9EZXZpY2VTdGF0dXMKPj4+IAo+Pj4gIyMgTGluZWFnZU9TCj4+PiAKPj4+IC0gaHR0
cHM6Ly9saW5lYWdlb3Mub3JnCj4+PiAtIGh0dHBzOi8vbGluZWFnZW9zLm9yZy9ibG9nCj4+PiAt
IGh0dHBzOi8vd2lraS5saW5lYWdlb3Mub3JnCj4+PiAtIGh0dHBzOi8vd2lraS5saW5lYWdlb3Mu
b3JnL2ZhcS5odG1sCj4+PiAKPj4+ICMjIC9lLwo+Pj4gCj4+PiAtIGh0dHBzOi8vZG9jLmUuZm91
bmRhdGlvbi9kZXZpY2VzLwo+Pj4gLSBodHRwczovL2RvYy5lLmZvdW5kYXRpb24vd2hhdC1zLWUK
Pj4+IAo+Pj4gLSBodHRwczovL2UuZm91bmRhdGlvbgo+Pj4gLSBodHRwczovL2UuZm91bmRhdGlv
bi9hYm91dC1lCj4+PiAtIGh0dHBzOi8vZS5mb3VuZGF0aW9uL2Fib3V0LWUvI3doeS0vZS8KPj4+
IAo+Pj4gCj4+PiAKPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+PiAKPj4gLS0gCj4+IAo+PiBKYW5pbmEgU2Fqa2EKPj4gCj4+IExpbnV4IEZvdW5kYXRp
b24gRmVsbG93Cj4+IEV4ZWN1dGl2ZSBDaGFpciwgQWNjZXNzaWJpbGl0eSBXb3JrZ3JvdXA6CWh0
dHA6Ly9hMTF5Lm9yZwo+PiAKPj4gVGhlIFdvcmxkIFdpZGUgV2ViIENvbnNvcnRpdW0gKFczQyks
IFdlYiBBY2Nlc3NpYmlsaXR5IEluaXRpYXRpdmUgKFdBSSkKPj4gQ2hhaXIsIEFjY2Vzc2libGUg
UGxhdGZvcm0gQXJjaGl0ZWN0dXJlcwlodHRwOi8vd3d3LnczLm9yZy93YWkvYXBhCj4+IAo+PiAK
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6
Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0

