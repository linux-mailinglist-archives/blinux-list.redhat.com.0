Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 13A241F8B24
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jun 2020 00:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592173918;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OI1Hm69bSAzHFGR284cA5Pn2etx2jsuJ+zPpbok52Zg=;
	b=KToUnFnWW3O5e4xaXbQr5Zgz/jgjHu9lUwQ/8eBdxFzOVdcC1+9/pK/Y7QSxLQstTHWIGp
	5wvOoTje3iHLNOmHOxm1llQUfIQMkmSlcuanDOksQe0PFhkQK3HaESHyTYp6RFW0M5G6R+
	K2LRy+5oLq2tp8NA5M8XzAcpaMJxAb8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-432-ebVDXukBMuGJdloU-vi6qw-1; Sun, 14 Jun 2020 18:31:54 -0400
X-MC-Unique: ebVDXukBMuGJdloU-vi6qw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B22BD464;
	Sun, 14 Jun 2020 22:31:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 99AF81A912;
	Sun, 14 Jun 2020 22:31:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A79B14CC3;
	Sun, 14 Jun 2020 22:31:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EMVe1Q010114 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 18:31:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7341B2026971; Sun, 14 Jun 2020 22:31:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E4FB20267F2
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 22:31:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A9CE101A525
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 22:31:38 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-207-6wF3Rx5-NYeLlZcWxK8sfQ-1; Sun, 14 Jun 2020 18:31:35 -0400
X-MC-Unique: 6wF3Rx5-NYeLlZcWxK8sfQ-1
Received: by mail-qk1-f170.google.com with SMTP id w1so14063456qkw.5
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 15:31:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
	bh=b3PWhf86WH9HKvsm2cpc21KDMPKnyrbE7KgsKrY5VCk=;
	b=gGWISu2jskIH7LKwXNhUaKg78jcg3i3M3/W4PCuEfFveEZQ56cWID463fHTLb0m6ZC
	Mbdra/D9PQpgyJkZTrPjmcZJ5BM1Z2towaBkgWHk8rwq1EtP6ewkT2Tqsb7mCRlWwOKp
	GA32XDVwEG//ji8DUQM0fji9FNPBgkGYRTPdlNNvrrKe955DJ+iq4m9dga3VMwUul4I3
	eUUe/9KHt9oUAUpJ4+MI5oASl25ss+31xA2lJaoNbZH9BtKMEdiIc3ZjnJ+W6j35aHog
	HnpDqoId059rV/DfAsm0zkKHbLW/XWOp3PQT00TN2V5dvhZh8fR7blyUzLY+zQVhcRX5
	JlBg==
X-Gm-Message-State: AOAM533AYbwTcgy2c552hlDRsfL+oXlWjVRvNj8FuIcD2wEW839lDFTO
	fNLmtmTK9t6OmbXS2i/Ec3j1FRiELtw=
X-Google-Smtp-Source: ABdhPJysS8cHQHzKNBHiSMUgP1TbJBvmBYYAGSw0g+DyyiUtizIAMaZY69MWQS6ggh+iM+2Jeot5bg==
X-Received: by 2002:a37:6385:: with SMTP id
	x127mr12771219qkb.307.1592173894032; 
	Sun, 14 Jun 2020 15:31:34 -0700 (PDT)
Received: from [192.168.1.8] (024-197-047-106.biz.spectrum.com.
	[24.197.47.106]) by smtp.gmail.com with ESMTPSA id
	n25sm9333332qkk.76.2020.06.14.15.31.33 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 14 Jun 2020 15:31:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Bible-fetch: get fast, easy access to the Bible from the command line
Message-Id: <EED69797-00FD-465D-8B6D-6194790B7484@gmail.com>
Date: Sun, 14 Jun 2020 17:31:32 -0500
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
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

