Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8FA49E73F
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 17:17:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643300271;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oDIcSKAaSWNURfbfGvPUdnu2sbFzMWrHxWjXHetOAck=;
	b=iFoMK/8DH05u1cq7xWHrqr4Kyu0MUaLIpO6ZM3zJaXlUAIq+0KTwqjShrGtcPbbBrGUW3Z
	Oi3IVL3/cPrFOE0hnO17/8csdP7FWRCzJsYmxZTwDuoG806+Se7l6tEWlw1MXGDynAI2AX
	5ckgkYHxx0bQLoWMc1GeXSBdiglbh/I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-546-AEBbUhBVOhKHrUysY3lAnQ-1; Thu, 27 Jan 2022 11:17:47 -0500
X-MC-Unique: AEBbUhBVOhKHrUysY3lAnQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92F811017990;
	Thu, 27 Jan 2022 16:17:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31F3C84D12;
	Thu, 27 Jan 2022 16:17:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0C1E51809CB9;
	Thu, 27 Jan 2022 16:17:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20RGHbla016195 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 11:17:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 637AB76EB; Thu, 27 Jan 2022 16:17:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5EB2476E9
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 16:17:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3C61980029D
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 16:17:34 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-482-xAxjwgovMXG0e4dhZU0Jkg-1; Thu, 27 Jan 2022 11:17:31 -0500
X-MC-Unique: xAxjwgovMXG0e4dhZU0Jkg-1
Received: by mail-qv1-f44.google.com with SMTP id e20so3243560qvu.7
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 08:17:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=dCRQn32j41cKx2agKC9VyaCB6K4gWfStg2k4jFBr6cA=;
	b=f7ASIcF+vFOqqTA4IQPsfgnfdmJVAxNJe3vOZOsX8Y5r9bWzvVtb230UuMF6p73gop
	MV6518JH1H8Y8+7zftrUnGPFoKhWCq1pkCFeOYxxS4DNMDcNxG7pWf1rCjh4pAr5g1jN
	D7vdKKfQC1WW7SGQ6lzcgzia7aTC+safuc+TuxfZ0rQC5sIwr62Z4q/475MymfnXUo37
	9COxlMXGJB/HYoUlLXNS1Hane9VXA17XcMKATO0UPWZekn8cRQVzBtRNXBnQxg1U1W1J
	ZcxxRC4V35W+ScNBMPdU8F3WZ48wP63fBZ05NZwcw+5L1A9lqlrI5exCBUtYbr0qcTI5
	MPEA==
X-Gm-Message-State: AOAM531Xcco+2lBSYLTAUTSnwqr17t0SU1qN+bpK+7n3PiTeRjZGNCQv
	dbjg7F2kKt8B0+OVai9evh4OIYu19tI=
X-Google-Smtp-Source: ABdhPJxIOtyu+ypSRltQJ5hN+3Cu7F5/zNwI+aHXcfv+5eezlZXDnYmc3pStiMjtgtdh5JcdrUSucw==
X-Received: by 2002:ad4:5dc4:: with SMTP id m4mr3815883qvh.54.1643300250749;
	Thu, 27 Jan 2022 08:17:30 -0800 (PST)
Received: from smtpclient.apple ([204.29.85.5])
	by smtp.gmail.com with ESMTPSA id
	az10sm1655758qkb.41.2022.01.27.08.17.30 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Jan 2022 08:17:30 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: Why do you use Linux? expanded from Converting text to mp3
Date: Thu, 27 Jan 2022 10:17:29 -0600
References: <571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
	<Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
	<YfHvt+4aziezYwjx@panix.com>
	<Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
	<YfH3P14/As9FjG9P@panix.com>
	<Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
	<YfIP1c5bihD/wxmY@panix.com>
	<CABKqQvF2jRBAb=Rw9MzgCq-U_0r7rGNA1uqTodcrxKuTGYorrQ@mail.gmail.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <CABKqQvF2jRBAb=Rw9MzgCq-U_0r7rGNA1uqTodcrxKuTGYorrQ@mail.gmail.com>
Message-Id: <5038F1C3-AE3F-4B6E-AAD8-ED906C407072@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

