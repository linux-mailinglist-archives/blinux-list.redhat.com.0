Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [216.205.24.74])
	by mail.lfdr.de (Postfix) with ESMTP id 9A3A3195B0E
	for <lists+blinux-list@lfdr.de>; Fri, 27 Mar 2020 17:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585326364;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/oX2wjjbM9CG6m8tSUQGao/6LEZTuiayASn3twB1VRw=;
	b=Cg6dIEpqxmoVyvdQVwVxZ3IJaN8yf0LJhWdr17BuXddHI+6uDjxWAuA4kRu+C15kXvQ6a0
	3gNQbnoqGrZsp7hdI8DCopNUGqw3CFOmWEe/lbcidAxURoSat7QmS+4BSuSEZx+ZzJdmkO
	rNHWXPhQ+KmvTzo75sOtGHyuWzjMCeU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-SaOMOIwUOiyVNd0EL9DY2Q-1; Fri, 27 Mar 2020 12:26:02 -0400
X-MC-Unique: SaOMOIwUOiyVNd0EL9DY2Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 11F158017CC;
	Fri, 27 Mar 2020 16:25:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 95CC960C18;
	Fri, 27 Mar 2020 16:25:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8ACA818089CD;
	Fri, 27 Mar 2020 16:25:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02RGPoTa012992 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 12:25:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0926D2093CC4; Fri, 27 Mar 2020 16:25:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E83672022EAB
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 16:25:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AAA7F80029A
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 16:25:41 +0000 (UTC)
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com
	[192.185.50.93]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-332-o7rZIsb6Mlm4gElo1mfKyQ-1; Fri, 27 Mar 2020 12:25:39 -0400
X-MC-Unique: o7rZIsb6Mlm4gElo1mfKyQ-1
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
	by gateway24.websitewelcome.com (Postfix) with ESMTP id CB85C1600E3
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 11:25:37 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id Hrndj6wCLEfyqHrndj52Px; Fri, 27 Mar 2020 11:25:37 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-97-230.inter.net.il ([84.229.97.230]:45198
	helo=telaviv1.shlomifish.org) by gator4065.hostgator.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
	(envelope-from <shlomif@shlomifish.org>) id 1jHrnd-000prZ-70
	for blinux-list@redhat.com; Fri, 27 Mar 2020 11:25:37 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id 831032610EA
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 19:25:32 +0300 (IDT)
Date: Fri, 27 Mar 2020 19:25:32 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Convert unwrapped paragraphs to hard wrapped paragraphs when
	there's no blank lines.
Message-ID: <20200327192532.120f151d@telaviv1.shlomifish.org>
In-Reply-To: <CAO2sX317wcDpD8e3OWg7_5UvxMWND7urVtyok-9i9Q=PBBZCFg@mail.gmail.com>
References: <CAO2sX317wcDpD8e3OWg7_5UvxMWND7urVtyok-9i9Q=PBBZCFg@mail.gmail.com>
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
X-Exim-ID: 1jHrnd-000prZ-70
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-97-230.inter.net.il (telaviv1.shlomifish.org)
	[84.229.97.230]:45198
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02RGPoTa012992
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