SGkgYWxsLiBBcyBhIENocmlzdGlhbiwgSSBhbHdheXMgdHJ5IHRvIHJlYWQgdGhlIEJpYmxlLiBB
dCBsZWFzdCBhIGxpdHRsZS4gQXMgbXVjaCBhcyBteSB3b25kZXJpbmcgbWluZCBjYW4gcmVtZW1i
ZXIgdG8uIEkgZmluZCB2ZXJzZSBudW1iZXJzIGp1c3QgZGlzdHJhY3QgbWUsIGluIHNwZWVjaCBv
ciBicmFpbGxlLiBTbywgSSB0cmllZCBhIGZldyBkaWZmZXJlbnQgb3B0aW9ucywgdGhlIOKAnGZs
YXTigJ0gV29ybGQgRW5nbGlzaCBCaWJsZSwgb3IgdGhlIOKAnE5ldyBFbmdsaXNoIFRyYW5zbGF0
aW9uIHJlYWRlcuKAmXMgZWRpdGlvbuKAnS4gVGhvc2Ugd2VyZSBib3RoIG91dC1vZi1kYXRlLCBi
ZWNhdXNlIGhhaGEsIHdobyBuZWVkcyBhIEJpYmxlIHdpdGhvdXQgdmVyc2VzPyBJIG1lYW4sIHlv
dSBjYW4ganVzdCBsb29rIHBhc3NlZCB0aGVtLCByaWdodD8gSSBtZWFuLCB5b3UgY2FuIHNlZSwg
cmlnaHQ/IEkgbWVhbiwgYmxpbmQgcGVvcGxlIGFyZSBsaWtlLCBnaXZlbiBzaWdodCBieSBKZXN1
cyBzbyB0aGV5IGNhbiByZWFkIHRoZSBCaWJsZSB3aXRoIHRoZWlyIGV5ZXMsIHJpZ2h0PyBZZWFo
LCBJ4oCZbSBwcmV0dHkgY3luaWNhbC4KCkkgbGlrZSB0aGUgQ0pCIChDb21wbGV0ZSBKZXdpc2gg
QmlibGXigJ0uIE5vdCBiZWNhdXNlIEnigJltIGEgSmV3LCBidXQgYmVjYXVzZSBJIGVuam95IHRo
ZSBmcmVzaG5lc3Mgb2YgaGF2aW5nIHRoZSBvcmlnaW5hbCBuYW1lIGluIGFsbCB0aGVpciBKZXdp
c2huZXNzLCBzbyB0aGF0IEkgZG9u4oCZdCBmZWVsIGxpa2UgSeKAmW0gcmVhZGluZyB0aGUgc2Ft
ZSBvbGQgYm9vayB0aGF0IG91ciBjdWx0dXJlIGhhcyBhYnNvcmJlZCBhbmQgbWFkZSBjb21tb25w
bGFjZSBhbmQsIHdlbGwsIG9yZGluYXJ5LiBBdCBsZWFzdCwgdGhhdOKAmXMgaG93IGl0IGZlZWxz
IHRvIG1lLiBCdXQgb2YgY291cnNlLCB0aGVyZeKAmXMgbm90IGEgdmVyc2UtbnVtYmVyLWxlc3Mg
dmVyc2lvbiBvZiB0aGF0IHRyYW5zbGF0aW9uLCBhdCBsZWFzdCwgbm90IHRoYXQgSeKAmXZlIGZv
dW5kLgoKV2hhdCBJIC9oYXZlLyBmb3VuZCBpcyBCaWJsZSBGZXRjaCwgYSBjb21tYW5kLWxpbmUg
ZmV0Y2hlciBmb3IgdGhlIHF1aXRlIGluYWNjZXNzaWJsZSBCaWJsZSBHYXRld2F5IHNpdGUuIFN1
cmUsIHlvdSBjYW4gcmVhZCB0aGUgQmlibGUgdGhlcmUsIGJ1dCB0cnkgY2hhbmdpbmcgcmVhZGlu
ZyBzZXR0aW5ncywgbGlrZSB0dXJuaW5nIG9mZiB2ZXJzZSBudW1iZXJzLiBBdCBsZWFzdCBvbiB0
aGUgTWFjIHdpdGggU2FmYXJpLCBJIGZvdW5kIGl0IGltcG9zc2libGUuIElmIHlvdSBjYW4gZ2V0
IGl0IHdvcmtpbmcgb24gYW5vdGhlciBicm93c2VyLCBJ4oCZbGwgZ2xhZGx5IHVzZSB0aGF0LiBG
b3IgQmlibGUgRmV0Y2gsIHlvdSBqdXN0IGRvd25sb2FkIHRoZSByZXBvc2l0b3J5IDxodHRwczov
L2dpdGh1Yi5jb20vY292b2RlL2JpYmxlLWZldGNoPiwgaW5zdGFsbCB0aGUgbmVlZGVkIFB5dGhv
biAzIHNjcmlwdHMsIGFuZCBqdXN0IHJ1bjoKCiMrYmVnaW5fY29kZSBzaGVsbAouL2JpYmxlIGdl
bjEg4oCUdmVyc2lvbiBjamIKIytlbmRfY29kZQoKWW91IGNhbiBldmVuIHBpcGUgaXQgdG8gYSBm
aWxlIGZvciBlYXNpZXIgcmVhZGluZy4gTm90ZSBmb3IgRW1hY3NwZWFrIHVzZXJzLCBwYXJhZ3Jh
cGhzIGFyZSBub3Qgd3JhcHBlZCwgc28geW91IG1heSBuZWVkIHRvIE0tWCBmaWxsLWluZGl2aWR1
YWwtcGFyYWdyYXBocyB0byBtYWtlIHRoaW5ncyBiZXR0ZXIuIE5vdGUgdGhhdCB5b3UgY2Fubm90
IGZldGNoIHdob2xlIGJvb2tzLiBJIGtub3csIGl0IHN1Y2tzLCBidXQgSSBkb3VidCB0aGlzIHdh
cyBkZXNpZ25lZCB0byBiZSBhbiBhY3R1YWwgQmlibGUtcmVhZGluZyB0b29sLCBtb3JlIGp1c3Qg
YSByZWZlcmVuY2UgdG9vbC4gQW5kIHllcywgdmVyc2UgbnVtYmVycyBhcmUgaGlkZGVuIGJ5IGRl
ZmF1bHQ7IHlheSEgSWYgeW91IG5lZWQgdGhlbSB0aG91Z2gsIHlvdeKAmWxsIGZpbmQgdGhlIGFy
Z3VtZW50IGZvciB0aGF0IGluIHRoZSByZXBvc2l0b3J54oCZcyByZWFkbWUgZmlsZS4KCkluIGNv
bmNsdXNpb24sIHdoaWxlIEJpYmxlIHJlYWRpbmcgc2l0ZXMgYXJlIG9mdGVuIGhhcmQgdG8gdXNl
LCBmb3IgbWUgYXQgbGVhc3QsIGFuZCBJ4oCZbSBub3QgYWx3YXlzIG9uIG15IHBob25lLCB0aGVy
ZSBhcmUgdG9vbHMgdGhhdCB3b3JrIGFyb3VuZCB0aGlzIGEgYml0LiBJIGRvbuKAmXQgbGlrZSB2
ZXJzZSBudW1iZXJzIGVpdGhlciwgYW5kIG5vbmUgb2YgdGhlIEJpYmxlIGFwcHMgSeKAmXZlIHVz
ZWQsIGFuZCBubyB1c2FibGUgQmlibGUgc2l0ZSBzbyBmYXIsIG9mZmVycyB0aGUgYWJpbGl0eSB0
byBoaWRlIHRoZW0uIEJpYmxlIEZldGNoIGdldHMgYXJvdW5kIHRoaXMgd2VsbCwgYW5kIGhpZGVz
IHZlcnNlIG51bWJlcnMgYnkgZGVmYXVsdC4gSXQgY2Fu4oCZdCBkb3dubG9hZCB3aG9sZSBib29r
cywgYnV0IGZvciB2aWV3aW5nIHRoZSBCaWJsZSBhIGNoYXB0ZXIgYXQgYSB0aW1lLCBpdCB3b3Jr
cyB3ZWxsLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3
dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

