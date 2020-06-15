Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 457281F9472
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jun 2020 12:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592216257;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aAkKsiVUpDrw7tHaPs+WcPGfUxeJ/j74jIHd1LV7nCg=;
	b=aEGiZ3nJS9rqbJp1np+A6Ua1uVwT8c6oJOJcmMb6FoT9vaPoiIEgVP4P2G1RSr2n9HkSNU
	iBHmThloeITr2sK76Z/jZBNzQD6gzjWz+Y/W9q11bR7L/Clo7EtHX0nogbrV1R0LT/aibs
	ne2mrHrljYaIrlNj8jcshren2+c9Bi0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-Xb7W0FAqP7OPmNaOG9HhcA-1; Mon, 15 Jun 2020 06:17:34 -0400
X-MC-Unique: Xb7W0FAqP7OPmNaOG9HhcA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F25A418585A7;
	Mon, 15 Jun 2020 10:17:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8FD0360C80;
	Mon, 15 Jun 2020 10:17:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F09361809547;
	Mon, 15 Jun 2020 10:17:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05FAHPUb018867 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Jun 2020 06:17:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6EB6B20267F2; Mon, 15 Jun 2020 10:17:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A4B42029F61
	for <blinux-list@redhat.com>; Mon, 15 Jun 2020 10:17:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B7E4185A78B
	for <blinux-list@redhat.com>; Mon, 15 Jun 2020 10:17:23 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-284-6rbijkgZPGOwyWTIR9RCDg-1; Mon, 15 Jun 2020 06:17:20 -0400
X-MC-Unique: 6rbijkgZPGOwyWTIR9RCDg-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 05FAHJxQ101869
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Mon, 15 Jun 2020 10:17:19 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 05FAHJxQ101869
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 05FAHJxQ101869
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 05FAHJSL101868
	for blinux-list@redhat.com; Mon, 15 Jun 2020 06:17:19 -0400
Date: Mon, 15 Jun 2020 06:17:19 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Bible-fetch: get fast, easy access to the Bible from the command
	line
Message-ID: <20200615101719.GD2180@rednote.net>
References: <EED69797-00FD-465D-8B6D-6194790B7484@gmail.com>
	<20200614184247.7f09d54d@bigbox.attlocal.net>
MIME-Version: 1.0
In-Reply-To: <20200614184247.7f09d54d@bigbox.attlocal.net>
X-Operating-System: Linux opera.rednote.net 5.6.16-200.fc31.x86_64
X-MIME-Autoconverted: from 8bit to quoted-printable by opera.rednote.net id
	05FAHJxQ101869
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05FAHPUb018867
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Content-Disposition: inline

