Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id 5ECEF19643E
	for <lists+blinux-list@lfdr.de>; Sat, 28 Mar 2020 08:40:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585381212;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IiedAM9UV7etMNpUdNmD3kmjvCdzensie41/+69S5Tk=;
	b=ibrlkFshNyUYF5+IVFxintylzuoNEqMxhzyb/7qxSAJI9VeM4z+KGVr5O48SCzDJCuk6YJ
	Jt8jp+Wg5zEyFlo4Cl/Me/5wg4zPBaWPN6+ZYZM5jEeOXufTTpa57cWgXVbbZP/s9ouPXq
	XLIG3U08BBr4RCiuQv2g9W8xo6PN9ew=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-330-BN5upCWmP0GdQ9QdUBtV6A-1; Sat, 28 Mar 2020 03:40:09 -0400
X-MC-Unique: BN5upCWmP0GdQ9QdUBtV6A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 84F011005513;
	Sat, 28 Mar 2020 07:40:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E31A5C1C3;
	Sat, 28 Mar 2020 07:40:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 201011809567;
	Sat, 28 Mar 2020 07:39:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02S7dh75002044 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 28 Mar 2020 03:39:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5F3D42038B80; Sat, 28 Mar 2020 07:39:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B14B2026D67
	for <blinux-list@redhat.com>; Sat, 28 Mar 2020 07:39:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B7442101A55A
	for <blinux-list@redhat.com>; Sat, 28 Mar 2020 07:39:40 +0000 (UTC)
