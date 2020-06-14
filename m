Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 25EF11F8BD4
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jun 2020 02:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592179502;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=npoznufvL7u2hN3zjS0mIANJ8USn4TG6/jhu1pamQTA=;
	b=YirzAHCnioqWYRHpPt6H5+kL+wK76Jpab5OA5TLyZuYJmMEF6ydZmFrav/EkfSOP4+uGsZ
	u2W9n0J0qFWM5Z7Leuuok2cpbrhictzh+L09jZ17vFjMDaw54zjVcITMYZmmzcu93nJJGV
	88iijPChJqLbJnQNoRvLlcGJQRFeFGA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-168-4rd-num9MSaGQD2msqp6Gw-1; Sun, 14 Jun 2020 20:04:55 -0400
X-MC-Unique: 4rd-num9MSaGQD2msqp6Gw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8FE19A0BE4;
	Mon, 15 Jun 2020 00:04:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B849768DA;
	Mon, 15 Jun 2020 00:04:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 549401809547;
	Mon, 15 Jun 2020 00:04:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05F04K5T018955 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 20:04:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 814232166BA0; Mon, 15 Jun 2020 00:04:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C73F2157F24
	for <blinux-list@redhat.com>; Mon, 15 Jun 2020 00:04:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A36A185A78B
	for <blinux-list@redhat.com>; Mon, 15 Jun 2020 00:04:18 +0000 (UTC)
