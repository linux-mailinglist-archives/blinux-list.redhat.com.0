Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CB044071F
	for <lists+blinux-list@lfdr.de>; Sat, 30 Oct 2021 05:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635565660;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MSLOWeBSEqkC0BF+uXHNZGgnZYuAys3HJcEfk29I4BM=;
	b=IHY58D8o3eBicBXd2Z+clVVPUmR+2IdvJpRfstCe9OO5yLF6Dh9X2jIT53WD1qW23kse5P
	Mc18NXMKXjISaMtWf219yOA/+r0Mx7eWHBbPjOPbv8oN1FXtdEdieMBJDuAY0XqRVjtXF/
	hV5BZf7dlht8AfbsZ9VhSeScr3QmpxY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-Knqdb4msPVazqKDI6FSgRg-1; Fri, 29 Oct 2021 23:47:36 -0400
X-MC-Unique: Knqdb4msPVazqKDI6FSgRg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E37251006AA6;
	Sat, 30 Oct 2021 03:47:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E98069119;
	Sat, 30 Oct 2021 03:47:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B2694A702;
	Sat, 30 Oct 2021 03:47:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19U3lMc0014174 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 23:47:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 88D2C4010FE5; Sat, 30 Oct 2021 03:47:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 83C7040CFD04
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 03:47:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A426811E76
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 03:47:22 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-444-YsyzDmmENgukU5UG-Qc39g-1; Fri, 29 Oct 2021 23:47:11 -0400
X-MC-Unique: YsyzDmmENgukU5UG-Qc39g-1
Received: by mail-qt1-f173.google.com with SMTP id h16so6603544qtk.0
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 20:47:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Gdhs42GkHg2mKS7t9MANtqVZCBDNowrV9MEmIYNOXfI=;
	b=lT4IVuIKA/CoybM1kMxCft3ik2K25Xh9hiitsIlv/hmox32PBnaHsi1Xwi5jbJ4F3X
	t991+cbc6LlgxwM0lV46qPjkgVOLF7dUWKrp+mPuR1CRCeUwExqkXkC+L9VJZTPWCGwT
	PqylIJb4xKvf8H4RlYjbePrABM0RDZ6tlf/BXI+2pjocjh2bKWdOplWoPOyvP0qBs5Es
	7S9RGfzyX/K94+8wgoYDM49EY2jIIXi9eG3jV93mPKaUXxvJbdFqZyf7u1R5mnwFDpUM
	y0JdYgYi4be1x3wr5JdV/jj7Ja1YkY8gK2m1cu5jfuJvotF+uBB204+Y4YNvcuF8EABf
	h/xw==
X-Gm-Message-State: AOAM531hcSujgpEnKy+8Vk/5rzvNK2Yabg7gZ1lbvFrVr+AfpiNQkNlR
	g1cqn8Obo7s+jkFkUcSNpNKZ3smVpzmiJA==
X-Google-Smtp-Source: ABdhPJwqWWqcpRmH4wtTXWPsttAJF07q2NTgJE4wT1qGNSG4fKZbvX5UCDngDffqDTgNsbs/Cs9RHg==
X-Received: by 2002:ac8:5619:: with SMTP id 25mr15965647qtr.325.1635565630589; 
	Fri, 29 Oct 2021 20:47:10 -0700 (PDT)
Received: from ?IPv6:2601:152:4000:330:a788:e4b1:999a:d530?
	([2601:152:4000:330:a788:e4b1:999a:d530])
	by smtp.gmail.com with ESMTPSA id m6sm5368156qti.38.2021.10.29.20.47.09
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 29 Oct 2021 20:47:10 -0700 (PDT)
Subject: Re: Accessible Coconut speech at startup
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <8c7a2cce-b2c6-534d-ec3d-ddfc92c9c78a@gmail.com>
	<9F0E8E47-7471-495E-A98F-BCB9122EB801@gmail.com>
Message-ID: <ea7b531f-3d8a-c17e-23c8-392919bf70d3@gmail.com>
Date: Sat, 30 Oct 2021 09:17:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <9F0E8E47-7471-495E-A98F-BCB9122EB801@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

