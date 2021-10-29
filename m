Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9055B4405EE
	for <lists+blinux-list@lfdr.de>; Sat, 30 Oct 2021 01:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635551730;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BaWuQ4/Ik6gqLBiw2SAM7RYzmVXVY0MDTDP1MyIT2Qc=;
	b=cRwZ2NsZ9vMngjXrSqd9EKAqj62Oewc+2BwjlptA0vm7fhJ0/EMnFc+6ixoBl9MUaXAGN0
	UQBhGFGQIqY2a7zz5HKEKXNVLLkxJn0jkJh/ofwFnaD5GMpEkoOhfEMl1mbwm/0phDy03E
	5fq/2HEoyHLUXBMWtCohild2GMEMlDE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-85-h4f7zBvbP-uL9QLV0PCP5A-1; Fri, 29 Oct 2021 19:55:26 -0400
X-MC-Unique: h4f7zBvbP-uL9QLV0PCP5A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 236AB801B00;
	Fri, 29 Oct 2021 23:55:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70968100239F;
	Fri, 29 Oct 2021 23:55:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E70121806D03;
	Fri, 29 Oct 2021 23:55:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19TNpSYV028953 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 19:51:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DC6BB40CFD10; Fri, 29 Oct 2021 23:51:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D71DD40CFD0B
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 23:51:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD2798564EC
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 23:51:28 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-575-_JV8-PMwPOKL2VS8zbh0pg-1; Fri, 29 Oct 2021 19:51:26 -0400
X-MC-Unique: _JV8-PMwPOKL2VS8zbh0pg-1
Received: by mail-qt1-f180.google.com with SMTP id g17so10653297qtk.8
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 16:51:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=i1ftIrhmrF9IgviAP6nciQah66a6XxA6kZ/B+POW8YA=;
	b=V5eshdqVwB4zZmZsyodAnsH2xQYbhFNWAH9LqWG7LUWS8TKinqzabroXwSzEhCflp0
	AsdjMP5p1w1duJoRAHyrtehgjdnKxNmSOMMu3IyKKSiPP30zca2brBqjhlIRAiko7ikq
	CC0GqnzSDm2PG4fyXIodRUIi+3IQnhjL3EfNQSdbTjIp83zYWwVN48kYOyWQr+hCR18G
	12+riJPnsVB018x/Qnd55GuG0HgtyJ5CK3otLYCXVe8XxfQkxelcuGvLF/kuZwN9+owe
	DjruINwQ+CpxCvoo6YE4pYFyVS7UGqygLXHnjagaRNgzqJ9bPNT5fE2zkzL9rlUWiZRs
	DTrA==
X-Gm-Message-State: AOAM530vrrp+vFu3bXN8s2JAXZUsq8bxyanU5pKLoCE8Zg0OkBQfa1kn
	l3H0yaYPR7mC/6A/gOCSo8OATTUYUKfLDg==
X-Google-Smtp-Source: ABdhPJx6cIWz+Gl9AtGuwJafbig1fzYan5EbKO1g7Mcvn7doJBsl4XxAqwubiPfFks42THwC/SG5vQ==
X-Received: by 2002:ac8:5916:: with SMTP id 22mr15009134qty.247.1635551485664; 
	Fri, 29 Oct 2021 16:51:25 -0700 (PDT)
Received: from smtpclient.apple ([2601:c8:300:2f6:5560:46d9:65df:37cb])
	by smtp.gmail.com with ESMTPSA id z6sm5402912qtj.90.2021.10.29.16.51.25
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Oct 2021 16:51:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Accessible Coconut speech at startup
Date: Fri, 29 Oct 2021 19:51:24 -0400
References: <F9A34440-26A3-40BA-8916-B47339117C16@gmail.com>
	<CF2F8D13-A374-4F46-A5E7-D20B66F738C2@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <CF2F8D13-A374-4F46-A5E7-D20B66F738C2@gmail.com>
