Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8AF6B3DCCCE
	for <lists+blinux-list@lfdr.de>; Sun,  1 Aug 2021 19:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627837245;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hCp8LHV1QWY49JkCbaV9+7NTZXpYeo5w9ZKwFV9Kiks=;
	b=I6ZNEZy64dcKnkf+qOLgju/q8237dR7/5vM10PYCntKbeDAteg+3oSLk6WB9Kk/wiAZxqJ
	/CIkUPa6R8aSOX8P7lVZFdbfIBDUp5kIz2/2g3KKEvXIE6NER5N9/wMeYDQJli2UP5cEwA
	8M42hDUdOauGIFAZxtzgxVVO6XMSA+A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-38-liEJIUnnP5iBhrX5Ykptuw-1; Sun, 01 Aug 2021 13:00:44 -0400
X-MC-Unique: liEJIUnnP5iBhrX5Ykptuw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55C418799E0;
	Sun,  1 Aug 2021 17:00:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB59F69CB7;
	Sun,  1 Aug 2021 17:00:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 71A404BB7B;
	Sun,  1 Aug 2021 17:00:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 171H0PUR031767 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Aug 2021 13:00:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8A8252023A0B; Sun,  1 Aug 2021 17:00:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 868C920239F1
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 17:00:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 366CA185A794
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 17:00:22 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-379-0BczWEnJPVGQ-gJL7XkH3w-1; Sun, 01 Aug 2021 13:00:20 -0400
X-MC-Unique: 0BczWEnJPVGQ-gJL7XkH3w-1
Received: by mail-qv1-f53.google.com with SMTP id x12so7798140qvo.12
	for <blinux-list@redhat.com>; Sun, 01 Aug 2021 10:00:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=amvVQPzz59liDgVCvLqfW//Ou0P99UM4/QdhFDyfUKA=;
	b=gDGjlsrzeHt5XdS9ZJy3rlPUdeBUe/GBN7yosMf7fRad3iMSC3FrAGk7rQh+00riPs
	xP4XLpxXNjTjb7xGEXHKwQu0Z88xDv39zpcSNjFmLTYWlZkZHYhYk9DYp9km5+yW6Z8K
	+q11p49NksrjFpZ0R3gfKnLNFC90w9NQwhUYgYjQXQOArrsRZvlA6bF7rf9uppJJguW9
	NYKzyel0Zwhq7Hy/hXnojpjQ6fb/BKqKL1CTc6hSSYJJgXxEiu/YzVeRftnhnlUdQUzr
	mDpZB2wIJtJ62o4ft4HwdzK98Lkp1cXQa6tC/fi8tZX5mYkpRLb+AKUbuMkGFbT3UDj7
	hp8A==
X-Gm-Message-State: AOAM532JgriUla1p9zRJ6x/eHtzmjv7jUDJbTyvWagOj8KYvsgB85hi6
	kZYMcAYY266SeeOXosVTY0EqWh3Ib2JCdA==
X-Google-Smtp-Source: ABdhPJxQK4FGlMhXvvID9W3yU8ntr94jNtkWLhgMH8nPt/UHh9cXkHx+3uOZNuL7T4GNOUhmc0/QhQ==
X-Received: by 2002:a0c:aacd:: with SMTP id g13mr12647287qvb.20.1627837219384; 
	Sun, 01 Aug 2021 10:00:19 -0700 (PDT)