VGhhbmtzIGZvciB0aGVzZSBCaWJsZSByZWFkaW5nIHRpcHMuIEl0J3MgdW5yZWxhdGVkIHRvIHNy
aXBwaW5nIG9mZiB0aGUKdmVyc2UgbnVtYmVyaW5nIG1ldGFkYXRhLCBidXQgSSB0aG91Z2h0IEkn
ZCBzaGFyZSBvbmUgb2YgbXkgY3VycmVudGx5CmZhdm9yaXRlIG15IGZhdm9yaXRlIHRvb2xzLCBn
aXZlbiB3ZSdyZSBzdWRkZW5seSBvbiB0aGUgdG9waWMgb2YgQmlibGUKc3R1ZHkgLi4uCgpJJ20g
ZmFzY2luYXRlZCBieSBjb21wYXJpbmcgZGlmZmVyZW50IHRyYW5zbGF0aW9ucy4gQXMgb25lIHdo
byBkb2Vzbid0Cmtub3cgR3JlZWsgb3IgSGVicmV3LCBjb21wYXJpbmcgdHJhbnNsYXRpb25zIHNl
ZW1zIHRvIGJlIHRoZSBjbG9zZXN0IEkKY2FuIGNvbWUgdG8gZmVycmV0aW5nIG91dCBzaGFkZXMg
b2YgbWVhbmluZyB0aGF0IG1heSBsdXJrIGluIHRoZQpvcmlnaW5hbCBhbmQgc29tZXRpbWVzIGdl
dCBsb3N0IGluIHRyYW5zbGF0aW9uLiBGb3IgdGhhdCwgSSByZWx5IG9uIGhhbmQKZWRpdGluZyBh
IFVSTC4gSGVyZSdzIGFuIGV4YW1wbGUgVVJMIHBvaW50aW5nIHRvIHRoZSBsZXZpdGljYWwgY29k
ZSB0aGF0CnByb21vdGVzIGFjY2Vzc2liaWxpdHkuIHllcywgdGhlIEJpYmxlIGRvZXMgaW5kZWVk
IHJlcXVpcmUKYWNjZXNzaWJpbGl0eSEgPHNtaWxlPgoKaHR0cHM6Ly9iaWJsZWh1Yi5jb20vbGV2
aXRpY3VzLzE5LTE0Lmh0bQoKUGVyaGFwcyBJIHNob3VsZCB0dXJuIHRoaXMgaW50byBhIHNjcmlw
dCBzb21lZGF5LiBCdXQsIGVkaXRpbmcgdGhlIFVSTAppcyBieSBoYW5kIGlzIHNvIGVhc3ksIEkg
aGF2ZW4ndCBib3RoZXJlZCB5ZXQuCgpFbmpveSEKCkphbmluYQoKTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cml0ZXM6Cj4gVGltIGhlcmUuICBJZiB5b3UgZG9uJ3QgbWluZCB0
aGUgS2luZyBKYW1lcyBWZXJzaW9uICh0aG91Z2ggSSBwcmVmZXIKPiBOSVYsIEhDU0IvQ1NCLCBv
ciBZb3VuZydzIExpdGVyYWwgVHJhbnNsYXRpb24sIGFtIG5vdyBjdXJpb3VzIHRvCj4gdHJ5IHRo
ZSBDSkIgYXQgeW91ciByZWNvbW1lbmRhdGlvbiksIG15IERlYmlhbiByZXBvIGhhcyBhICJiaWJs
ZS1ranYiCj4gcGFja2FnZS4gIEFzIGFuIGFkZGVkIGFkdmFudGFnZSwgaXQgd29ya3MgZW50aXJl
bHkgbG9jYWxseSBzbyBJIGRvbid0Cj4gbmVlZCB0byBiZSBvbmxpbmUgdG8gdXNlIGl0Lgo+IAo+
IEl0IGRvZXNuJ3QgZGlyZWN0bHkgaGF2ZSBhIHdheSB0byByZW1vdmUgdmVyc2UgcmVmZXJlbmNl
cywgYnV0IGEKPiBsaXR0bGUgcG9zdC1wcm9jZXNzaW5nIHdpdGggc2VkKDEpIGNhbiB0YWtlIGNh
cmUgb2YgdGhhdDoKPiAKPiAgJCBiaWJsZSAtZiBsdWtlNzoxLTkgfCBzZWQgJ3MvXlteWzpzcGFj
ZTpdXSpbWzpzcGFjZTpdXS8vJyAKPiAKPiBUaGF0IHB1dHMgZWFjaCB2ZXJzZSBvbiBpdHMgb3du
IGxpbmUsIGFuZCB0aGUgc2VkIGNvbW1hbmQgc3RyaXBzIG9mZgo+IHRoZSByZWZlcmVuY2UgYXQg
dGhlIGJlZ2lubmluZyBvZiBlYWNoIGxpbmUuICBZb3UgY2FuIHBpcGUgdGhvc2UKPiByZXN1bHRz
IHRocm91Z2ggZm10KDEpIHRvIHJlLXdyYXAgdG8gYSBmaXhlZCBsaW5lLWxlbmd0aCAod2hpY2gg
bWlnaHQKPiBiZSBlYXNpZXIgaWYgeW91J3JlIHJlYWRpbmcgdmlhIGEgQnJhaWxsZSBvdXRwdXQg
ZGV2aWNlKQo+IAo+ICAkIGJpYmxlIC4uLiB8IGZtdCAtdyA0MAo+IAo+IG9yIHNwZWNpZnkgYSBy
aWRpY3Vsb3VzbHkgaGlnaCB3aWR0aCBpZiB5b3Ugd2FudCBpdCBhcyBvbmUgbGFyZ2UKPiBwYXJh
Z3JhcGggKHdoaWNoIG1pZ2h0IHJlYWQgbW9yZSBjbGVhbmx5IGlmIHlvdSB1c2UgdGV4dC10by1z
cGVhY2gpCj4gCj4gICQgYmlibGUgLi4uIHwgZm10IC13IDk5OTk5Cj4gCj4gVGhhdCBzYWlkLCB0
aGFua3MgZm9yIHNoYXJpbmcgdGhpcyBhZGRpdGlvbmFsIG9wdGlvbiEKPiAKPiAtVGltCj4gCj4g
Cj4gCj4gT24gSnVuZSAxNCwgMjAyMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiA+IEhpIGFsbC4gQXMgYSBDaHJpc3RpYW4sIEkgYWx3YXlzIHRyeSB0byByZWFk
IHRoZSBCaWJsZS4gQXQgbGVhc3QgYQo+ID4gbGl0dGxlLiBBcyBtdWNoIGFzIG15IHdvbmRlcmlu
ZyBtaW5kIGNhbiByZW1lbWJlciB0by4gSSBmaW5kIHZlcnNlCj4gPiBudW1iZXJzIGp1c3QgZGlz
dHJhY3QgbWUsIGluIHNwZWVjaCBvciBicmFpbGxlLiBTbywgSSB0cmllZCBhIGZldwo+ID4gZGlm
ZmVyZW50IG9wdGlvbnMsIHRoZSDigJxmbGF04oCdIFdvcmxkIEVuZ2xpc2ggQmlibGUsIG9yIHRo
ZSDigJxOZXcKPiA+IEVuZ2xpc2ggVHJhbnNsYXRpb24gcmVhZGVy4oCZcyBlZGl0aW9u4oCdLiBU
aG9zZSB3ZXJlIGJvdGggb3V0LW9mLWRhdGUsCj4gPiBiZWNhdXNlIGhhaGEsIHdobyBuZWVkcyBh
IEJpYmxlIHdpdGhvdXQgdmVyc2VzPyBJIG1lYW4sIHlvdSBjYW4KPiA+IGp1c3QgbG9vayBwYXNz
ZWQgdGhlbSwgcmlnaHQ/IEkgbWVhbiwgeW91IGNhbiBzZWUsIHJpZ2h0PyBJIG1lYW4sCj4gPiBi
bGluZCBwZW9wbGUgYXJlIGxpa2UsIGdpdmVuIHNpZ2h0IGJ5IEplc3VzIHNvIHRoZXkgY2FuIHJl
YWQgdGhlCj4gPiBCaWJsZSB3aXRoIHRoZWlyIGV5ZXMsIHJpZ2h0PyBZZWFoLCBJ4oCZbSBwcmV0
dHkgY3luaWNhbC4KPiA+IAo+ID4gSSBsaWtlIHRoZSBDSkIgKENvbXBsZXRlIEpld2lzaCBCaWJs
ZeKAnS4gTm90IGJlY2F1c2UgSeKAmW0gYSBKZXcsIGJ1dAo+ID4gYmVjYXVzZSBJIGVuam95IHRo
ZSBmcmVzaG5lc3Mgb2YgaGF2aW5nIHRoZSBvcmlnaW5hbCBuYW1lIGluIGFsbAo+ID4gdGhlaXIg
SmV3aXNobmVzcywgc28gdGhhdCBJIGRvbuKAmXQgZmVlbCBsaWtlIEnigJltIHJlYWRpbmcgdGhl
IHNhbWUKPiA+IG9sZCBib29rIHRoYXQgb3VyIGN1bHR1cmUgaGFzIGFic29yYmVkIGFuZCBtYWRl
IGNvbW1vbnBsYWNlIGFuZCwKPiA+IHdlbGwsIG9yZGluYXJ5LiBBdCBsZWFzdCwgdGhhdOKAmXMg
aG93IGl0IGZlZWxzIHRvIG1lLiBCdXQgb2YgY291cnNlLAo+ID4gdGhlcmXigJlzIG5vdCBhIHZl
cnNlLW51bWJlci1sZXNzIHZlcnNpb24gb2YgdGhhdCB0cmFuc2xhdGlvbiwgYXQKPiA+IGxlYXN0
LCBub3QgdGhhdCBJ4oCZdmUgZm91bmQuCj4gPiAKPiA+IFdoYXQgSSAvaGF2ZS8gZm91bmQgaXMg
QmlibGUgRmV0Y2gsIGEgY29tbWFuZC1saW5lIGZldGNoZXIgZm9yIHRoZQo+ID4gcXVpdGUgaW5h
Y2Nlc3NpYmxlIEJpYmxlIEdhdGV3YXkgc2l0ZS4gU3VyZSwgeW91IGNhbiByZWFkIHRoZSBCaWJs
ZQo+ID4gdGhlcmUsIGJ1dCB0cnkgY2hhbmdpbmcgcmVhZGluZyBzZXR0aW5ncywgbGlrZSB0dXJu
aW5nIG9mZiB2ZXJzZQo+ID4gbnVtYmVycy4gQXQgbGVhc3Qgb24gdGhlIE1hYyB3aXRoIFNhZmFy
aSwgSSBmb3VuZCBpdCBpbXBvc3NpYmxlLiBJZgo+ID4geW91IGNhbiBnZXQgaXQgd29ya2luZyBv
biBhbm90aGVyIGJyb3dzZXIsIEnigJlsbCBnbGFkbHkgdXNlIHRoYXQuCj4gPiBGb3IgQmlibGUg
RmV0Y2gsIHlvdSBqdXN0IGRvd25sb2FkIHRoZSByZXBvc2l0b3J5Cj4gPiA8aHR0cHM6Ly9naXRo
dWIuY29tL2Nvdm9kZS9iaWJsZS1mZXRjaD4sIGluc3RhbGwgdGhlIG5lZWRlZCBQeXRob24KPiA+
IDMgc2NyaXB0cywgYW5kIGp1c3QgcnVuOgo+ID4gCj4gPiAjK2JlZ2luX2NvZGUgc2hlbGwKPiA+
IC4vYmlibGUgZ2VuMSDigJR2ZXJzaW9uIGNqYgo+ID4gIytlbmRfY29kZQo+ID4gCj4gPiBZb3Ug
Y2FuIGV2ZW4gcGlwZSBpdCB0byBhIGZpbGUgZm9yIGVhc2llciByZWFkaW5nLiBOb3RlIGZvcgo+
ID4gRW1hY3NwZWFrIHVzZXJzLCBwYXJhZ3JhcGhzIGFyZSBub3Qgd3JhcHBlZCwgc28geW91IG1h
eSBuZWVkIHRvIE0tWAo+ID4gZmlsbC1pbmRpdmlkdWFsLXBhcmFncmFwaHMgdG8gbWFrZSB0aGlu
Z3MgYmV0dGVyLiBOb3RlIHRoYXQgeW91Cj4gPiBjYW5ub3QgZmV0Y2ggd2hvbGUgYm9va3MuIEkg
a25vdywgaXQgc3Vja3MsIGJ1dCBJIGRvdWJ0IHRoaXMgd2FzCj4gPiBkZXNpZ25lZCB0byBiZSBh
biBhY3R1YWwgQmlibGUtcmVhZGluZyB0b29sLCBtb3JlIGp1c3QgYSByZWZlcmVuY2UKPiA+IHRv
b2wuIEFuZCB5ZXMsIHZlcnNlIG51bWJlcnMgYXJlIGhpZGRlbiBieSBkZWZhdWx0OyB5YXkhIElm
IHlvdQo+ID4gbmVlZCB0aGVtIHRob3VnaCwgeW914oCZbGwgZmluZCB0aGUgYXJndW1lbnQgZm9y
IHRoYXQgaW4gdGhlCj4gPiByZXBvc2l0b3J54oCZcyByZWFkbWUgZmlsZS4KPiA+IAo+ID4gSW4g
Y29uY2x1c2lvbiwgd2hpbGUgQmlibGUgcmVhZGluZyBzaXRlcyBhcmUgb2Z0ZW4gaGFyZCB0byB1
c2UsIGZvcgo+ID4gbWUgYXQgbGVhc3QsIGFuZCBJ4oCZbSBub3QgYWx3YXlzIG9uIG15IHBob25l
LCB0aGVyZSBhcmUgdG9vbHMgdGhhdAo+ID4gd29yayBhcm91bmQgdGhpcyBhIGJpdC4gSSBkb27i
gJl0IGxpa2UgdmVyc2UgbnVtYmVycyBlaXRoZXIsIGFuZCBub25lCj4gPiBvZiB0aGUgQmlibGUg
YXBwcyBJ4oCZdmUgdXNlZCwgYW5kIG5vIHVzYWJsZSBCaWJsZSBzaXRlIHNvIGZhciwKPiA+IG9m
ZmVycyB0aGUgYWJpbGl0eSB0byBoaWRlIHRoZW0uIEJpYmxlIEZldGNoIGdldHMgYXJvdW5kIHRo
aXMgd2VsbCwKPiA+IGFuZCBoaWRlcyB2ZXJzZSBudW1iZXJzIGJ5IGRlZmF1bHQuIEl0IGNhbuKA
mXQgZG93bmxvYWQgd2hvbGUgYm9va3MsCj4gPiBidXQgZm9yIHZpZXdpbmcgdGhlIEJpYmxlIGEg
Y2hhcHRlciBhdCBhIHRpbWUsIGl0IHdvcmtzIHdlbGwuCj4gPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXyBCbGludXgtbGlzdCBtYWlsaW5nCj4gPiBsaXN0
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAoKLS0gCgpKYW5pbmEgU2Fqa2EKCkxpbnV4IEZvdW5kYXRpb24gRmVsbG93
CkV4ZWN1dGl2ZSBDaGFpciwgQWNjZXNzaWJpbGl0eSBXb3JrZ3JvdXA6CWh0dHA6Ly9hMTF5Lm9y
ZwoKVGhlIFdvcmxkIFdpZGUgV2ViIENvbnNvcnRpdW0gKFczQyksIFdlYiBBY2Nlc3NpYmlsaXR5
IEluaXRpYXRpdmUgKFdBSSkKQ2hhaXIsIEFjY2Vzc2libGUgUGxhdGZvcm0gQXJjaGl0ZWN0dXJl
cwlodHRwOi8vd3d3LnczLm9yZy93YWkvYXBhCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