Received: from gateway32.websitewelcome.com (gateway32.websitewelcome.com
	[192.185.145.122]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-82-qhfO2CjNPHKm9H8diZiCVA-1; Sat, 28 Mar 2020 03:39:37 -0400
X-MC-Unique: qhfO2CjNPHKm9H8diZiCVA-1
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
	by gateway32.websitewelcome.com (Postfix) with ESMTP id 846591E2D3
	for <blinux-list@redhat.com>; Sat, 28 Mar 2020 02:39:36 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id I648jMSXLSl8qI648jtFRP; Sat, 28 Mar 2020 02:39:36 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-97-230.inter.net.il ([84.229.97.230]:51720
	helo=telaviv1.shlomifish.org) by gator4065.hostgator.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
	(envelope-from <shlomif@shlomifish.org>) id 1jI648-000XH3-4z
	for blinux-list@redhat.com; Sat, 28 Mar 2020 02:39:36 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id 5525B261521
	for <blinux-list@redhat.com>; Sat, 28 Mar 2020 10:39:33 +0300 (IDT)
Date: Sat, 28 Mar 2020 10:39:33 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Convert unwrapped paragraphs to hard wrapped paragraphs
	whenthere's no blank lines.
Message-ID: <20200328103933.7d2e4a3b@telaviv1.shlomifish.org>
In-Reply-To: <CAJ1g4g-4CYHo6BAnvuC9y-QPbQpSeBqKSfBfVSFumE3Da8OL4w@mail.gmail.com>
References: <CAO2sX317wcDpD8e3OWg7_5UvxMWND7urVtyok-9i9Q=PBBZCFg@mail.gmail.com>
	<20200327192532.120f151d@telaviv1.shlomifish.org>
	<AA5C9E7D46DD479397E7FC88B654B5F9@bobsh23aug09>
	<CAJ1g4g-4CYHo6BAnvuC9y-QPbQpSeBqKSfBfVSFumE3Da8OL4w@mail.gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 84.229.97.230
X-Source-L: No
X-Exim-ID: 1jI648-000XH3-4z
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-97-230.inter.net.il (telaviv1.shlomifish.org)
	[84.229.97.230]:51720
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02S7dh75002044
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUGF1bCwKCk9uIEZyaSwgMjcgTWFyIDIwMjAgMTQ6NDM6MDEgLTA3MDAKTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cgo+
ID4gSSBkb24ndCB1bmRlcnN0YW5kIGhvdyBwYXJhZ3JhcGhzIHN0YXJ0IGFuZCBlbmQgaW4gdGhl
c2UgZmlsZXMuIE90aGVyd2lzZQo+ID4geW91Cj4gPiBjYW4gdHJ5IHVzaW5nIG9uZSBvZiB0aGUg
dGV4dCBwcm9jZXNzaW5nIHRvb2xzIG1lbnRpb25lZCBoZXJlOgo+ID4KPiA+ICogaHR0cHM6Ly93
d3cuc2hsb21pZmlzaC5vcmcvb3Blbi1zb3VyY2UvcmVzb3VyY2VzL3RleHQtcHJvY2Vzc2luZy10
b29scy8KPiA+Cj4gPiAqIGh0dHBzOi8vd3d3LmNvbXB1dGVyaG9wZS5jb20vdW5peC91Zm9sZC5o
dG0KPiA+Cj4gPiAqIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0ZtdF8oVW5peCkKPiA+
Cj4gPiAqIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1Bhcl8oY29tbWFuZCkKPiA+Cj4g
PiBOb3RlIHRoYXQgeW91IG1heSBoYXZlIGJldHRlciBsdWNrIGNvbnZlcnRpbmcgRVBVQnMgKGFz
c3VtaW5nIHRoZXkgbGFjawo+ID4gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvRGlnaXRh
bF9yaWdodHNfbWFuYWdlbWVudCApIHRvIHBsYWludGV4dCB1c2luZwo+ID4gdG9vbHMgc3VjaCBh
cyBodHRwczovL3BhbmRvYy5vcmcvICwKPiA+IGh0dHBzOi8vbWV0YWNwYW4ub3JnL3NlYXJjaD9x
PWh0bWwlM0ElM0F3aWtpY29udmVydGVyJnNpemU9MjAgLCBldGMuICAKPiAKPiBPZiB0aGF0IGxp
c3Qgb2YgcHJvZ3JhbXMsIEknZCBiZSBpbmNsaW5lZCB0byB1c2UgUGFuZG9jLiBJdCBwZXJtaXRz
Cj4geW91IHRvIHdyaXRlIGZpbHRlcnMgaW4gKGVtYmVkZGVkKSBMdWEsIHdoaWNoIGlzIGEgcXVp
Y2stdG8tbGVhcm4KPiBwcm9ncmFtbWluZyBsYW5ndWFnZS4gRm9yIGV4YW1wbGUsIHRoaXMgTHVh
IG9uZS1saW5lciBjb252ZXJ0cyBhCj4gc3RyaW5nICgicyIpIHRvIGFkZCBhIGxpbmUgYnJlYWsg
YWZ0ZXIgZWFjaCBleGlzdGluZyBsaW5lIGJyZWFrOgo+IAo+IHMgPSBzdHJpbmcuZ3N1YihzLCAi
PEJSPiIsICI8QlI+XG48QlI+IikKPiAKCk90aGVyIHRvb2xzIG1heSB3b3JrIGFzIHdlbGwuIEZ1
cnRoZXJtb3JlLCB5b3VyIEhUTUwgcHJvY2Vzc2luZyBzdWJzdGl0dXRpb24Kd2lsbCBub3Qgd29y
ayBpZiBvbmUgaGFzICI8YnI+IiBvciAiPGJyIC8+IiBvciAiPGJyLz4iIGZvciBuZXdsaW5lcyBv
ciB1c2VzIHRoZQptb3JlIHJlY29tbWVuZGVkIGh0dHBzOi8vZGV2ZWxvcGVyLm1vemlsbGEub3Jn
L2VuLVVTL2RvY3MvV2ViL0hUTUwvRWxlbWVudC9wCmVsZW1lbnQuCgpBbHNvIHNlZToKCiogaHR0
cHM6Ly9wZXJsLWJlZ2luLm9yZy91c2VzL3RleHQtcGFyc2luZy8KCiogaHR0cHM6Ly9ibG9nLmNv
ZGluZ2hvcnJvci5jb20vcGFyc2luZy1odG1sLXRoZS1jdGh1bGh1LXdheS8KCgoKPiBPbiB3cml0
aW5nIFBhbmRvYyBmaWx0ZXJzIHdpdGggTHVhLCBzZWUgPGh0dHBzOi8vcGFuZG9jLm9yZy9sdWEt
ZmlsdGVycy5odG1sPi4KPiAKPiBCZXN0IHJlZ2FyZHMsCj4gCj4gUGF1bAo+IAoKCgotLSAKClNo
bG9taSBGaXNoICAgICAgIGh0dHBzOi8vd3d3LnNobG9taWZpc2gub3JnLwpodHRwczovL2lzLmdk
L01RSFZGMyAtIFRoZSBBdG9tIFRleHQgRWRpdG9yIGVkaXRzIGEgMiwwMDAsMDAxQiBmaWxlCgpK
b2Vs4oCZcyBHZW5lcmFsaXNhdGlvbjogSWYgaXQgaGFwcGVucyB0byB5b3UsIGl0IGhhcHBlbnMg
dG8gZXZlcnlib2R5LgooT3I6IEl04oCZcyBuZXZlciBvbmx5IHlvdS4pCiAgICDigJQgQmFzZWQg
b24gaHR0cDovL3d3dy5qb2Vsb25zb2Z0d2FyZS5jb20vbmV3cy8yMDAyMDQwMi5odG1sCgpQbGVh
c2UgcmVwbHkgdG8gbGlzdCBpZiBpdCdzIGEgbWFpbGluZyBsaXN0IHBvc3QgLSBodHRwOi8vc2hs
b20uaW4vcmVwbHkgLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

