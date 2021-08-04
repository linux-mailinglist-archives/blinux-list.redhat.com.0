Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5C51D3DF933
	for <lists+blinux-list@lfdr.de>; Wed,  4 Aug 2021 03:20:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628040002;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=h6ZaAqZk4NokV23uf0U0UvStah+mXfXuFFOmGwzh9OQ=;
	b=BwozGQvJA/R6Op85YlKjwwrlQwTfT0bkd9snkn+ws0trBfX4Y7+dpVVhm7/fuzTXDMBsGf
	g55KbUa3iHttQeNS0HUxw0jILhS27aR6D/Y1za9kAZG07U2g8fOF+tgMpnYpu/aBDFL+ie
	oug/uiK4xx8AaHFpY7HAW7LvyOov+YM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-367-5rTYGGjjP-evgTH0hI83Rg-1; Tue, 03 Aug 2021 21:20:00 -0400
X-MC-Unique: 5rTYGGjjP-evgTH0hI83Rg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 824DA1006C86;
	Wed,  4 Aug 2021 01:19:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B477E1980E;
	Wed,  4 Aug 2021 01:19:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DBB42180BAB1;
	Wed,  4 Aug 2021 01:19:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1741JQnT017273 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Aug 2021 21:19:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8BC8C21241F0; Wed,  4 Aug 2021 01:19:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8733B21241EE
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 01:19:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB73B185A7A4
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 01:19:23 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-191-eu4sd5SZNF2olH1db4O0qw-1; Tue, 03 Aug 2021 21:19:22 -0400
X-MC-Unique: eu4sd5SZNF2olH1db4O0qw-1
Received: by mail-oi1-f180.google.com with SMTP id 26so1090779oiy.0
	for <blinux-list@redhat.com>; Tue, 03 Aug 2021 18:19:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=raUTGAemEm6SSmJygdh0yDrTJ0wt+3B9eCwLXNSii58=;
	b=MVeWwQIm5jUxh2h268Nk7yNsD4JOiw/bO6xi8+grVXg9UlzxhK3wfiKZUXeU3cTI+N
	OvcDy0xfB6XMmqvEj1678UofqOHIaXB1+QoLN58Q6K44/h8+voTH+Tr2rghecqJ3SWC+
	8AbUNy4wAJV6wETQDGKr0KOV+H6u5j5hFbjYmdZxW1jmRHoIUmngxzGkovYKKcp6iGJe
	Zlp7E6Sc5PtzPXIUdhb+601Clh9CAFehLSTWULSKYdmPhNUkdW6vKOEgr+wGhHrGEZ+n
	2rgMVopys4b0gzQEf26q9AlfXjufDHV3/TtqA1B03buGjSK4aSRFDZtMrZy3rbSrsiqJ
	FCSg==
X-Gm-Message-State: AOAM533VvVPsmdft8Kb7xePg42O1F8dJIRhW0AdU7nq2MWVf0UfZl3fB
	1JtLijRWOfePFu3s9n/UrjMe5ZbXP60=
X-Google-Smtp-Source: ABdhPJwV0MiA0+k4PtPU4omCxqiqHPsx1tHdcneL6nuW30n63lC3W//aBBz4RWBbalop80U8FcrjmQ==
X-Received: by 2002:a05:6808:13c7:: with SMTP id
	d7mr1583444oiw.138.1628039961238; 
	Tue, 03 Aug 2021 18:19:21 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:b874:c178:b73:41a0])
	by smtp.gmail.com with ESMTPSA id l3sm153262otn.41.2021.08.03.18.19.20
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Aug 2021 18:19:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Tue, 3 Aug 2021 20:19:19 -0500
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
Message-Id: <DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1741JQnT017273
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

