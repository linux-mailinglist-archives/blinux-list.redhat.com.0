Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0E74324C40C
	for <lists+blinux-list@lfdr.de>; Thu, 20 Aug 2020 19:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597943152;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XgT90Rot0ZptqgHBlWYTe6yTnk5iB4xwyaquQ2Q1kIs=;
	b=B8fsZ59gERKo0CmT6a6QkMFf0wUtTdKRlF1bB1cOkSYuRSm9lOL8qLqW9z1+mfN44BEBPd
	6ndHDTxDTLYWJ3DSfhWuMTlbw3nZrsGHE8yDTBh4ML3vmH0eXB8o7YdJ+l9ZjDBU4/BCVu
	qBE+AXNxRytens+aYhwiNcQEnls0JIY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-qwL2Fev0MNGyFRDZ37SF2w-1; Thu, 20 Aug 2020 13:05:49 -0400
X-MC-Unique: qwL2Fev0MNGyFRDZ37SF2w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D8F40425D6;
	Thu, 20 Aug 2020 17:05:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B509C19D7D;
	Thu, 20 Aug 2020 17:05:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8FC3B183D020;
	Thu, 20 Aug 2020 17:05:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KH5gAj026325 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 13:05:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0F035115D362; Thu, 20 Aug 2020 17:05:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D1911008907
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 17:05:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58E0886C083
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 17:05:36 +0000 (UTC)
Received: from l2mail1.panix.com (l2mail1.panix.com [166.84.1.75]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-202-jiA_EORZPCeTEwsuTBjUDw-1; Thu, 20 Aug 2020 13:05:33 -0400
X-MC-Unique: jiA_EORZPCeTEwsuTBjUDw-1
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by l2mail1.panix.com (Postfix) with ESMTPS id 4BXVsK51G8zDQH
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 12:46:13 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BXVsK0GRMzhpZ
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 12:46:13 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BXVsK0WSqzcbY; Thu, 20 Aug 2020 12:46:13 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BXVsJ71KzzcbV
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 12:46:12 -0400 (EDT)
Date: Thu, 20 Aug 2020 12:46:12 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <MFBaDor--3-2@tutanota.com>
Message-ID: <alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
References: <MFBaDor--3-2@tutanota.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07KH5gAj026325
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Tm8sIHNsaW50IHdhcyBub3QgY3JlYXRlZCBmb3IgYmxpbmQgdXNlcnMuICBTbGludCB3YXMgY3Jl
YXRlZCBmb3IKaW50ZXJuYXRpb25hbCB1c2VycyB0aGVuIGFkYXB0ZWQgZm9yIGJsaW5kIHVzZXJz
IGJ5IERpZGllciBTcGFpZXIuICBZb3UKbWlnaHQgY29uc2lkZXIga25vcHBpeCBidXQgdGhhdCdz
IGEgZGlzdHJvIGZvciBhIGZsYXNoIGRyaXZlLgoKVGhlcmUncyBhbHNvIGNvY29mcml4IGFuZCB1
cnVrIG9yIGlzIHRoYXQgdXJ1cSB0byBjaGVjayBvdXQuCgpPbiBUaHUsIDIwIEF1ZyAyMDIwLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBEYXRlOiBUaHUsIDIw
IEF1ZyAyMDIwIDExOjU5OjQ0Cj4gRnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPiBUbzogYmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IFN1YmplY3Q6IEFjY2Vzc2libGUgRGlzdHJvcyBmb3IgYSBiZWdpbm5lcj8KPgo+IEhpLAo+
IEkgYW0gbmV3IHRvIHRoaXMgbWFpbGluZ2xpc3QgYW5kIG5ldyB0byBMaW51eC4gSSBoYXZlIGJl
ZW4gdXNpbmcgV2luZG93cyBmb3IgeWVhcnMgYnV0IG5vdyBJIHdhbnQgdG8gc3dpdGNoIGludG8g
YSBmcmVlIG9wZW4gc291cmNlIHNvZnR3YXJlIExpbnV4IGVudmlyb25tZW50LiBBZnRlciBxdWl0
ZSBhIHdoaWxlIG9mIHJlc2VhcmNoLCBJIGFtIGZpbmRpbmcgcGxlbnR5IG9mIGdlbmVyYWwgaW5m
b3JtYXRpb24gb24gRGlzdHJvcyBieSBzaWdodGVkIExpbnV4IHVzZXJzLCBidXQgbm90IGEgbG90
IG9mIGN1cnJlbnQgaW5mbyBmcm9tIGJsaW5kIExpbnV4IHVzZXJzLiBTbyBJJ20gc2VuZGluZyB0
aGlzIGluIGhvcGVzIHRvIGdldCBzb21lIGlucHV0IGZyb20gYW55IGJsaW5kIExpbnV4IHVzZXJz
LCBhcyB0byB3aGF0IHlvdSBtaWdodCBzdWdnZXN0IGFzIGFuIGFjY2Vzc2libGUgRGlzdHJvIGZv
ciBhIGJlZ2lubmVyLCBlc3BlY2lhbGx5IGlmIGl0IGlzIHNvbWV0aGluZyBvdGhlciB0aGFuIHN0
YW5kYXJkIFVidW50dS4KPiDCoEkgYW0gcGFydGljdWxhcmx5IGludGVyZXN0ZWQgaW4gU2xpbnQs
IFBhcmFib2xhLCBEZXZ1YW4sIG9yIFRyaXNxdWVsLiBJIGtub3cgU2xpbnQgd2FzIGNyZWF0ZWQg
Zm9yIGJsaW5kIExpbnV4IHVzZXJzIHNvIEkgYXNzdW1lIHRoYXQgaXQgbXVzdCBiZSBxdWl0ZSBh
Y2Nlc3NpYmxlLCBidXQgSSBkb24ndCBrbm93IGlmIGl0IGlzIGludGVuZGVkIG1vcmUgZm9yIGFk
dmFuY2VkIHVzZXJzLCBvciBpZiBhbnkgb2YgeW91IHN0YXJ0ZWQgb3V0IHdpdGggU2xpbnQgYXMg
YSBiZWdpbm5lcj8gSSBhbSBpbnRlcmVzdGVkIGluIHRoZSBvdGhlciBEaXN0cm9zIEkgbGlzdGVk
LCBidXQgSSBkb24ndCBrbm93IGhvdyBhY2Nlc3NpYmxlIHRoZXkgYXJlLiBEbyBhbnkgb2YgeW91
IGtub3cgaWYgdGhvc2UgRGlzdHJvcyBoYXZlIE9yY2Egc3BlYWtpbmcgZHVyaW5nIHRoZSBpbnN0
YWxsYXRpb24/Cj4gRG8gYW55IG9mIHlvdSBoYXZlIGV4cGVyaWVuY2Ugd2l0aCBTbGludCwgUGFy
YWJvbGEsIERldnVhbiwgb3IgVHJpc3F1ZWw/IFdvdWxkIHlvdSByZWNvbW1lbmQgZWl0aGVyIG9m
IHRoZW0gYXMgYSBzdGFydCBvdXQgRGlzdHJvIGZvciBhIGJlZ2lubmVyPyBPciBkbyB5b3UgdXNl
IGEgZGlmZmVyZW50IERpc3RybyB0aGF0IHlvdSBjb3VsZCBzdWdnZXN0Pwo+IMKgSSBrbm93IHRo
YXQgcGlja2luZyBhIERpc3RybyBpcyBhIHBlcnNvbmFsIGNob2ljZSBhbmQgYXBwYXJlbnRseSBE
aXN0cm9zIGNhbiBoYXZlIHZhcnlpbmcgZGVncmVlcyBvZiBhY2Nlc3NpYmlsaXR5IGZlYXR1cmVz
IGFjY29yZGluZyB0byBob3cgdGhleSBhcmUgY29uZmlndXJlZC4gQnV0IG15IHVuZGVyc3RhbmRp
bmcgaXMgdGhhdCBzb21lIERpc3Ryb3MgYXJlIG1vcmUgYWNjZXNzaWJsZSBvdXQgb2YgdGhlIGJv
eCBzbyB0byBzcGVhayB0aGFuIG90aGVycy4KPiBJIGtub3cgdGhhdCBzdGFuZGFyZCBVYnVudHUg
aXMgb2Z0ZW4gcmVjb21tZW5kZWQgZm9yIGJlZ2lubmVycyBmb3IgaXRzIGVhc2Ugb2YgdXNlLCBh
dCBsZWFzdCwgaXQgc2VlbXMgdG8gYmUgYSBwb3B1bGFyIHJlY29tbWVuZGF0aW9uIGFtb25nc3Qg
c2lnaHRlZCBMaW51eCB1c2VycywgSSBkb24ndCBrbm93IGlmIHRoYXQgaXMgYWxzbyB0aGUgY2Fz
ZSB3aXRoIGJsaW5kIExpbnV4IHVzZXJzLiBJIHJlc3BlY3QgdGhvc2Ugd2hvIHByZWZlciBVYnVu
dHUsIGhvd2V2ZXIsIEkgYW0gbm90IGNvbWZvcnRhYmxlIHdpdGggdGhlIGNvcnBvcmF0ZSBjb25u
ZWN0aW9uIHRvIENhbm9uaWNhbC4gSSBhbSBvbmx5IGludGVyZXN0ZWQgaW4gRGlzdHJvcyB3aXRo
IGEgc3Ryb25nIGZvY3VzIG9uIGZyZWVkb20gb2Ygb3BlbiBzb3VyY2Ugc29mdHdhcmUgd2l0aCBu
byBjb3Jwb3JhdGUgYWZmaWxpYXRpb25zLgo+IEkgYW0gbG9va2luZyBmb3IgYSBzaW1wbGlzdGlj
IGFuZCBzdHJlYW1saW5lIERpc3Ryby4KPiBBbGwgSSB3YW50IGlzIGEgRGlzdHJvIHRoYXQgd2ls
bCBydW4gRmlyZWZveCwgTGlicmVPZmZpY2UsIFB5dGhvbiAzLCBhIHRleHQgZWRpdG9yLCBhbmQg
YSBmaWxlIG1hbmFnZXIuIElmIEkgY2FuIGZpbmQgYSBEaXN0cm8gdGhhdCB3aWxsIHJ1biB0aG9z
ZSB0aGluZ3MgYW5kIGlzIGF0IGxlYXN0IHNvbWV3aGF0IGJlZ2lubmVyIGZyaWVuZGx5LCBJJ2xs
IGJlIHNldC4KPiBJJ2xsIGJlIGtlZXBpbmcgbXkgV2luZG93cyBsYXB0b3AgYW5kIGJ1eWluZyBh
IHNlcGFyYXRlIGxhcHRvcCB3aXRoIGhhcmR3YXJlIHRoYXQgaXMgY29tcGF0aWJsZSB3aXRoIHdo
YXRldmVyIERpc3RybyBJIGNob29zZSwgc28gdGhhdCBJIGNhbiBzd2l0Y2ggb3ZlciB0byBMaW51
eCBpbmNyZW1lbnRhbGx5IGF0IG15IHBhY2UuIFNvIEkgYW0gbm90IGludGVyZXN0ZWQgaW4gZHVh
bCBib290IG9yIFZNLiBJIGFtIGRldGVybWluZWQgdG8gbGVhcm4gTGludXgsIGV2ZW4gaWYgdGhl
IGZpcnN0IERpc3RybyBkb2Vzbid0IHdvcmsgb3V0IHNvIHdlbGwgZm9yIG1lLCB0aGVuIEkgd2ls
bCB0cnkgYW5vdGhlciBvbmUuIFNvIHRvIG1lLCBpdCBpcyB3b3J0aCBoYXZpbmcgYSBkZWRpY2F0
ZWQgbGFwdG9wLgo+IEkndmUgYmVlbiBpbiBjb250YWN0IHdpdGggYSBsYXB0b3Agb3JnYW5pemF0
aW9uIHNwZWNpYWxpemluZyBpbiBMaW51eCBjb21wYXRpYmxlIGhhcmR3YXJlIHNldHVwcywgYW5k
IHRoZXkgd2lsbCBpbnN0YWxsIGEgRGlzdHJvIG9mIG15IGNob2ljZSwgbWFraW5nIHN1cmUgdGhl
IGFjY2Vzc2liaWxpdHkgZmVhdHVyZXMgYXJlIGVuYWJsZWQuIEkgY2FuIGxlYXJuIGhvdyB0byBk
byBpbnN0YWxsYXRpb25zIGluZGVwZW5kZW50bHkgb25jZSBJIGdhaW4gdGhlIGV4cGVyaWVuY2Ug
YW5kIHNraWxscyBvdmVyIHRpbWUuIEJ1dCBmb3Igbm93IEkganVzdCB3YW50IHRvIHN0YXJ0IHNv
bWV3aGVyZSwgd2l0aCBzb21ldGhpbmcgdGhhdCBpcyBhcyBhY2Nlc3NpYmxlIGFzIHBvc3NpYmxl
IG91dCBvZiB0aGUgYm94IGFuZCB0aGV5IGNhbiBpbnN0YWxsIGl0IGZvciBtZSB0aGUgZmlyc3Qg
dGltZSBhcm91bmQuCj4gwqBGcm9tIHdoYXQgSSBoYXZlIHJlYWQgb25saW5lLCB0aGVyZSBpcyBv
ZnRlbiBhIHN0ZWVwIGxlYXJuaW5nIGN1cnZlIHdoZW4gYWRqdXN0aW5nIGZyb20gYSBXaW5kb3dz
IGVudmlyb25tZW50IHRvIGEgTGludXggZW52aXJvbm1lbnQuIFdoZXJlYXMgV2luZG93cyBqdXN0
IGNvbWVzIHdpdGggbW9zdCBzb2Z0d2FyZSBwcmVjb25maWd1cmVkIG91dCBvZiB0aGUgYm94LCBM
aW51eCBpcyBjdXN0b21pemFibGUgc28gc29tZSBiZWdpbm5lcnMgY2FuIGhhdmUgYSBoYXJkIHRp
bWUgYWRqdXN0aW5nIHRvIGl0LiBTbyBJIGFtIG5vdCBleHBlY3RpbmcgTGludXggdG8ganVzdCBp
bnN0YW50bHkgd29yayBvbmUgaHVuZHJlZCBwZXJjZW50IHNlYW1sZXNzbHksIGVzcGVjaWFsbHkg
d2hlbiBhZGRpbmcgYWNjZXNzaWJpbGl0eSBmZWF0dXJlcyBpbnRvIHRoZSBlcXVhdGlvbi4gVGhl
cmUgd2lsbCBwcm9iYWJseSBiZSBzb21lIGNoYWxsZW5nZXMgYWxvbmcgdGhlIHdheS4gQnV0IGl0
IHNlZW1zIHRoYXQgc29tZSBEaXN0cm9zIGFyZSBtb3JlIHN0cmVhbWxpbmUsIG1pbmltYWxpc3Rp
YywgYW5kIGJlZ2lubmVyIGZyaWVuZGx5IHRoYW4gb3RoZXJzLiBJIGp1c3QgZG9uJ3Qgd2FudCB0
byB1bmtub3dpbmdseSBwaWNrIHRoZSBtb3N0IGRhdW50aW5nIERpc3RybyB0aGF0IExpbnV4IGhh
cyB0byBvZmZlciBsb2wuCj4gwqBJIHdhbnQgc29tZXRoaW5nIHdoZXJlIHRoZSBpbnN0YWxsYXRp
b24gcGFja2FnZSBhbmQgYm9vdCBwcm9jZXNzIGlzIGFjY2Vzc2libGUgc28gdGhhdCB3aGVuIEkg
cGF0Y2ggaXQgaW4gdGhlIGZ1dHVyZSwgb3IgZXZlciBuZWVkIHRvIGRvIGEgcmVpbnN0YWxsLCBJ
IHdpbGwgYmUgYWJsZSB0byBkbyB0aGF0IGluZGVwZW5kZW50bHkuCj4gSSB3YW50IHNvbWV0aGlu
ZyB3aGVyZSBPcmNhIHNwZWFrcyBjb25zaXN0ZW50bHkgaW4gZXNzZW50aWFsIGFwcHMgbGlrZSBG
aXJlZm94LCBhbmQgYWxzbyBoYXMgZ29vZCBicmFpbGxlIG91dHB1dCBhcyBJIHdpbGwgZXZlbnR1
YWxseSBjb25uZWN0IGl0IHRvIGEgYnJhaWxsZSBkaXNwbGF5IGF0IHNvbWUgcG9pbnQuCj4gRG8g
YW55IG9mIHlvdSB1c2UgU2xpbnQsIFBhcmFib2xhLCBEZXZ1YW4sIG9yIFRyaXNxdWVsPwo+IFBl
cmhhcHMgeW91IHByZWZlciBvdGhlciBEaXN0cm9zIHRoYXQgSSBoYXZuJ3QgaGVhcmQgb2YgeWV0
LiBJIGFtIG9wZW4gdG8gYWxsIHN1Z2dlc3Rpb25zIGZvciBhbnl0aGluZyBvdGhlciB0aGFuIHN0
YW5kYXJkIFVidW50dS4KPiBUaGFua3MgaW4gYWR2YW5jZSBmb3IgYW55IGluZm8geW91IGNvdWxk
IHNoYXJlIHdpdGggYSBiZWdpbm5lciBsb29raW5nIGZvciBhIERpc3RybyB3aXRoIGFuIGFjY2Vz
c2libGUgaW5zdGFsbCBhbmQgYm9vdCBwcm9jZXNzLgo+IFJlZ2FyZHMsCj4gU0wKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCi0tIAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