Message-Id: <A1B23EC1-445A-42B9-9279-2D03DD25D182@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19TNpSYV028953
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmUgaXMgYSBzaHV0IGRvd24gb3B0aW9uIG9uIHRoZSBib3R0b20gb2YgdGhlIGFsdCtGMSBt
ZW51LgpPciB1c2UgdGhlIGhvdGtleQpjdHJsK2FsdCtkZWxldGUKWW91IHdpbGwgaGF2ZSBhIGNo
YW5jZSB0byBjaG9vc2Ugc2h1dCBkb3duIHJlc3RhcnQgb3Igc3VzcGVuZCBvciBkbyBub3RoaW5n
IGFuZCB0aGUgc3lzdGVtIHdpbGwgc2h1dCBkb3duIGFmdGVyIGEgY291bnQgZG93bi4KUHJlc3Mg
dGhlIHdpbmRvd3Mga2V5IApUeXBlIHRlcm1pbmFsIGFuZCBwcmVzcyBlbnRlcgpJ4oCZbSBub3Qg
b24gbXkgTGludXggYXQgdGhlIG1vbWVudCwgYnV0IEkgYmVsaWV2ZSB0ZXJtaW5hbCBpcyAgYWxz
byBvbiB0aGUgYWNjZXNzb3JpZXMgbWVudS4KCgo+IE9uIE9jdCAyOSwgMjAyMSwgYXQgNjoyMSBQ
TSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4gCj4gVGhhbmtzIGEgbWlsbGlvbiBmb3IgeW91ciBoZWxwLiBJIHRyaWVk
IHlvdXIgIHN1Z2dlc3Rpb25zIHRvIG5vIGF2YWlsLiBIb3dldmVyLCBzb21ldGhpbmcgc3RyYW5n
ZSBoYXBwZW5lZCwgd2hlbiBJIGNvbm5lY3RlZCBteSBicmFpbGxlIGRpc3BsYXkgaXQgY29ubmVj
dGVkIHRvIGFjY2Vzc2libGUgY29jb251dCByaWdodCBhd2F5LiBJIHdhcyBhYmxlIHRvIGJyb3dz
ZSB0aGUgbWVudXMgYW5kIGNvbm5lY3QgdG8gdGhlIGludGVybmV0LiBEdXJpbmcgbXkgYnJvd3Np
bmcgdGhlIHNwZWVjaCBjYW1lIG9uLiAKPiBJIGhhdmUgdHdvIHF1ZXN0aW9ucywgaG93IGNhbiBJ
IGdldCBhIGNvbW1hbmQgbGluZSBwcm9tcHQ/IE15IHNlY29uZCBxdWVzdGlvbiBpcywgd2hhdCBp
cyB0aGUgY29tbWFuZCB0byB0dXJuIG9mZiB0aGUgY29tcHV0ZXI/IEFsdCBmNCBkaWQgbm90IHRh
a2UgbWUgdGhlcmUuCj4gQ2hlZXJzLAo+IElicmFoaW0KPiAKPiAKPiBTZW50IGZyb20gbXkgaVBo
b25lCj4gCj4+IE9uIE9jdCAyOSwgMjAyMSwgYXQgMTo1NiBQTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+IAo+PiDv
u79QcmVzcyBhbHQgcGx1cyBGMS4KPj4gRG8geW91IGhlYXIgc3BlZWNoPwo+PiBJZiBub3QsIHBy
ZXNzIGVzY2FwZS4KPj4gUHJlc3MgYWx0IHBsdXMgRjIKPj4gVHlwZSAKPj4gb3JjYQo+PiBQcmVz
cyBlbnRlci4KPj4gVGhpcyBzaG91bGQgZml4IGl0Lgo+PiAKPj4gCj4+IFNlbnQgZnJvbSBteSBp
UGhvbmUKPj4gCj4+PiBPbiBPY3QgMjksIDIwMjEsIGF0IDE6MjUgUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4g
Cj4+PiDvu79JcyB0aGVyZSBhIHN0ZXAgYnkgc3RlcCB0dXRvcmlhbCBvbiBob3cgdG8gc3RhcnQ/
Cj4+PiBJIGRvd25sb2FkZWQgdGhlIGFjY2Vzc2libGUgY29jb251dCBpc28gYW5kIHB1dCBpdCBv
biBhIGJvb3RhYmxlIHVzYiBkcml2ZS4gSSB3YXMgYWJsZSB0byBib290IHRoZSBtYWNoaW5lIGZy
b20gdGhlIHVzYiwgYnV0IHRoZXJlIHdhcyBubyBzcGVlY2ggdG8gZ3VpZGUgbWUuIEkgd2FzIGFi
bGUgdG8gY29uZmlybSB0aGF0IEkgaW5kZWVkIGJvb3RlZCBmcm9tIHVzYiB3aXRoIGFjY2Vzc2li
bGUgY29jb251dCBieSB1c2luZyBteSBpUGhvbmUgY2FtZXJhLiBJIGhhdmUgbm8gaWRlYSBob3cg
dG8gZ2V0IHRoZSBzcGVlY2ggZ29pbmcuIFNvIHBsZWFzZSBpZiB5b3UgaGF2ZSBhIHR1dG9yaWFs
LCBzZW5kIGl0IG15IHdheS4KPj4+IElicmFoaW0KPj4+IAo+Pj4gU2VudCBmcm9tIG15IGlQaG9u
ZQo+Pj4gCj4+Pj4+IE9uIE9jdCAyOSwgMjAyMSwgYXQgMTA6MjkgQU0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+
IAo+Pj4+IO+7v0hlbGxvLAo+Pj4+IFdoZW4gdXNpbmcgdGhlIGxpdmUgQ0QsIFRoZSBzY3JlZW5y
ZWFkZXIgc3RhcnRlZCBhdCBib290Lgo+Pj4+IEJ1dCBhICBhZnRlciBJIGluc3RhbGxlZCBpdCwg
SSBnZXQgbm8gc2NyZWVucmVhZGVyIGF0IHN0YXJ0dXAuCj4+Pj4gQWxsIHNldHRpbmdzIGFzIGZh
ciBhcyBJIGtub3cgYXJlIGNvcnJlY3QuCj4+Pj4gVGhlIG9ubHkgd2F5IHRvIGdldCBzcGVlY2gg
aXMgdG8gZ28gdG8gdGhlIHJ1biB3aW5kb3cgd2l0aCAKPj4+PiBBbHQrRjIKPj4+PiBUaGVuIHR5
cGUgCj4+Pj4gb3JjYQo+Pj4+IEFuZCBwcmVzcyBlbnRlci4KPj4+PiBJIHJlaW5zdGFsbGVkIGxp
bnV4IGFuZCBnb3QgdGhlIHNhbWUgcmVzdWx0Lgo+Pj4+IEFzIEkgd2FzIGRvaW5nIHRoZSBpbnN0
YWxsLCBJIGNoZWNrZWQgdGhlIGJveCB0byBnZXQgdXBkYXRlcyBkdXJpbmcgdGhlIGluc3RhbGwu
IENvdWxkIHRoaXMgYmUgdGhlIGNhdXNlIG9mIG15IHRyb3VibGU/Cj4+Pj4gCj4+Pj4gVGhhbmtz
LAo+Pj4+IFJvYgo+Pj4+IAo+Pj4+IAo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+PiAKPj4+IAo+Pj4gCj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+PiAKPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0