SGksCgpPbiBGcmksIDI3IE1hciAyMDIwIDE1OjMwOjI5ICswMDAwCkxpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgoKPiBPa2F5
LCB0aGlzIGlzbid0IHN0cmljdGx5IGFuIGFjY2Vzc2liaWxpdHkgcXVlc3Rpb24sIGJ1dCBJIGNh
bid0IHRoaW5rCj4gb2YgYW55IGJldHRlciBwbGFjZSB0byBhc2sgYW5kIEdvb2dsZSBkaWRuJ3Qg
aGVscCBtdWNoLgo+IAo+IEkgb2NjYXNpb25hbGx5IHB1cmNoYXNlIGVCb29rcyBmcm9tIFNtYXNo
IFdvcmRzIGFzIHRoZXkncmUgdGhlIG9ubHkKPiBlQm9vayBTdG9yZSBJIGtub3cgb2YgdGhhdCBv
ZmZlcnMgcGxhaW4gdGV4dCBhbG9uZyBzaWRlIHRoZSBmYXIgdG9vCj4gcHJldmFsZW50IGZvciBt
eSBsaWtpbmcgUERGLCBlUHViLCBhbmQgS2luZGxlIGZvcm1hdHMuCj4gCj4gUHJvYmxlbSBpcywg
dGhlaXIgcGxhaW4gdGV4dCBlQm9va3MgYXJlIHR5cGljYWxseSBsb25nIGVub3VnaCBGaXJlZm94
Cj4gYW5kIE9yY2Egc2ltcGx5IGNob2tlIG9uIHRoZW0gYW5kIHRoZXkgaGF2ZSBwYXJhZ3JhcGhz
IHRoYXQgYXJlCj4gdW53cmFwcGVkLCB3aGljaCBtYWtlcyByZWFkaW5nIHRoZW0gd2l0aCBuYW5v
IGFuZCBTQkwgY3VtYmVyc29tZS4KPiBOb3JtYWxseSwgSSdkIGp1c3QgdXNlIG5hbm8ncyBqdXN0
aWZ5IGNvbW1hbmQgdG8gaGFyZCB3cmFwIHRoZXdob2xlCj4gZmlsZSwgYnV0IHRoZXkgbGFjayBi
bGFuayBsaW5lcyBiZXR3ZWVuIHBhcmFncmFwaHMsIHNvIE5hbm8gd291bGQKPiB0aGluayB0aGUg
d2hvbGUgYm9vayBhIHNpbmdsZSBwYXJhZ3JhcGguCj4gCj4gU28sIGRvZXMgYW55b25lIGtub3cg
YSB3YXkgdG8gYXV0b21hdGUgaW5zZXJ0aW5nIGJsYW5rIGxpbmVzIGJlZm9yZQo+IGFuZCBhZnRl
ciBlYWNoIGxpbmUgaW4gYSBmaWxlIHRoYXQncyB0b28gbG9uZyB0byBmaXQgb24gdGhlIHNjcmVl
biBhbGwKPiBhdCBvbmNlIGFuZCB0aGVuIGhhcmQgd3JhcCB0aG9zZSBsb25nIGxpbmVzPwo+IAoK
SSBkb24ndCB1bmRlcnN0YW5kIGhvdyBwYXJhZ3JhcGhzIHN0YXJ0IGFuZCBlbmQgaW4gdGhlc2Ug
ZmlsZXMuIE90aGVyd2lzZSB5b3UKY2FuIHRyeSB1c2luZyBvbmUgb2YgdGhlIHRleHQgcHJvY2Vz
c2luZyB0b29scyBtZW50aW9uZWQgaGVyZToKCiogaHR0cHM6Ly93d3cuc2hsb21pZmlzaC5vcmcv
b3Blbi1zb3VyY2UvcmVzb3VyY2VzL3RleHQtcHJvY2Vzc2luZy10b29scy8KCiogaHR0cHM6Ly93
d3cuY29tcHV0ZXJob3BlLmNvbS91bml4L3Vmb2xkLmh0bQoKKiBodHRwczovL2VuLndpa2lwZWRp
YS5vcmcvd2lraS9GbXRfKFVuaXgpCgoqIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1Bh
cl8oY29tbWFuZCkKCk5vdGUgdGhhdCB5b3UgbWF5IGhhdmUgYmV0dGVyIGx1Y2sgY29udmVydGlu
ZyBFUFVCcyAoYXNzdW1pbmcgdGhleSBsYWNrCmh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtp
L0RpZ2l0YWxfcmlnaHRzX21hbmFnZW1lbnQgKSB0byBwbGFpbnRleHQgdXNpbmcKdG9vbHMgc3Vj
aCBhcyBodHRwczovL3BhbmRvYy5vcmcvICwKaHR0cHM6Ly9tZXRhY3Bhbi5vcmcvc2VhcmNoP3E9
aHRtbCUzQSUzQXdpa2ljb252ZXJ0ZXImc2l6ZT0yMCAsIGV0Yy4KClJlZ2FyZHMsCgoJU2hsb21p
IEZpc2gKCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4g
aHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoK
Ci0tIAoKU2hsb21pIEZpc2ggICAgICAgaHR0cHM6Ly93d3cuc2hsb21pZmlzaC5vcmcvCmh0dHBz
Oi8vaXMuZ2QvTVFIVkYzIC0gVGhlIEF0b20gVGV4dCBFZGl0b3IgZWRpdHMgYSAyLDAwMCwwMDFC
IGZpbGUKClJlYWwgcHJvZ3JhbW1lcnMgdXNlIGEgbmljZSBlZGl0b3IgYW5kIGEgbmljZSBwcm9n
cmFtbWluZyBsYW5ndWFnZSBhbmQgZ2V0IGl0CmRvbmUgaW4gbGVzcyB0aGFuIE8oTiEpLgogICAg
4oCUIHZhbmd1YXJkIG9uIEZyZWVub2Rl4oCZcyAjI3Byb2dyYW1taW5nCgpQbGVhc2UgcmVwbHkg
dG8gbGlzdCBpZiBpdCdzIGEgbWFpbGluZyBsaXN0IHBvc3QgLSBodHRwOi8vc2hsb20uaW4vcmVw
bHkgLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