Received: from gateway5.unifiedlayer.com (gateway5.unifiedlayer.com
	[69.89.28.84]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-269-XY77eH8LNLyxf3AgZ2VrAg-1; Sun, 14 Jun 2020 20:03:55 -0400
X-MC-Unique: XY77eH8LNLyxf3AgZ2VrAg-1
Received: from cm3.websitewelcome.com (unknown [108.167.139.23])
	by gateway5.unifiedlayer.com (Postfix) with ESMTP id 40B352009D1C9
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 18:42:49 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id kcH3jIw3KKgzSkcH3juwwE; Sun, 14 Jun 2020 18:42:49 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:65259 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1jkcH2-001xCk-U8
	for blinux-list@redhat.com; Sun, 14 Jun 2020 18:42:49 -0500
Date: Sun, 14 Jun 2020 18:42:47 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Bible-fetch: get fast, easy access to the Bible from the
	command line
Message-ID: <20200614184247.7f09d54d@bigbox.attlocal.net>
In-Reply-To: <EED69797-00FD-465D-8B6D-6194790B7484@gmail.com>
References: <EED69797-00FD-465D-8B6D-6194790B7484@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1jkcH2-001xCk-U8
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:65259
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05F04K5T018955
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGltIGhlcmUuICBJZiB5b3UgZG9uJ3QgbWluZCB0aGUgS2luZyBKYW1lcyBWZXJzaW9uICh0aG91
Z2ggSSBwcmVmZXIKTklWLCBIQ1NCL0NTQiwgb3IgWW91bmcncyBMaXRlcmFsIFRyYW5zbGF0aW9u
LCBhbSBub3cgY3VyaW91cyB0bwp0cnkgdGhlIENKQiBhdCB5b3VyIHJlY29tbWVuZGF0aW9uKSwg
bXkgRGViaWFuIHJlcG8gaGFzIGEgImJpYmxlLWtqdiIKcGFja2FnZS4gIEFzIGFuIGFkZGVkIGFk
dmFudGFnZSwgaXQgd29ya3MgZW50aXJlbHkgbG9jYWxseSBzbyBJIGRvbid0Cm5lZWQgdG8gYmUg
b25saW5lIHRvIHVzZSBpdC4KCkl0IGRvZXNuJ3QgZGlyZWN0bHkgaGF2ZSBhIHdheSB0byByZW1v
dmUgdmVyc2UgcmVmZXJlbmNlcywgYnV0IGEKbGl0dGxlIHBvc3QtcHJvY2Vzc2luZyB3aXRoIHNl
ZCgxKSBjYW4gdGFrZSBjYXJlIG9mIHRoYXQ6CgogJCBiaWJsZSAtZiBsdWtlNzoxLTkgfCBzZWQg
J3MvXlteWzpzcGFjZTpdXSpbWzpzcGFjZTpdXS8vJyAKClRoYXQgcHV0cyBlYWNoIHZlcnNlIG9u
IGl0cyBvd24gbGluZSwgYW5kIHRoZSBzZWQgY29tbWFuZCBzdHJpcHMgb2ZmCnRoZSByZWZlcmVu
Y2UgYXQgdGhlIGJlZ2lubmluZyBvZiBlYWNoIGxpbmUuICBZb3UgY2FuIHBpcGUgdGhvc2UKcmVz
dWx0cyB0aHJvdWdoIGZtdCgxKSB0byByZS13cmFwIHRvIGEgZml4ZWQgbGluZS1sZW5ndGggKHdo
aWNoIG1pZ2h0CmJlIGVhc2llciBpZiB5b3UncmUgcmVhZGluZyB2aWEgYSBCcmFpbGxlIG91dHB1
dCBkZXZpY2UpCgogJCBiaWJsZSAuLi4gfCBmbXQgLXcgNDAKCm9yIHNwZWNpZnkgYSByaWRpY3Vs
b3VzbHkgaGlnaCB3aWR0aCBpZiB5b3Ugd2FudCBpdCBhcyBvbmUgbGFyZ2UKcGFyYWdyYXBoICh3
aGljaCBtaWdodCByZWFkIG1vcmUgY2xlYW5seSBpZiB5b3UgdXNlIHRleHQtdG8tc3BlYWNoKQoK
ICQgYmlibGUgLi4uIHwgZm10IC13IDk5OTk5CgpUaGF0IHNhaWQsIHRoYW5rcyBmb3Igc2hhcmlu
ZyB0aGlzIGFkZGl0aW9uYWwgb3B0aW9uIQoKLVRpbQoKCgpPbiBKdW5lIDE0LCAyMDIwLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpIGFsbC4gQXMgYSBDaHJp
c3RpYW4sIEkgYWx3YXlzIHRyeSB0byByZWFkIHRoZSBCaWJsZS4gQXQgbGVhc3QgYQo+IGxpdHRs
ZS4gQXMgbXVjaCBhcyBteSB3b25kZXJpbmcgbWluZCBjYW4gcmVtZW1iZXIgdG8uIEkgZmluZCB2
ZXJzZQo+IG51bWJlcnMganVzdCBkaXN0cmFjdCBtZSwgaW4gc3BlZWNoIG9yIGJyYWlsbGUuIFNv
LCBJIHRyaWVkIGEgZmV3Cj4gZGlmZmVyZW50IG9wdGlvbnMsIHRoZSDigJxmbGF04oCdIFdvcmxk
IEVuZ2xpc2ggQmlibGUsIG9yIHRoZSDigJxOZXcKPiBFbmdsaXNoIFRyYW5zbGF0aW9uIHJlYWRl
cuKAmXMgZWRpdGlvbuKAnS4gVGhvc2Ugd2VyZSBib3RoIG91dC1vZi1kYXRlLAo+IGJlY2F1c2Ug
aGFoYSwgd2hvIG5lZWRzIGEgQmlibGUgd2l0aG91dCB2ZXJzZXM/IEkgbWVhbiwgeW91IGNhbgo+
IGp1c3QgbG9vayBwYXNzZWQgdGhlbSwgcmlnaHQ/IEkgbWVhbiwgeW91IGNhbiBzZWUsIHJpZ2h0
PyBJIG1lYW4sCj4gYmxpbmQgcGVvcGxlIGFyZSBsaWtlLCBnaXZlbiBzaWdodCBieSBKZXN1cyBz
byB0aGV5IGNhbiByZWFkIHRoZQo+IEJpYmxlIHdpdGggdGhlaXIgZXllcywgcmlnaHQ/IFllYWgs
IEnigJltIHByZXR0eSBjeW5pY2FsLgo+IAo+IEkgbGlrZSB0aGUgQ0pCIChDb21wbGV0ZSBKZXdp
c2ggQmlibGXigJ0uIE5vdCBiZWNhdXNlIEnigJltIGEgSmV3LCBidXQKPiBiZWNhdXNlIEkgZW5q
b3kgdGhlIGZyZXNobmVzcyBvZiBoYXZpbmcgdGhlIG9yaWdpbmFsIG5hbWUgaW4gYWxsCj4gdGhl
aXIgSmV3aXNobmVzcywgc28gdGhhdCBJIGRvbuKAmXQgZmVlbCBsaWtlIEnigJltIHJlYWRpbmcg
dGhlIHNhbWUKPiBvbGQgYm9vayB0aGF0IG91ciBjdWx0dXJlIGhhcyBhYnNvcmJlZCBhbmQgbWFk
ZSBjb21tb25wbGFjZSBhbmQsCj4gd2VsbCwgb3JkaW5hcnkuIEF0IGxlYXN0LCB0aGF04oCZcyBo
b3cgaXQgZmVlbHMgdG8gbWUuIEJ1dCBvZiBjb3Vyc2UsCj4gdGhlcmXigJlzIG5vdCBhIHZlcnNl
LW51bWJlci1sZXNzIHZlcnNpb24gb2YgdGhhdCB0cmFuc2xhdGlvbiwgYXQKPiBsZWFzdCwgbm90
IHRoYXQgSeKAmXZlIGZvdW5kLgo+IAo+IFdoYXQgSSAvaGF2ZS8gZm91bmQgaXMgQmlibGUgRmV0
Y2gsIGEgY29tbWFuZC1saW5lIGZldGNoZXIgZm9yIHRoZQo+IHF1aXRlIGluYWNjZXNzaWJsZSBC
aWJsZSBHYXRld2F5IHNpdGUuIFN1cmUsIHlvdSBjYW4gcmVhZCB0aGUgQmlibGUKPiB0aGVyZSwg
YnV0IHRyeSBjaGFuZ2luZyByZWFkaW5nIHNldHRpbmdzLCBsaWtlIHR1cm5pbmcgb2ZmIHZlcnNl
Cj4gbnVtYmVycy4gQXQgbGVhc3Qgb24gdGhlIE1hYyB3aXRoIFNhZmFyaSwgSSBmb3VuZCBpdCBp
bXBvc3NpYmxlLiBJZgo+IHlvdSBjYW4gZ2V0IGl0IHdvcmtpbmcgb24gYW5vdGhlciBicm93c2Vy
LCBJ4oCZbGwgZ2xhZGx5IHVzZSB0aGF0Lgo+IEZvciBCaWJsZSBGZXRjaCwgeW91IGp1c3QgZG93
bmxvYWQgdGhlIHJlcG9zaXRvcnkKPiA8aHR0cHM6Ly9naXRodWIuY29tL2Nvdm9kZS9iaWJsZS1m
ZXRjaD4sIGluc3RhbGwgdGhlIG5lZWRlZCBQeXRob24KPiAzIHNjcmlwdHMsIGFuZCBqdXN0IHJ1
bjoKPiAKPiAjK2JlZ2luX2NvZGUgc2hlbGwKPiAuL2JpYmxlIGdlbjEg4oCUdmVyc2lvbiBjamIK
PiAjK2VuZF9jb2RlCj4gCj4gWW91IGNhbiBldmVuIHBpcGUgaXQgdG8gYSBmaWxlIGZvciBlYXNp
ZXIgcmVhZGluZy4gTm90ZSBmb3IKPiBFbWFjc3BlYWsgdXNlcnMsIHBhcmFncmFwaHMgYXJlIG5v
dCB3cmFwcGVkLCBzbyB5b3UgbWF5IG5lZWQgdG8gTS1YCj4gZmlsbC1pbmRpdmlkdWFsLXBhcmFn
cmFwaHMgdG8gbWFrZSB0aGluZ3MgYmV0dGVyLiBOb3RlIHRoYXQgeW91Cj4gY2Fubm90IGZldGNo
IHdob2xlIGJvb2tzLiBJIGtub3csIGl0IHN1Y2tzLCBidXQgSSBkb3VidCB0aGlzIHdhcwo+IGRl
c2lnbmVkIHRvIGJlIGFuIGFjdHVhbCBCaWJsZS1yZWFkaW5nIHRvb2wsIG1vcmUganVzdCBhIHJl
ZmVyZW5jZQo+IHRvb2wuIEFuZCB5ZXMsIHZlcnNlIG51bWJlcnMgYXJlIGhpZGRlbiBieSBkZWZh
dWx0OyB5YXkhIElmIHlvdQo+IG5lZWQgdGhlbSB0aG91Z2gsIHlvdeKAmWxsIGZpbmQgdGhlIGFy
Z3VtZW50IGZvciB0aGF0IGluIHRoZQo+IHJlcG9zaXRvcnnigJlzIHJlYWRtZSBmaWxlLgo+IAo+
IEluIGNvbmNsdXNpb24sIHdoaWxlIEJpYmxlIHJlYWRpbmcgc2l0ZXMgYXJlIG9mdGVuIGhhcmQg
dG8gdXNlLCBmb3IKPiBtZSBhdCBsZWFzdCwgYW5kIEnigJltIG5vdCBhbHdheXMgb24gbXkgcGhv
bmUsIHRoZXJlIGFyZSB0b29scyB0aGF0Cj4gd29yayBhcm91bmQgdGhpcyBhIGJpdC4gSSBkb27i
gJl0IGxpa2UgdmVyc2UgbnVtYmVycyBlaXRoZXIsIGFuZCBub25lCj4gb2YgdGhlIEJpYmxlIGFw
cHMgSeKAmXZlIHVzZWQsIGFuZCBubyB1c2FibGUgQmlibGUgc2l0ZSBzbyBmYXIsCj4gb2ZmZXJz
IHRoZSBhYmlsaXR5IHRvIGhpZGUgdGhlbS4gQmlibGUgRmV0Y2ggZ2V0cyBhcm91bmQgdGhpcyB3
ZWxsLAo+IGFuZCBoaWRlcyB2ZXJzZSBudW1iZXJzIGJ5IGRlZmF1bHQuIEl0IGNhbuKAmXQgZG93
bmxvYWQgd2hvbGUgYm9va3MsCj4gYnV0IGZvciB2aWV3aW5nIHRoZSBCaWJsZSBhIGNoYXB0ZXIg
YXQgYSB0aW1lLCBpdCB3b3JrcyB3ZWxsLgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fIEJsaW51eC1saXN0IG1haWxpbmcKPiBsaXN0IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