SWYgSSB3b3VsZCB0cnkgU29sdXMsIHdvdWxkIGl0IGJlIGJlc3QgdG8gdHJ5IG1hdGUsLCBnbm9t
ZSwgb3IgYnVkZ2llPwpJIGFtIGEgdG90YWwsIGFuZCB1c2Ugb3JjYS4KCj4gT24gQXVnIDIsIDIw
MjEsIGF0IDg6MzYgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51
eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IEknbSBnb2luZyBpbiBjaXJjbGVzIHRyeWlu
ZyB0byBmaWd1cmUgb3V0IHdoeSBNYXRlIGxvc2VzIGZvY3VzIHdpdGggQ2hyb21pdW0gb3Igd2hl
biBjbG9zaW5nIGFwcHMuIEkndmUgYmVlbiB0b2xkIGl0J3MgL25vdC8ganVzdCBhIFNvbHVzIGlz
c3VlIGFuZCBoYXBwZW5zIG9uIG90aGVyIGRlc2t0b3BzIGFuZCB3YXMgdG9sZCBNYXRlJ3Mgbm90
IGJlaW5nIGRldmVsb3BlZCBhbnkgbW9yZS4KPiAKPiBJJ3ZlIHlldCB0byB0ZXN0IGEgZnJlc2gg
QnVkZ2llIGluc3RhbGwsIGJ1dCBvbiBteSBNYXRlIHBsdXMgQnVkZ2llIHN5c3RlbSwgSSd2ZSBh
IGZldyBtaW5vciBxdWlya3MgbGlrZSB0aGUgdGFzayBzd2l0Y2hlciBpbiBCdWRnaWUgbm90IGJl
aW5nIGFjY2Vzc2libGUsIGFuZCB3b25kZXJpbmcgaWYgdGhlcmUncyBhbnl0aGluZyBJIGNhbiBk
byB3aXRoIHRoYXQ/IEknbGwgdGFrZSBCdWRnaWUgbm90IGJyZWFraW5nIHNpbmNlIENocm9taXVt
IChvciBCcmF2ZSkgaXMgbXkgYnJvd3NlciBvZiBjaG9pY2UgYW5kIEkgZG9uJ3Qgd2FudCBteSBk
ZXNrdG9wIHRvIGtlZWwgb3ZlciBhbmQgZGllIGV2ZXJ5IHRpbWUgSSBjbG9zZSBCcmF2ZSBvciBh
IEJyYXZlIHByaXZhdGUgd2luZG93Cj4gCj4gT24gOC8yLzIxIDEyOjMwIFBNLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBJIGhhdmUgaGVhcmQgb2YgQnVkZ2ll
Lgo+PiBTaW5jZSBhIHRvdGFsbHkgYmxpbmQgdXNlciB3b3VsZCBub3QgY2FyZSBhYm91dCBhIGRl
c2t0b3DigJlzIGFwcGVhcmFuY2UsIHdoYXQgbWlnaHQgYmUgYWR2YW50YWdlcyBvZiBCdWRnaWUg
aW4gbXkgY2FzZT8KPj4gSSBoYWQgbmV2ZXIgY29uc2lkZXJlZCBTb2x1cyBiZWZvcmUuCj4+IEFz
IHRvIHByb2JsZW1zIHdpdGggZGVza3RvcHMgd2hlbiBpbnN0YWxsaW5nLCBJIGFwcHJlY2lhdGUg
a25vd2luZyBvZiB0aGVtLgo+PiAKPj4+IE9uIEF1ZyAxLCAyMDIxLCBhdCAxMDo1MCBBTSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4g
d3JvdGU6Cj4+PiAKPj4+IE1hdHRoZXcKPj4+IAo+Pj4gCj4+PiAKPj4+IFdoYXQgaXMgc29sdXMg
ZXhhY3RseT8gIGlzIHRoaXMgYSBmbGF2ZXIgb2YgdWJ1bnR1IG1lZWluZyBiYXNlZCBvZmYgb2Yg
aXQgb3Igc29tZSB0aGluZyBlbHNlPyAgSG93IGlzIHRoZSBpbnN0YWxsZXIuICBUaGFua3MuCj4+
PiAKPj4+IAo+Pj4gCj4+PiBIaSwKPj4+IAo+Pj4gCj4+PiAKPj4+IAo+Pj4gT24gOC8xLzIwMjEg
NTozOCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+PiBT
aW5jZSBTb2x1cyBjYW1lIHVwIGFnYWluLCBJJ2xsIHNoYXJlIG15IG9ic2VydmF0aW9ucyBvZiB0
aGUgdGhyZWUgREVzIEkndmUgdXNlZC4gSSdtIGxlYXZpbmcgUGxhc21hIG91dCBzaW5jZSBpdCBk
b2Vzbid0IHdvcmsgdG9vIHdlbGwgZm9yIG1lLCBidXQgeU1NViBvbiB0aGF0Cj4+Pj4gCj4+Pj4g
Cj4+Pj4gQnVkZ2llOgo+Pj4+IEl0J3MsIGJvaWxpbmcgaXQgZG93bi4gR25vbWUgd2l0aCBhIGZh
bmN5IGNvYXQgb2YgcGFpbnQgYW5kIGlzIHRoZSBTb2x1cyBmbGFnc2hpcCBvbmUuIEl0IHdvcmtz
IHdlbGwgZW5vdWdoIGdpdmVuIGl0J3MgR25vbWUgNDAgYmFzZWQgYW5kIGlzIHZlcnkgbXVjaCB1
c2VhYmxlLiBOb3cgaWYgSSBjb3VsZCBhc3NpZ24ga2V5Ym9hcmQgc2hvcnRjdXRzLCB0aGF0J2Qg
YmUgaGFuZHkuIE1heWJlIEkgY2FuIGFuZCBoYXZlbid0IGZvdW5kIGl0IHlldCwgSSBkdW5uby4g
T25lIG5vdGUgSSBkbyBoYXZlIGlzIHRoYXQgTGlnaHRETSBpcyB0aGUgbG9naW4gbWFuYWdlciBh
bmQgaXMgaW5zYW5lbHkgL2xvdWQvIG9uIHN0YXJ0dXAgb25jZSB5b3UgZW5hYmxlIE9yY2Egd2l0
aCB0aGUgdXN1YWwgc2hvcnRjdXQuIFNvIGp1c3QgaGF2ZSBhIGxvbmcsIGxvbmcga2V5Ym9hcmQg
Y2FibGUsIGFuZCBCdWRnaWUvR25vbWUgaGF2ZSBhIG5pY2Ugc3RhcnR1cCBzb3VuZCB3aGVuIHlv
dSBsb2cgaW4sIHdoaWNoIGlzIGFsd2F5cyBhIG5pY2UgdG91Y2guIFRoZSBTb2x1cyB0ZWFtIGhh
dmUgcHV0IGEgbG90IG9mIGNhcmUgaW50byB0aGUgREUgZnJvbSB3aGF0IEkndmUgZm91bmQuCj4+
Pj4gCj4+Pj4gR25vbWU6Cj4+Pj4gCj4+Pj4gSXQncyBHbm9tZS4gSXQncyBHbm9tZSA0MC4gTmVl
ZCBJIHNheSBtb3JlPyBPbmUgbm90ZSBpcyBJIGNvdWxkbid0IGdldCBzcGVlY2ggYXQgYSBsb2dp
biBtYW5hZ2VyIG9uIG15IHN5c3RlbS4gSXQgZG9lcyBoYXZlIGEgbmljZSBzdGFydHVwIHNvdW5k
IHRvIGEgbGEgQnVkZ2llLgo+Pj4+IAo+Pj4+IAo+Pj4+IE1hdGU6Cj4+Pj4gCj4+Pj4gT2ggdGhp
cyBpcyBnb2luZyB0byBiZSBkaXNhcHBvaW50aW5nLiBUaGVyZSdzIGEgZmV3IGlzc3VlcyB3aXRo
IE1hdGUgYXMgZmFyIGFzIFNvbHVzIGdvZXMuCj4+Pj4gCj4+Pj4gCj4+Pj4gMS4gVGhlIE9yY2Eg
c2hvcnRjdXQgaXNuJ3Qgc2V0LiBXaGljaCBpc24ndCBhIGJpZyBkZWFsIHNpbmNlIGFsdCtmMiBh
bmQgb3JjYSBzb3J0cyB0aGF0IHRoZW4gd2hlbiB5b3UgZ2V0IHRoZSBzeXN0ZW0gaW5zdGFsbGVk
IGl0J3MgdHdvIHNlY29uZHMgd29yayB0byBzZXQgdGhlIHNob3J0Y3V0IGFuZCBzZXQgT3JjYSB0
byBhdXRvc3RhcnQuCj4+Pj4gCj4+Pj4gCj4+Pj4gMi4gVEhlIG11Y2gsIG11Y2gsIE1VQ0ggYmln
Z2VyIGlzc3VlIGlzIHRoZSBkZXNrdG9wIGxvc2VzIGZvY3VzIGFuZCByZXF1aXJlcyBhIEdUSyBk
aWFsb2cgdG8gYmUgbG9hZGVkLiBRdWl0IENocm9taXVtPyBZZWFoIE9yY2ErSCwgRjIsIGFuZCB0
aGVuIGtlZXAgZ29pbmcuIE5vdy4gSWYgdGhlcmUncyBhIGNvbXB5eiBzZXR0aW5nIEkndmUgb3Zl
cmxvb2tlZCB0byBmaXggdGhpcy4uLnRoZW4gc3VyZSwgSSdsbCBnaXZlIGl0IGFub3RoZXIgc2hv
dC4gRG9uJ3QgZ2V0IG1lIHdyb25nLiBNYXRlIGlzIGZhbnRhc3RpYyB3aGVuIGl0IHdvcmtzLiBJ
dCdzIGp1c3QuLi4ud2hlbiBpdCBicmVha3Mgb24gU29sdXMgYW5kIG5lZWRzIHdvcmthcm91bmRz
LCBpdCdzIGtpbmQgb2YgYSBidWdiZWFyIGZvciBtZSwgYXMgd2VsbCBhcyB0aGUgYm90dG9tIHBh
bmVsIGJlaW5nIHVubGFiZWxlZCwgYnV0IHlvdSBjYW4gZ2V0IGFyb3VuZCBtb3N0IG9mIHRoYXQg
QXMgd2l0aCBCdWRnaWUgaXQgdXNlcyBMaWdodERNIHNvIHlvdSBnZXQgT3JjYSB3b3JraW5nIG9u
IHRoZSBsb2dpbiBzY3JlZW4sIGFnYWluLCBzdHVwaWRseSBsb3VkLiBJZiB0aGUgZm9jdXMgbG9z
cyBpc3N1ZSBjYW4gYmUgZml4ZWQsIHRoZW4gSSdtIGxpYWJsZSB0byBzd2l0Y2ggYmFjayB0byBN
YXRlIGZ1bGwgdGltZSBpbnN0ZWFkIG9mIEJ1ZGdpZS4KPj4+PiAKPj4+PiBBbmQsIHRoZXJlJ3Mg
bm8gc3RhcnR1cCBzb3VuZCBlaXRoZXIgd2hpY2gsIHJlYWxseSwgZGlzYXBwb2ludGluZyBnaXZl
biB0aGUgb3RoZXIgdHdvIGhhdmUgb25lIGFuZCBJIGRvbid0IGtub3cgYm91dCBQbGFzbWEsIGJ1
dCBpdCBmZWVscyB0byBtZSBsaWtlIHRoZSBNYXRlIG9uZSBpc24ndCBmdWxseSBmaW5pc2hlZCB1
cCB2cyB0aGUgb3RoZXIgREUuCj4+Pj4gCj4+Pj4gCj4+Pj4gQW5kIHJlbGF0ZWQgbm90ZSwgSSdt
IGh1bnRpbmcgZG93biBhbiBubXR1aSB3aGljaCBkb2Vzbid0IHNlZW0gdG8gYmUgc2hpcHBlZCB3
aXRoIFNvbHVzLiBJIG1heSBqdXN0IHJlcXVlc3QgaXQgb3IgYXNrIG9uIHRoZWlyIGZvcnVtcyBp
ZiBvbmUncyBpbiBhbmQgSSdtIHVzaW5nIHRoZSB3cm9uZyBuYW1lLgo+Pj4+IAo+Pj4+IAo+Pj4+
IFJlbGF0ZWQgbm90ZSAjMjoKPj4+PiAKPj4+PiBTb21laG93IGl0J3MgbW9yZSBzdGFibGUgZm9y
IG1lIHRoYW4gVWJ1bnR1LCB3aGljaCBJIGRpZG4ndCB0aGluayBwb3NzaWJsZS4KPj4+PiAKPj4+
PiAKPj4+PiBGb3IgaW5zdGFsbGVkIHRoaW5ncz8KPj4+PiAKPj4+PiBNYXRlIGRpZG4ndCBjb21l
IHdpdGggYSBtYWlsIGNsaWVudCBhbmQgY2FtZSB3aXRoIEZpcmVmb3ggd2hpY2ggSSd2ZSByZXBs
YWNlZCB3aXRoIEJyYXZlLCBhbmQgaW5zdGFsbGVkIFRodW5kZXJiaXJkLiBFYWNoIGRpc3RybyBz
aGlwcyB3aXRoIE9yY2EgNDAuMCwgYnV0IEkndmUgbm90IHRyaWVkIGJ1aWxkaW5nIE9yY2EgZnJv
bSBnaXQgeWV0LCBJJ20gd2FyeSBvZiBpbnN0YWxsaW5nIHRoZSBidWlsZCBkZXBzIG9uIGFuIGFs
cmVhZHkgd29ya2luZyBzeXN0ZW0KPj4+PiAKPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4gCj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3Q=