QmFzaWNhbGx5LCBFbWFjc3BlYWsgaXMgdGhlIOKAnGtpbGxlciBhcHDigJ0gZm9yIG1lLiBJIHVz
ZSBNYWMgYW5kIFdpbmRvd3Mgbm93LCBzbyBoYXZlIGEgVW5peCB0ZXJtaW5hbCBpbiBNYWNPUyB3
aGVuIEkgbmVlZCB0aGF0LCBidXQgSeKAmXZlIHVzZWQgcHVyZSBMaW51eCBmb3IgbWF5YmUgMyB0
byA2IG1vbnRoIGludGVydmFscyB3aGVuIEkgZmVsdCBsaWtlIEkgY291bGQgaGFuZGxlIGl0LiBG
ZWRvcmEgd2FzIG15IGZhdm9yaXRlLCBhbmQgaWYgSSB3ZXJlIHN0aWxsIHJ1bm5pbmcgTGludXgs
IHRoYXTigJlzIHdoYXQgSeKAmWQgY2hvb3NlLiBFbWFjc3BlYWsgaXMgYW1hemluZyB0aG91Z2gs
IGZvciBtZS4gSSBrbm93IGEgbG90IG9mIHBlb3BsZSBjYW7igJl0IGdldCB0aGVpciBoZWFkIGFy
b3VuZCBhbGwgdGhlIEVzY2FwZSBNZXRhIEFsdCBDb250cm9sIFNoaWZ0IGtleWJvYXJkIGNvbW1h
bmRzLCBidXQgb25jZSB5b3UgZ2V0IHRoZSBlc3NlbnRpYWwgb25lcywgYW5kIHRoZSBoZWxwIGNv
bW1hbmRzLCBJ4oCZdmUgZm91bmQgaXQgd29ya3MgYW1hemluZ2x5LiBCdXQgaXQgYWxzbyB3b3Jr
cyBncmVhdCBvbiB0aGUgTWFjIHRvbywgc28gdGhlcmXigJlzIHRoYXQuIEFsc28gR1BvZGRlciBp
cyBqdXN0IGFib3V0IHRoZSBiZXN0IFBvZGNhc3QgTWFuYWdlciBJ4oCZdmUgZm91bmQgb24gYW55
IHBsYXRmb3JtLiBTaG9vdCBpdCBjYW4gaGFuZGxlIFlvdXR1YmUgY2hhbm5lbHMsIHRocm91Z2gg
WW91dHViZS1EbC4gVGhhdOKAmXMganVzdCBwbGFpbiBhbWF6aW5nLgpEZXZpbiBQcmF0ZXIKci5k
LnQucHJhdGVyQGdtYWlsLmNvbQoKSHR0cHM6Ly9kZXZpbnByYXRlci5mbG91bmRlci5vbmxpbmUK
Cj4gT24gSmFuIDI2LCAyMDIyLCBhdCA5OjQyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBEYW5nLCB5J2Fs
bCBhcmUgb2xkIQo+IAo+IEknbSBpbiBhIENvbXB1dGVyIFNjaWVuY2UgZ3JhZHVhdGUgcHJvZ3Jh
bS4gSXQncyBwcmFjdGljYWxseSByZXF1aXJlZAo+IHRoYXQgSSBoYXZlIGEgTGludXggbWFjaGlu
ZS4gSSBkb24ndCB1c2UgaXQgTGludXggZXhjbHVzaXZlbHkuIEluCj4gZmFjdCwgSSBqdXN0IGdv
dCB0aGlzIFVidW50dSBtYWNoaW5lIHRoYXQgSSBhbSBvbiBub3cuIFdoeSBpcyBPcmNhJ3MKPiBz
cGVlY2ggc28gc2xvdz8gSSBoYXZlIGl0IHNwZWQgdXAgdG8gMTAwJSwgYW5kIGl0J3Mgc3RpbGwg
d2F5IHRvbwo+IHNsb3chIFNwZWFraW5nIG9mIGN1c3RvbWl6YXRpb24sIHRoZSBOVkRBIHNjcmVl
biByZWFkZXIgb24gd2luZG93cwo+IGFsbG93cyBtZSB0byBzZXQgdGhlIHNwZWVjaCByYXRlIHRv
IGEgbGV2ZWwgdGhhdCBpcyBjb21mb3J0YWJsZSBmb3IKPiBtZS4KPiAKPiBBbWFuZGFbMF0KPiAK
PiBPbiAxLzI2LzIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4gSSB1c2UgbGludXggZXhjbHVzaXZlbHkgYW5kIGZv
ciBzZXZlcmFsIHJlYXNvbnMuCj4+IAo+PiAxLiBJIHdvcmtlZCBpbiBVbml4IGFuZCAgU3VuT1Mg
c2luY2UgMTk4Ni4gU28gTGludXggd2FzIGEgZmFtaWxpYXIKPj4gZW52aXJvbm1lbnQKPj4gdG8g
dHJhbnNpdGlvbiBpbnRvLgo+PiAKPj4gMi4gQmVjYXVzZSBvbmNlIEkgZ2V0IGl0ICB0byB3b3Jr
LCBpdCB3b3Jrcy4gVGhhdCBrZXlib2FyZCBjb25maWd1cmF0aW9uIEkKPj4gbWVudGlvbmVkCj4+
IG9jY3VycmVkIHllYXJzIGFnbyBhbmQgSSBoYXZlbid0IHRvdWNoZWQgaXQgc2luY2Ugbm90IGV2
ZW4gd2hlbiBJIHN3aXRjaGVkCj4+IHRvIGEgZGlmZmVyZW50IG1hY2hpbmUuIE5vdCBldmVuIHdo
ZW4gSSBzd2l0Y2hlZCB0byBkaWZmZXJlbnQga2V5Ym9hcmRzLgo+PiBOb3QgZXZlbiB3aGVuIEkg
c3dpdGNoZWQgdG8gZGlmZmVyZW50IHZlcnNpb25zIG9mIExpbnV4Lgo+PiAKPj4gMy4gTGludXgg
ZG9lcyB3aGF0IEkgd2FudCB3aXRob3V0IGJhY2t0YWxrLCBzZWNvbmQgZ3Vlc3NpbmcsIGFkcywg
dW53YW50ZWQKPj4gdXBncmFkaW5nLCBvciBteXN0ZXJpb3VzIGNyYXNoZXMuCj4+IAo+PiAKPj4g
NC4gTGludXggdHJhZGVzIGxlYXJuaW5nIGZvciBwb3dlciBhbmQgZmxleGliaWxpdHkuCj4+IFRo
ZSBmZXcgdGltZXMgICBJIHRyaWVkIGxlYXJuaW5nIFdpbmRvd3MgSSBxdWlja2x5IGdyZXcgZnJ1
c3RyYXRlZCBhdCBqdXN0Cj4+IGhvdyBsaW1pdGVkIHRoZSBzb2Z0d2FyZSB3YXMgYW5kCj4+IGhv
dyBpdCBmb3JjZWQgdGhlIHVzZXIgdG8gZG8gdGhpbmdzIGl0cyB3YXkgaW5zdGVhZCBvZiBsZXR0
aW5nIG1lIGRvIHRoZW0gTVkKPj4gd2F5Lgo+PiBJIHNwZW50IG1vcmUgdGltZSBmaWdodGluZyB3
aXRoIHdpbmRvd3MgdGhhbiBnZXR0aW5nIHRoaW5ncyBkb25lLgo+PiAKPj4gNS4gRXZlcnlvbmUg
SSBrbm93IHdobyB1c2VzIFdpbmRvd3MsIHNwZW5kcyBmYXIgdG9vIG11Y2ggdGltZSBjb21wbGFp
bmluZwo+PiBhYm91dCB3aW5kb3dzLCBmaXhpbmcgdGhlCj4+IG1hbnkgcHJvYmxlbXMgd2luZG93
cyBjYXVzZXMgYnkgaXRzIHF1aXJrcywgYXJjYW5lIG15c3Rlcmllcywgc2hvcnRjb21pbmdzLAo+
PiBhbmQgYnVpbHQgaW4gZmF1bHRzLAo+PiBzbyBJIHNlZSBubyByZWFzb24gdG8gZ2l2ZSBpdCB5
ZXQgYW5vdGhlciB0cnkuCj4+IAo+PiBPbiBXZWQsIEphbiAyNiwgMjAyMiBhdCAwOToxOTowOVBN
IC0wNTAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+IHdyb3RlOgo+Pj4g
T2theSAgdGhlbiwKPj4+IFRoaXMgaWxsdXN0cmF0ZXMgYW5vdGhlciBwb2ludCB3aGljaCBnb3Qg
dG91Y2hlZCAgb24gaW4gYSBkaWZmZXJlbnQKPj4+IHRocmVhZAo+Pj4gYXMgd2VsbC4KPj4+IFRo
ZSwgeW91IG11c3QgYmUgcHJlcGFyZWQgdG8gZG8gcHJvZ3JhbW1pbmcgaWYgeW91IGFyZSBnb2lu
ZyB0byB1c2UgTGludXgKPj4+IGZsdWlkbHksIGlmIGF0IGFsbC4KPj4+IE9uIGFuIGVudGlyZWx5
IGRpZmZlcmVudCBsaXN0IEkgYW0gb24sIGZvbGtzIHdlcmUgY29tcGxhaW5pbmcgYWJvdXQKPj4+
IHdpbmRvd3MKPj4+IDEwIGFuZCB3aW5kb3dzIDExLCBiZWNhdXNlIG9mIHRoZSBjaGFuZ2VzLgo+
Pj4gQ29tcHV0ZXJzIGFyZSBpbmNyZWFzaW5nbHkgc3VjaCBjcml0aWNhbCBwYXJ0cyBvZiBvdXIg
bGl2ZXMsIGJhbmtpbmcKPj4+IHNob3BwaW5nLCBldmVuIHZvdGluZywgdGhhdCBtYW55IG9uIHRo
ZSBsaXN0IHNwb2tlIG9mIGp1c3Qgd2FudGluZyB0byBzaXQKPj4+IGRvd24gYXQgdGhlaXIgY29t
cHV0ZXIgYW5kIGhhdmUgdGhpbmdzIHdvcmsuLi5zbyB0aGV5IHN0aWxsIHVzZSBvbGRlcgo+Pj4g
ZWRpdGlvbnMgb2YgdGhpbmdzIGxpa2UgV2luZG93cyAgWFA/ICBhbmQgV2luZG93cyAgNy4KPj4+
IEkgYWRtaXQgdGhhdCBpcyBwYXJ0IG9mIHdoeSB0aGUgb3V0IG9mIHRoZSBib3ggY29uY2VwdCBk
aXNjdXNzZWQgaGVyZQo+Pj4gd2hlcmUKPj4+IEFjY2VzcyBpcyBjb25jZXJuZWQgc2VlbXMgYSBi
aXQsIHNwZWFraW5nIHBlcnNvbmFsbHksIGxpa2UgYQo+Pj4gbWlzY29uY2VwdGlvbi4KPj4+IEZl
dyBvbiB0aGUgbGlzdCBJIHJlZmVyZW5jZWQgYWJvdmUgYXJlIHVzaW5nIGFkYXB0aXZlIHRvb2xz
LCBhbmQgc29tZSBvZgo+Pj4gdGhlbSBhcmUgc2NpZW50aXN0cywgd2l0aCBtYW55IG5vdCB3YW50
aW5nIGNvbmZpZ3VyaW5nIHRvIGJlIGEgcGFydCBvZgo+Pj4gdGhlaXIKPj4+IGNvbXB1dGVyIGxp
dmVzLgo+Pj4gU28sIHdoeSBkbyB5b3UgdXNlIExpbnV4Pwo+Pj4gd2hhdCBtYWtlcyBpdCB3b3J0
aCB0aGUgdGltZSB0aGUgdHJhaW5pbmcgYW5kIHRoZSB0cmlhbCAgLyBlcnJvcj8KPj4+IE9oLCBh
bmQgaXMgaXQgeW91ciBvbmx5IG9wZXJhdGluZyBzeXN0ZW0/Cj4+PiBXYW50IHRvIGFzayB0aGUg
bGF0dGVyIGJlY2F1c2UgSSBrbm93IHNvbWVvbmUgd2hvIGluZGVlZCB1c2VzIExpbnV4Cj4+PiBl
eGNsdXNpdmVseSwgdm93aW5nIG5ldmVyIHRvIHRvdWNoIHdpbmRvd3MgYWdhaW4uCj4+PiBQbGVh
c2UgZmVlbCBmcmVlIHRvIGV4cHJlc3MgaW4gZGV0YWlsLCBuZXZlciBtaW5kIG15IHBlcnNvbmFs
IHNpdHVhdGlvbiwKPj4+IGJlY2F1c2UgdGhlIGpvdXJuYWxpc3QgaW4gbWUgaXMgaW50ZXJlc3Rl
ZCBhcyB3ZWxsLgo+Pj4gS2FyZW4KPj4+IAo+Pj4gCj4+PiAKPj4+IE9uIFdlZCwgMjYgSmFuIDIw
MjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiAKPj4+PiBG
YWlyIHBvaW50Lgo+Pj4+IAo+Pj4+IEFzIHJlZ2FyZHMgdGhlIGtleWJvYXJkLCBJIGFncmVlIHdp
dGggdGhlIG1haW4ga2V5Ym9hcmQgcGhpbG9zb3BoeSwgYW5kCj4+Pj4gaW4gZmFjdCBzcGVha3Vw
IGRvZXMgYWxsb3cgeW91IHRvIGN1c3RvbWl6ZSBpdCB0byB1c2UgdGhlIG1haW4ga2V5Ym9hcmQK
Pj4+PiBpbnN0ZWFkIG9mIHRoZQo+Pj4+IGtleXBhZC4gSG93ZXZlciwgaXQgdG9vayBtZSBhIHdo
aWxlIHRvIGN1c3RvbWl6ZSBpdCB0byBteSBsaWtpbmcgYW5kCj4+Pj4gcmVxdWlyZWQgcXVpdGUg
YSBiaXQgb2Ygc3R1ZHkgYW5kIGdlbmVyYXRpbmcgb2YgcGVyc29uYWwga2V5bWFwcywgc28KPj4+
PiBtaWdodCBub3QgYmUgb2YgYW55IGludGVyZXN0IHRvIHRob3NlIHdobyBhcmVuJ3QgY29tZm9y
dGFibGUgbWFraW5nCj4+Pj4gc29tZSBsb3cgbGV2ZWwgbW9kaWZpY2F0aW9ucy4KPj4+PiAKPj4+
PiBPbiBXZWQsIEphbiAyNiwgMjAyMiBhdCAwODoxNjowOFBNIC0wNTAwLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbAo+Pj4+IGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+IFdoaWNoIG1heSBpbGx1c3Ry
YXRlIG15IHBvaW50Lgo+Pj4+PiBJIGNhbiB1c2UgdGhvc2Ugd2l0aG91dCBjaGFuZ2luZyB3aGF0
IEkgaGF2ZSBub3cuCj4+Pj4+IFNwZWFraW5nIHBlcnNvbmFsbHkgaWYgTGludXggZG9lcyBub3Qg
cHJvdmlkZSBlcXVhbCBhY2Nlc3MgdG8gYm90aAo+Pj4+PiBoYXJkd2FyZQo+Pj4+PiBhbmQgIHNv
ZnR3YXJlIHNwZWVjaCwgaW4gYm90aCBpdHMgY29tbWFuZCBsaW5lIGFuZCBncmFwaGljYWwKPj4+
Pj4gcGxhdGZvcm1zLCBJIGFtCj4+Pj4+IHVuc3VyZSAganVzdCB3aGVyZSB0aGUgYWR2YW50YWdl
IGlzIGZvciBtZSBwZXJzb25hbGx5Lgo+Pj4+PiBPbmUgdGhpbmcgSSBwZXJzb25hbGx5IGRpc2xp
a2VkIHdpdGggc3BlYWt1cCwgYXQgbGVhc3QgdGhlIHRpbWVzIEkKPj4+Pj4gdHJpZWQgaXQKPj4+
Pj4geWVhcnMgYmFjayB3YXMgdGhlIG5lZWQgdG8gcmVtb3ZlIG15IGhhbmRzIGZyb20gdGhlIGtl
eWJvYXJkIGZvciBtYW55Cj4+Pj4+IHRoaW5ncy4KPj4+Pj4gVGhhdCBtYXkgbm90IGhvbGQgdHJ1
ZSBhbGwgdGhlIHdheSBhcm91bmQsIGJ1dCBJIGFtIGEgc29saWQgdHlwaXN0IGFuZAo+Pj4+PiBk
bwo+Pj4+PiBub3QgbGlrZSBoYXZpbmcgdG8gcmVtb3ZlIG1heSBoYW5kcywgc2F5IHVzZSB0aGUg
bnVtYmVyIHBhZCwgaWYgSSB3YW50Cj4+Pj4+IGFzIEkKPj4+Pj4gd29yayBjb250ZW50Lgo+Pj4+
PiBUaGF0IGlzIG1lIHRob3VnaCwgd2hpY2ggaXMgb25lIG1hZ2ljYWwgdGhpbmcgYWJvdXQgcGVy
c29uYWwKPj4+Pj4gY29tcHV0ZXJzLgo+Pj4+PiBldmVyeW9uZSBicmluZ3MgdGhlaXIgZGVzaXJl
cyBhbmQgdXNhZ2UgZ29hbHMgdG8gdGhlaXIgbWFjaGluZXMuCj4+Pj4+IFdoaWNoIHRvIG15IG1p
bmQgYWdhaW4gcGVyc29uYWxseSBtZWFucyBMaW51eCBzaG91bGQsIGlmIGl0IGFjdHVhbGx5Cj4+
Pj4+IGNhbiwgYmUKPj4+Pj4gZmxleGlibGUgZW5vdWdoIGZvciBhbGwgY2hvaWNlcyB0byB3b3Jr
IGluIGl0IGNvbW1hbmQgbGluZSBhbmQKPj4+Pj4gZ3JhcGhpY2FsLgo+Pj4+PiBLYXJlbgo+Pj4+
PiAKPj4+Pj4gCj4+Pj4+IAo+Pj4+PiBPbiBXZWQsIDI2IEphbiAyMDIyLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+PiAKPj4+Pj4+IEkgZG9uJ3QgdXNlIEZp
cmVmb3guIEkgdXNlIGEgdGV4dCBiYXNlZCBicm93c2VyLCBlaXRoZXIgbHlueCwgdzNtLAo+Pj4+
Pj4gb3IgbGlua3MgKHRoZSBjaGFpbikgZGVwZW5kaW5nLgo+Pj4+Pj4gCj4+Pj4+PiBPbiBXZWQs
IEphbiAyNiwgMjAyMiBhdCAwNzo0ODo0MlBNIC0wNTAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bAo+Pj4+Pj4gZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+PiBSdWR5LAo+Pj4+Pj4+IEFzIGFuIGV4
YW1wbGUsIG1heSBJIGFzayB3aGF0IGVkaXRpb24gIG9mICBGaXJlZm94IHlvdSBhcmUgcnVubmlu
Zwo+Pj4+Pj4+IHdpdGggdGhhdAo+Pj4+Pj4+IGRlY3RhbGsgRXhwcmVzcz8KPj4+Pj4+PiBLYXJl
bgo+Pj4+Pj4+IAo+Pj4+Pj4+IAo+Pj4+Pj4+IAo+Pj4+Pj4+IE9uIFdlZCwgMjYgSmFuIDIwMjIs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pj4gCj4+Pj4+
Pj4+IEthcmVuLAo+Pj4+Pj4+PiBJIHVzZSBMaW51eCBzcGVha3VwIHdpdGggYSBEZWN0YWxrIGV4
cHJlc3Mgc3BlZWNoIHN5bnRoZXNpemVyLgo+Pj4+Pj4+PiBBbmQgSSBiZWxpZXZlIHNwZWFrdXAg
YWxzbyBoYW5kbGVzIHRoZQo+Pj4+Pj4+PiBzbG90IGNhcmQgdmVyc2lvbiBvZiBkZWN0YWxrIHRo
b3VnaCB5b3UnbGwgbmVlZCBhIGRlc2t0b3AgUEMKPj4+Pj4+Pj4gdGhhdCBzdXBwb3J0cyBpdCwg
c28gdGhlIHNvZnR3YXJlIGlzIHRoZXJlLgo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gCj4+Pj4+Pj4+IFJ1
ZHkKPj4+Pj4+Pj4gCj4+Pj4+Pj4+IE9uIFdlZCwgSmFuIDI2LCAyMDIyIGF0IDA1OjIyOjM1UE0g
LTA1MDAsIExpbnV4IGZvciBibGluZAo+Pj4+Pj4+PiBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4+Pj4+Pj4+PiBLeWxlLAo+Pj4+Pj4+Pj4gaSBkbyBub3QgY29uc2lkZXIgbXkgaGFyZHdhcmUg
ZGVja3RhbGsgcHJvdmlkZWQgdmlhIG15IHJlYWRpbmcKPj4+Pj4+Pj4+IGVkZ2UgdG8gYmUgYW4K
Pj4+Pj4+Pj4+IGV4YW1wbGUgb2YgdGV4dCB0byBzcGVlY2guCj4+Pj4+Pj4+PiBCeSBkZWZpbml0
aW9uLCBhbmQgdGhlcmUgYXJlIG1hbnksIHRoZSB0ZXJtLCB3aGljaCByZWZlcnMgdG8KPj4+Pj4+
Pj4+IHRha2luZwo+Pj4+Pj4+Pj4gaW5mb3JtYXRpb24gaW4gdGV4dCBmb3JtYXQgIGFuZCAgcmVu
ZGVyaW5nIGl0IGFsb3VkIGRvZXMgbm90LAo+Pj4+Pj4+Pj4gc3BlYWtpbmcKPj4+Pj4+Pj4+IHBl
cnNvbmFsbHksICBlcXVhbCBwcm9udW5jaWF0aW9uIGVhc2UuCj4+Pj4+Pj4+PiBJbiBmYWN0IG9u
ZSB0aGVvcnkgYWJvdXQgdGhpcyBoYXMgdG8gZG8gd2l0aCBwcmVzZXJ2aW5nIHRoZQo+Pj4+Pj4+
Pj4gYXVkaW9ib29rCj4+Pj4+Pj4+PiBtYXJrZXQuCj4+Pj4+Pj4+PiBncmFudGVkLCBhcyAgd2Fz
IHBvaW50ZWQgb3V0IGluIGEgdGhyZWFkIHNvbWUgdGltZSBhZ28sIEkgYW0KPj4+Pj4+Pj4+IG5v
dCBsaWtlbHkgdG8KPj4+Pj4+Pj4+IGxlYXJuIGFib3V0IExpbnV4IHNjcmVlbiByZWFkZXJzLCBu
byBkcml2ZXIgZXhpc3RzIGZvciBteQo+Pj4+Pj4+Pj4gaGFyZHdhcmUgc3BlZWNoLAo+Pj4+Pj4+
Pj4gYW5kIHNvZnR3YXJlIHN5bnRoZXNpemVyIHNvdXJjZXMgIGN1cnJlbnRseSBkbyBhIG51bWJl
ciBvbiBteQo+Pj4+Pj4+Pj4gYnJhaW4uCj4+Pj4+Pj4+PiBLYXJlbgo+Pj4+Pj4+Pj4gCj4+Pj4+
Pj4+PiAKPj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4gT24gV2VkLCAyNiBKYW4gMjAyMiwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+Pj4+Pj4+Pj4gd3JvdGU6Cj4+Pj4+Pj4+PiAKPj4+
Pj4+Pj4+PiBUaGF0IGJlaW5nIHNhaWQsIHRoZSBhdWRpb3BoaWxlIGluIG1lIGNhbm5vdCByZXNp
c3QgcG9pbnRpbmcKPj4+Pj4+Pj4+PiBvdXQgdGhhdAo+Pj4+Pj4+Pj4+IHByb251bmNpYXRpb24g
YWJpbGl0aWVzIG9mIHR0cyBhcmUgb2YgZmFyIGxlc3MgcXVhbGl0eSB0aGFuCj4+Pj4+Pj4+Pj4g
dGhvc2UKPj4+Pj4+Pj4+PiBwcm92aWRlZCBieSBtYW55IGFjdHVhbCBzY3JlZW4gcmVhZGVycywg
YXQgbGVhc3QgdGhlIG9uZXMgSQo+Pj4+Pj4+Pj4+IGhhdmUKPj4+Pj4+Pj4+PiB1c2VkLi4ud2hp
Y2g/Pz8/IGRvZXMgbm90IGluY2x1ZGUgYW55IGZvciBMaW51eC4KPj4+Pj4+Pj4+PiAKPj4+Pj4+
Pj4+PiAKPj4+Pj4+Pj4+PiBUaGF0IGJlaW5nIHNhaWQsIHRoZSB0ZWNobm9maWxlIGluIG1lIGNh
bm5vdCByZXNpc3QgcG9pbnRpbmcKPj4+Pj4+Pj4+PiBvdXQgdGhlCj4+Pj4+Pj4+Pj4gZmFjdCB0
aGF0IGV2ZXJ5IHNjcmVlbiByZWFkZXIgZm9yIGV2ZXJ5IE9TIHVzZXMgbm90aGluZyBidXQKPj4+
Pj4+Pj4+PiBUVFMKPj4+Pj4+Pj4+PiB0ZWNobm9sb2d5IHRvIHJlYWQgdGhlIHNjcmVlbi4gV2Vs
bCwgSSBndWVzcyBCZU15RXllcwo+Pj4+Pj4+Pj4+IGRvZXNuJ3QsIGJ1dCBpdCdzCj4+Pj4+Pj4+
Pj4gbm90IGV4YWN0bHkgYSBzY3JlZW4gcmVhZGVyLCB1bmxlc3MgeW91IG5lZWQgdGhlIHZvbHVu
dGVlcgo+Pj4+Pj4+Pj4+IHRvIHJlYWQgYQo+Pj4+Pj4+Pj4+IHNjcmVlbiBmb3IgeW91Lgo+Pj4+
Pj4+Pj4+IAo+Pj4+Pj4+Pj4+IH4gS3lsZQo+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+
Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4gCj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+
IAo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gLS0KPj4+Pj4+Pj4gUnVkeSBWZW5lcgo+Pj4+Pj4+PiBXZWJz
aXRlOiBodHRwOi8vd3d3LnJ1ZHl2ZW5lci5jb20KPj4+Pj4+Pj4gVHdpdHRlcjogaHR0cHM6Ly90
d2l0dGVyLmNvbS9SdWR5U2FsdAo+Pj4+Pj4+PiBUaGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRydXRo
IGFuZCBmYWxzZWhvb2QgaXMgdGhhdCB0cnV0aCByZW1haW5zCj4+Pj4+Pj4+IGNvbnN0YW50IG5v
IG1hdHRlciB3aGljaCBwb2xpdGljYWwgcGFydHkgaG9sZHMgdGhlIG1ham9yaXR5Lgo+Pj4+Pj4+
PiAtIEEuIFIuIFZlbmVyCj4+Pj4+Pj4+IAo+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+IAo+Pj4+
Pj4+PiAKPj4+Pj4+PiAKPj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+PiAKPj4+Pj4+IC0tCj4+Pj4+PiBSdWR5
IFZlbmVyCj4+Pj4+PiBXZWJzaXRlOiBodHRwOi8vd3d3LnJ1ZHl2ZW5lci5jb20KPj4+Pj4+IFR3
aXR0ZXI6IGh0dHBzOi8vdHdpdHRlci5jb20vUnVkeVNhbHQKPj4+Pj4+IFRoZSBkaWZmZXJlbmNl
IGJldHdlZW4gdHJ1dGggYW5kIGZhbHNlaG9vZCBpcyB0aGF0IHRydXRoIHJlbWFpbnMKPj4+Pj4+
IGNvbnN0YW50IG5vIG1hdHRlciB3aGljaCBwb2xpdGljYWwgcGFydHkgaG9sZHMgdGhlIG1ham9y
aXR5Lgo+Pj4+Pj4gLSBBLiBSLiBWZW5lcgo+Pj4+Pj4gCj4+Pj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+PiAKPj4+Pj4+
IAo+Pj4+PiAKPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pj4+IAo+Pj4+IC0tCj4+Pj4gUnVkeSBWZW5lcgo+Pj4+IFdlYnNpdGU6
IGh0dHA6Ly93d3cucnVkeXZlbmVyLmNvbQo+Pj4+IFR3aXR0ZXI6IGh0dHBzOi8vdHdpdHRlci5j
b20vUnVkeVNhbHQKPj4+PiBUaGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRydXRoIGFuZCBmYWxzZWhv
b2QgaXMgdGhhdCB0cnV0aCByZW1haW5zCj4+Pj4gY29uc3RhbnQgbm8gbWF0dGVyIHdoaWNoIHBv
bGl0aWNhbCBwYXJ0eSBob2xkcyB0aGUgbWFqb3JpdHkuCj4+Pj4gLSBBLiBSLiBWZW5lcgo+Pj4+
IAo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+PiAKPj4+PiAKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+PiAKPj4gLS0KPj4gUnVkeSBWZW5lcgo+PiBXZWJzaXRlOiBodHRw
Oi8vd3d3LnJ1ZHl2ZW5lci5jb20KPj4gVHdpdHRlcjogaHR0cHM6Ly90d2l0dGVyLmNvbS9SdWR5
U2FsdAo+PiBUaGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRydXRoIGFuZCBmYWxzZWhvb2QgaXMgdGhh
dCB0cnV0aCByZW1haW5zIGNvbnN0YW50IG5vCj4+IG1hdHRlciB3aGljaCBwb2xpdGljYWwgcGFy
dHkgaG9sZHMgdGhlIG1ham9yaXR5Lgo+PiAgLSBBLiBSLiBWZW5lcgo+PiAKPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiAKPj4gCj4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