Received: from smtpclient.apple ([2601:192:4c80:1420:cd9a:7921:8349:b5de])
	by smtp.gmail.com with ESMTPSA id j4sm4295851qkk.78.2021.08.01.10.00.18
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 01 Aug 2021 10:00:18 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Solus DE observations
Date: Sun, 1 Aug 2021 13:00:17 -0400
Message-Id: <A643D6F4-C28D-4C46-960C-244ED9C6BD45@gmail.com>
References: <7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
In-Reply-To: <7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
To: blinux-list@redhat.com
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 171H0PUR031767
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29sdXMgaXMgYSByb2xsaW5nIHJlbGVhc2UgZGlzdHJvIHdpdGggdGhlIGVhc2UgYW5kIGNvbnZl
bmllbmNlIG9mIGRpc3Ryb3MgbGlrZSBVYnVudHUuICBUaGUgaW5zdGFsbGVyIGlzIHVzYWJsZSBl
eWVzLWZyZWUuIFRoZSBmaWVsZHMgZm9yIGluaXRpYWwgdXNlciBuYW1lLCBwZXJzb25hbCBuYW1l
LCBhbmQgcGFzc3dvcmQgYXJlIG5vdCBsYWJlbGVkLCBhbmQgSSBpbml0aWFsbHkgdHJhbnNwb3Nl
ZCB1c2VyIGFuZCBwZXJzb25hbCBuYW1lLiAgSSByZWFsaXplZCBteSBlcnJvciB3aGVuIEkgbm90
aWNlZCB0aGUgImNvbnRpbnVlIiBidXR0b24gZGltbWVkLiBUaGlzIHdhcyBlYXN5IHRvIGZpeCwg
YW5kIHByb2NlZWQuICBJIG5vdyBoYXZlIFNvbHVzIE1hdGUgb24gbXkgcHJvYm9vay4gIFRoZSBp
bnN0YWxsZWQgc3lzdGVtIGhhcyBhIGxpdHRsZSBjaG9wcGluZXNzIGluIGl0cyBzcGVlY2guCgoK
SFRILAoKRGF2ZQoKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gQXVnIDEsIDIwMjEsIGF0IDEx
OjUxIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPiB3cm90ZToKPiAKPiDvu79NYXR0aGV3Cj4gCj4gCj4gCj4gV2hhdCBpcyBzb2x1
cyBleGFjdGx5PyAgaXMgdGhpcyBhIGZsYXZlciBvZiB1YnVudHUgbWVlaW5nIGJhc2VkIG9mZiBv
ZiBpdCBvciBzb21lIHRoaW5nIGVsc2U/ICBIb3cgaXMgdGhlIGluc3RhbGxlci4gIFRoYW5rcy4K
PiAKPiAKPiAKPiBIaSwKPiAKPiAKPiAKPiAKPj4gT24gOC8xLzIwMjEgNTozOCBBTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gU2luY2UgU29sdXMgY2FtZSB1
cCBhZ2FpbiwgSSdsbCBzaGFyZSBteSBvYnNlcnZhdGlvbnMgb2YgdGhlIHRocmVlIERFcyBJJ3Zl
IHVzZWQuIEknbSBsZWF2aW5nIFBsYXNtYSBvdXQgc2luY2UgaXQgZG9lc24ndCB3b3JrIHRvbyB3
ZWxsIGZvciBtZSwgYnV0IHlNTVYgb24gdGhhdAo+PiAKPj4gCj4+IEJ1ZGdpZToKPj4gSXQncywg
Ym9pbGluZyBpdCBkb3duLiBHbm9tZSB3aXRoIGEgZmFuY3kgY29hdCBvZiBwYWludCBhbmQgaXMg
dGhlIFNvbHVzIGZsYWdzaGlwIG9uZS4gSXQgd29ya3Mgd2VsbCBlbm91Z2ggZ2l2ZW4gaXQncyBH
bm9tZSA0MCBiYXNlZCBhbmQgaXMgdmVyeSBtdWNoIHVzZWFibGUuIE5vdyBpZiBJIGNvdWxkIGFz
c2lnbiBrZXlib2FyZCBzaG9ydGN1dHMsIHRoYXQnZCBiZSBoYW5keS4gTWF5YmUgSSBjYW4gYW5k
IGhhdmVuJ3QgZm91bmQgaXQgeWV0LCBJIGR1bm5vLiBPbmUgbm90ZSBJIGRvIGhhdmUgaXMgdGhh
dCBMaWdodERNIGlzIHRoZSBsb2dpbiBtYW5hZ2VyIGFuZCBpcyBpbnNhbmVseSAvbG91ZC8gb24g
c3RhcnR1cCBvbmNlIHlvdSBlbmFibGUgT3JjYSB3aXRoIHRoZSB1c3VhbCBzaG9ydGN1dC4gU28g
anVzdCBoYXZlIGEgbG9uZywgbG9uZyBrZXlib2FyZCBjYWJsZSwgYW5kIEJ1ZGdpZS9Hbm9tZSBo
YXZlIGEgbmljZSBzdGFydHVwIHNvdW5kIHdoZW4geW91IGxvZyBpbiwgd2hpY2ggaXMgYWx3YXlz
IGEgbmljZSB0b3VjaC4gVGhlIFNvbHVzIHRlYW0gaGF2ZSBwdXQgYSBsb3Qgb2YgY2FyZSBpbnRv
IHRoZSBERSBmcm9tIHdoYXQgSSd2ZSBmb3VuZC4KPj4gCj4+IEdub21lOgo+PiAKPj4gSXQncyBH
bm9tZS4gSXQncyBHbm9tZSA0MC4gTmVlZCBJIHNheSBtb3JlPyBPbmUgbm90ZSBpcyBJIGNvdWxk
bid0IGdldCBzcGVlY2ggYXQgYSBsb2dpbiBtYW5hZ2VyIG9uIG15IHN5c3RlbS4gSXQgZG9lcyBo
YXZlIGEgbmljZSBzdGFydHVwIHNvdW5kIHRvIGEgbGEgQnVkZ2llLgo+PiAKPj4gCj4+IE1hdGU6
Cj4+IAo+PiBPaCB0aGlzIGlzIGdvaW5nIHRvIGJlIGRpc2FwcG9pbnRpbmcuIFRoZXJlJ3MgYSBm
ZXcgaXNzdWVzIHdpdGggTWF0ZSBhcyBmYXIgYXMgU29sdXMgZ29lcy4KPj4gCj4+IAo+PiAxLiBU
aGUgT3JjYSBzaG9ydGN1dCBpc24ndCBzZXQuIFdoaWNoIGlzbid0IGEgYmlnIGRlYWwgc2luY2Ug
YWx0K2YyIGFuZCBvcmNhIHNvcnRzIHRoYXQgdGhlbiB3aGVuIHlvdSBnZXQgdGhlIHN5c3RlbSBp
bnN0YWxsZWQgaXQncyB0d28gc2Vjb25kcyB3b3JrIHRvIHNldCB0aGUgc2hvcnRjdXQgYW5kIHNl
dCBPcmNhIHRvIGF1dG9zdGFydC4KPj4gCj4+IAo+PiAyLiBUSGUgbXVjaCwgbXVjaCwgTVVDSCBi
aWdnZXIgaXNzdWUgaXMgdGhlIGRlc2t0b3AgbG9zZXMgZm9jdXMgYW5kIHJlcXVpcmVzIGEgR1RL
IGRpYWxvZyB0byBiZSBsb2FkZWQuIFF1aXQgQ2hyb21pdW0/IFllYWggT3JjYStILCBGMiwgYW5k
IHRoZW4ga2VlcCBnb2luZy4gTm93LiBJZiB0aGVyZSdzIGEgY29tcHl6IHNldHRpbmcgSSd2ZSBv
dmVybG9va2VkIHRvIGZpeCB0aGlzLi4udGhlbiBzdXJlLCBJJ2xsIGdpdmUgaXQgYW5vdGhlciBz
aG90LiBEb24ndCBnZXQgbWUgd3JvbmcuIE1hdGUgaXMgZmFudGFzdGljIHdoZW4gaXQgd29ya3Mu
IEl0J3MganVzdC4uLi53aGVuIGl0IGJyZWFrcyBvbiBTb2x1cyBhbmQgbmVlZHMgd29ya2Fyb3Vu
ZHMsIGl0J3Mga2luZCBvZiBhIGJ1Z2JlYXIgZm9yIG1lLCBhcyB3ZWxsIGFzIHRoZSBib3R0b20g
cGFuZWwgYmVpbmcgdW5sYWJlbGVkLCBidXQgeW91IGNhbiBnZXQgYXJvdW5kIG1vc3Qgb2YgdGhh
dCBBcyB3aXRoIEJ1ZGdpZSBpdCB1c2VzIExpZ2h0RE0gc28geW91IGdldCBPcmNhIHdvcmtpbmcg
b24gdGhlIGxvZ2luIHNjcmVlbiwgYWdhaW4sIHN0dXBpZGx5IGxvdWQuIElmIHRoZSBmb2N1cyBs
b3NzIGlzc3VlIGNhbiBiZSBmaXhlZCwgdGhlbiBJJ20gbGlhYmxlIHRvIHN3aXRjaCBiYWNrIHRv
IE1hdGUgZnVsbCB0aW1lIGluc3RlYWQgb2YgQnVkZ2llLgo+PiAKPj4gQW5kLCB0aGVyZSdzIG5v
IHN0YXJ0dXAgc291bmQgZWl0aGVyIHdoaWNoLCByZWFsbHksIGRpc2FwcG9pbnRpbmcgZ2l2ZW4g
dGhlIG90aGVyIHR3byBoYXZlIG9uZSBhbmQgSSBkb24ndCBrbm93IGJvdXQgUGxhc21hLCBidXQg
aXQgZmVlbHMgdG8gbWUgbGlrZSB0aGUgTWF0ZSBvbmUgaXNuJ3QgZnVsbHkgZmluaXNoZWQgdXAg
dnMgdGhlIG90aGVyIERFLgo+PiAKPj4gCj4+IEFuZCByZWxhdGVkIG5vdGUsIEknbSBodW50aW5n
IGRvd24gYW4gbm10dWkgd2hpY2ggZG9lc24ndCBzZWVtIHRvIGJlIHNoaXBwZWQgd2l0aCBTb2x1
cy4gSSBtYXkganVzdCByZXF1ZXN0IGl0IG9yIGFzayBvbiB0aGVpciBmb3J1bXMgaWYgb25lJ3Mg
aW4gYW5kIEknbSB1c2luZyB0aGUgd3JvbmcgbmFtZS4KPj4gCj4+IAo+PiBSZWxhdGVkIG5vdGUg
IzI6Cj4+IAo+PiBTb21laG93IGl0J3MgbW9yZSBzdGFibGUgZm9yIG1lIHRoYW4gVWJ1bnR1LCB3
aGljaCBJIGRpZG4ndCB0aGluayBwb3NzaWJsZS4KPj4gCj4+IAo+PiBGb3IgaW5zdGFsbGVkIHRo
aW5ncz8KPj4gCj4+IE1hdGUgZGlkbid0IGNvbWUgd2l0aCBhIG1haWwgY2xpZW50IGFuZCBjYW1l
IHdpdGggRmlyZWZveCB3aGljaCBJJ3ZlIHJlcGxhY2VkIHdpdGggQnJhdmUsIGFuZCBpbnN0YWxs
ZWQgVGh1bmRlcmJpcmQuIEVhY2ggZGlzdHJvIHNoaXBzIHdpdGggT3JjYSA0MC4wLCBidXQgSSd2
ZSBub3QgdHJpZWQgYnVpbGRpbmcgT3JjYSBmcm9tIGdpdCB5ZXQsIEknbSB3YXJ5IG9mIGluc3Rh
bGxpbmcgdGhlIGJ1aWxkIGRlcHMgb24gYW4gYWxyZWFkeSB3b3JraW5nIHN5c3RlbQo+PiAKPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiAKPiAKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