V293LCB5b3UgYXJlIGEgZ3JlYXQgaGVscC4gSSBjYW4ndCB0aGFuayB5b3UgZW5vdWdoLiBUaGlz
IHNlZW1zIHRvIGJlIGEgCnZlcnkgYWNjZXNzaWJsZSBkaXN0cm8uIEkgd2lsbCBjZXJ0YWlubHkg
Y29uc2lkZXIgcHV0dGluZyBuZXh0IHRvIG15IAp3aWluZG93cy4KClRoYW5rcyBhIGxvdCBteSBm
cmllbmQuCgpJYnJhaGltCgpPbiAxMC8zMC8yMSA4OjQzIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IFNjcmVlbiByZWFkZXIgc2V0dGluZ3MKPiBJbnNlcnQg
cGx1cyBzcGFjZQo+Cj4KPiBTZW50IGZyb20gbXkgaVBob25lCj4KPj4gT24gT2N0IDI5LCAyMDIx
LCBhdCAxMTowNCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IO+7v1RoYW5rcyBhIG1pbGxpb24uIEkganVz
dCBmaWd1cmVkIHdoYXQgSSB3YXMgZG9pbmcgd29ybmcuIEkganVzdCByZWFsaXplZCB0aGF0IGhp
dHRpbmcgYWx0LWYxIG9yIGFsdC1mMiBkb2VzIG5vdCB3b3JrIG9uIG15IGxhcHRvcC4gSSBuZWVk
ZWQgdG8gcHVzaCB0aGUgZnVuY3Rpb24ga2V5IGFsb25nIHdpdGggdGhlIGFsdCBmMSBvciBmMiBm
b3IgaXQgdG8gd29yay4gTm93IEkgY2FuIGFjY2VzcyB0aGUgbWVudXMganVzdCBmaW5lLgo+Pgo+
PiBJIHN0aWxsIG5lZWQgdG8gZmlndXJlIG91dCBhIHdheSBvZiBjaGFuZ2luZyB0aGUgZGVmYXVs
dCBzcGVlY2ggZW5naW5lLCBhbmQgYSB3YXkgdG8gaGF2ZSBpdCBkaXNwbGF5IGZvcmVpZ24gY2hh
cmFjdGVycyBvbiB0aGUgQnJhaWxsZSBkaXNwbGF5LiBGb3IgZXhhbXBsZSwgV2hlbiBJIGRvIGEg
eW91dHViZSBzZWFyY2ggYW5kIGdldCBhIGhpdCBpbiBBcmFiaWMgb3IgSGVicmV3IGl0IGRpc3Bs
YXlzIHRoZSBBcmFiaWMgb3IgSGVicmV3IGNoYXJhY3RlcnMgYXMgcXVlc3Rpb24gbWFya3MuIEkg
YW0gc3VyZSB0aGVyZSBpcyBhIHdheSBvZiBkZWFsaW5nIHdpdGggdGhpcy4KPj4KPj4gaW4gdGhl
IG5leHQgc3RhZ2UsIEkgbmVlZCB0byBmaWd1cmUgYSBzYWZlIHdheSBvZiBpbnN0YWxsaW5nIGl0
IGFsb25nc2lkZSBteSB3aW5kb3dzIHdpdGhvdXQgc2NyZXdpbmcgdSAgICBwIG15IHdpbmRvd3Mg
b3BwZXJhdGlvbi4KPj4KPj4gVGhhbmtzIGEgbG90IGFnYWluIGZvciB5b3VyIGhlbHAuCj4+Cj4+
IEJ5IHRoZSB3YXkgSSBhbSBub3cgd3JpdGluZyB0aGlzIGVtYWlsIHVzaW5nIHRoZSB0aHVuZGVy
YmlyZCB0aGF0IGNvbWVzIHdpdGggdGhlIGFjY2Vzc2libGUgQ29jb251dAo+Pgo+Pj4gT24gMTAv
MzAvMjEgNjowNCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pj4+IHN1cGVyLXQgbWF5IGdldCB5b3UgYSB0ZXJtaW5hbCB3aGljaCBnaXZlcyB5b3UgYSBjb21t
YW5kIGxpbmUuICBZb3UnbGwKPj4+IGtub3cgaWYgYSAkIGNvbWVzIHVwIGFzIGEgIHByb21wdCBv
ciBhICMgY29tZXMgdXAuICBGYWlsaW5nIHRoYXQgYWx0LStmMgo+Pj4gdGhlbiB0eXBlIG1hdGUt
dGVybWluYWwgb3IgZ25vbWUtdGVybWluYWwgYW5kIGhpdCBlbnRlci4KPj4+Cj4+Pgo+Pj4+IE9u
IEZyaSwgMjkgT2N0IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+Pj4KPj4+PiBUaGFua3MgYSBtaWxsaW9uIGZvciB5b3VyIGhlbHAuIEkgdHJpZWQgeW91
ciAgc3VnZ2VzdGlvbnMgdG8gbm8gYXZhaWwuIEhvd2V2ZXIsIHNvbWV0aGluZyBzdHJhbmdlIGhh
cHBlbmVkLCB3aGVuIEkgY29ubmVjdGVkIG15IGJyYWlsbGUgZGlzcGxheSBpdCBjb25uZWN0ZWQg
dG8gYWNjZXNzaWJsZSBjb2NvbnV0IHJpZ2h0IGF3YXkuIEkgd2FzIGFibGUgdG8gYnJvd3NlIHRo
ZSBtZW51cyBhbmQgY29ubmVjdCB0byB0aGUgaW50ZXJuZXQuIER1cmluZyBteSBicm93c2luZyB0
aGUgc3BlZWNoIGNhbWUgb24uCj4+Pj4gSSBoYXZlIHR3byBxdWVzdGlvbnMsIGhvdyBjYW4gSSBn
ZXQgYSBjb21tYW5kIGxpbmUgcHJvbXB0PyBNeSBzZWNvbmQgcXVlc3Rpb24gaXMsIHdoYXQgaXMg
dGhlIGNvbW1hbmQgdG8gdHVybiBvZmYgdGhlIGNvbXB1dGVyPyBBbHQgZjQgZGlkIG5vdCB0YWtl
IG1lIHRoZXJlLgo+Pj4+IENoZWVycywKPj4+PiBJYnJhaGltCj4+Pj4KPj4+Pgo+Pj4+IFNlbnQg
ZnJvbSBteSBpUGhvbmUKPj4+Pgo+Pj4+PiBPbiBPY3QgMjksIDIwMjEsIGF0IDE6NTYgUE0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+
IHdyb3RlOgo+Pj4+Pgo+Pj4+PiDvu79QcmVzcyBhbHQgcGx1cyBGMS4KPj4+Pj4gRG8geW91IGhl
YXIgc3BlZWNoPwo+Pj4+PiBJZiBub3QsIHByZXNzIGVzY2FwZS4KPj4+Pj4gUHJlc3MgYWx0IHBs
dXMgRjIKPj4+Pj4gVHlwZQo+Pj4+PiBvcmNhCj4+Pj4+IFByZXNzIGVudGVyLgo+Pj4+PiBUaGlz
IHNob3VsZCBmaXggaXQuCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4+
Pj4KPj4+Pj4+IE9uIE9jdCAyOSwgMjAyMSwgYXQgMToyNSBQTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4+Pgo+
Pj4+Pj4g77u/SXMgdGhlcmUgYSBzdGVwIGJ5IHN0ZXAgdHV0b3JpYWwgb24gaG93IHRvIHN0YXJ0
Pwo+Pj4+Pj4gSSBkb3dubG9hZGVkIHRoZSBhY2Nlc3NpYmxlIGNvY29udXQgaXNvIGFuZCBwdXQg
aXQgb24gYSBib290YWJsZSB1c2IgZHJpdmUuIEkgd2FzIGFibGUgdG8gYm9vdCB0aGUgbWFjaGlu
ZSBmcm9tIHRoZSB1c2IsIGJ1dCB0aGVyZSB3YXMgbm8gc3BlZWNoIHRvIGd1aWRlIG1lLiBJIHdh
cyBhYmxlIHRvIGNvbmZpcm0gdGhhdCBJIGluZGVlZCBib290ZWQgZnJvbSB1c2Igd2l0aCBhY2Nl
c3NpYmxlIGNvY29udXQgYnkgdXNpbmcgbXkgaVBob25lIGNhbWVyYS4gSSBoYXZlIG5vIGlkZWEg
aG93IHRvIGdldCB0aGUgc3BlZWNoIGdvaW5nLiBTbyBwbGVhc2UgaWYgeW91IGhhdmUgYSB0dXRv
cmlhbCwgc2VuZCBpdCBteSB3YXkuCj4+Pj4+PiBJYnJhaGltCj4+Pj4+Pgo+Pj4+Pj4gU2VudCBm
cm9tIG15IGlQaG9uZQo+Pj4+Pj4KPj4+Pj4+Pj4gT24gT2N0IDI5LCAyMDIxLCBhdCAxMDoyOSBB
TSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4+Pj4+Pj4g77u/SGVsbG8sCj4+Pj4+Pj4gV2hlbiB1c2luZyB0aGUgbGl2
ZSBDRCwgVGhlIHNjcmVlbnJlYWRlciBzdGFydGVkIGF0IGJvb3QuCj4+Pj4+Pj4gQnV0IGEgIGFm
dGVyIEkgaW5zdGFsbGVkIGl0LCBJIGdldCBubyBzY3JlZW5yZWFkZXIgYXQgc3RhcnR1cC4KPj4+
Pj4+PiBBbGwgc2V0dGluZ3MgYXMgZmFyIGFzIEkga25vdyBhcmUgY29ycmVjdC4KPj4+Pj4+PiBU
aGUgb25seSB3YXkgdG8gZ2V0IHNwZWVjaCBpcyB0byBnbyB0byB0aGUgcnVuIHdpbmRvdyB3aXRo
Cj4+Pj4+Pj4gQWx0K0YyCj4+Pj4+Pj4gVGhlbiB0eXBlCj4+Pj4+Pj4gb3JjYQo+Pj4+Pj4+IEFu
ZCBwcmVzcyBlbnRlci4KPj4+Pj4+PiBJIHJlaW5zdGFsbGVkIGxpbnV4IGFuZCBnb3QgdGhlIHNh
bWUgcmVzdWx0Lgo+Pj4+Pj4+IEFzIEkgd2FzIGRvaW5nIHRoZSBpbnN0YWxsLCBJIGNoZWNrZWQg
dGhlIGJveCB0byBnZXQgdXBkYXRlcyBkdXJpbmcgdGhlIGluc3RhbGwuIENvdWxkIHRoaXMgYmUg
dGhlIGNhdXNlIG9mIG15IHRyb3VibGU/Cj4+Pj4+Pj4KPj4+Pj4+PiBUaGFua3MsCj4+Pj4+Pj4g
Um9iCj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pgo+Pj4+Pj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

