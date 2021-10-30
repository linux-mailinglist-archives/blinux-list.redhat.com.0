Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 901BA440921
	for <lists+blinux-list@lfdr.de>; Sat, 30 Oct 2021 15:29:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635600539;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3eeZDJQf7bqmR7TkrIhH9hhkyIJpTqV+KdIAOs3V+gQ=;
	b=bHFe3NvYfV4YJirpiyGb2lfVOeAUdKpCyiJ/V7ZAbuiHlN5Pd7qdrzgBUvN7tg5r3rzADJ
	Zicn+xQGVBnGXdcgZGgzwTLdviGOYXJWDbISn9PanRD1NsDD+1WB8okMtE5zZsmV/iOdBj
	EWI7DhRmLiNtGg6qNXcvoZx1QBZBUv8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-43MPdwLlOF6thr17iDT7cQ-1; Sat, 30 Oct 2021 09:28:55 -0400
X-MC-Unique: 43MPdwLlOF6thr17iDT7cQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 750A75074B;
	Sat, 30 Oct 2021 13:28:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73F8960CC3;
	Sat, 30 Oct 2021 13:28:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2DBCE4A702;
	Sat, 30 Oct 2021 13:28:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19UDROh2024663 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Oct 2021 09:27:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 16A1D40CFD10; Sat, 30 Oct 2021 13:27:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10C5E40CFD04
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 13:27:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E9FA080015A
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 13:27:23 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-587-mjNjYzoLPzW8BQh9vPLzTg-1; Sat, 30 Oct 2021 09:27:22 -0400
X-MC-Unique: mjNjYzoLPzW8BQh9vPLzTg-1
Received: by mail-qt1-f182.google.com with SMTP id 19so10186999qtt.7
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 06:27:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=ueV8RSUYZUyq+V3uQMX8SHbEMEHvaisivxxLA+YnNHk=;
	b=KZ5KikevjGUa2hU8UL7XINwNbaOsJbybzT0u34xw+F2yZbmNJP0PoOuvnYOCyZW+t7
	CPrQQYNJNq6cA9/fNzeAY+8hJPQBTMyiGUl8271afD8z+eemraQ05iFt1E7O457HAJgG
	lvbWIrwAg+Lae3b6jKcFxHZWvzyLXwd67eQPJalibBeotO3sg34mYK3qfgfoDp4Xa3/q
	haajQ28SYAqfnKx7oSBt3A96D3ogoUVwNcG4X3LwZsiqgk9ezvRwyDoqYu6iF0oNF1R3
	Z6A1o3VigGsLkpAe+kY/hqGy7ftUhdHOMZkCNUR7kuu8NlXnHG6w2ENZS2qEk2qAL8sa
	vwbQ==
X-Gm-Message-State: AOAM533wr9hEc5Bx7k+sGDwMm8Swu9XiGQI4KsrkOYhLgbsDOCQq8dd0
	DJYB7d5rmCYmT9EYKLC0PgKbyc60sYNyKw==
X-Google-Smtp-Source: ABdhPJwqpRrRZMfeHvJ5ffIN3h59Y5ezNtSq2Lx4OPGU7waZHerHqPegfk1mdYsHjtXlVP2D6bn8Qw==
X-Received: by 2002:ac8:7e90:: with SMTP id w16mr18383035qtj.164.1635600441020;
	Sat, 30 Oct 2021 06:27:21 -0700 (PDT)
Received: from smtpclient.apple ([2601:152:4000:330:8d6e:61ab:ec01:133c])
	by smtp.gmail.com with ESMTPSA id x6sm6244475qko.83.2021.10.30.06.27.19
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 30 Oct 2021 06:27:20 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Can I run an accessible version of linux under windows?
Date: Sat, 30 Oct 2021 09:27:19 -0400
Message-Id: <09D50FCC-309B-480D-A0F8-732E3E3D41B4@gmail.com>
References: <5f84d925-a640-5f3f-3c0d-8b022d5b44ca@gmail.com>
In-Reply-To: <5f84d925-a640-5f3f-3c0d-8b022d5b44ca@gmail.com>
To: blinux-list@redhat.com
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19UDROh2024663
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSm9obiwKSXMgdGhlIG1pbnQgbGludXggeW91IG1lbnRpb25lZCBtZW51IGRyaXZlbiBsaWtl
IGFjY2Vzc2libGUgY29jb251dCBvciBjb21tYW5kIGxpbmUgYmFzZWQ/IEluIHdoYXQgd2F5cyBp
cyBpdCBkaWZmZXJlbnQgZnJvbSBhY2Nlc3NpYmxlIGNvY29udXQgaWYgeW91IGdhdmUgaXQgYSB0
cnk/CklicmFoaW0KClNlbnQgZnJvbSBteSBpUGFkCgo+IE9uIE9jdCAyOSwgMjAyMSwgYXQgMTE6
MzkgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v0hpLAo+IEkgYW0gYWxzbyByZWxhdGl2ZWx5IG5ldyB0
byB1c2luZyBMaW51eCBhcyBhIGJsaW5kIHBlcnNvbi4gT3ZlciB0aGUgcGFzdCBzZXZlcmFsIG1v
bnRocywgSSBoYXZlIGRvd25sb2FkZWQgYW5kIHRyaWVkIHNldmVyYWwgb2YgdGhlIHJlY29tbWVu
ZGVkIExpbnV4IGRpc3RyaWJ1dGlvbnMuIEFib3V0IGEgbW9udGggYWdvLCBJIGNhbWUgYWNyb3Nz
IExpbnV4IE1pbnQgd2l0aCB0aGUgTWF0ZSBkZXNrdG9wLiBJIGxpa2UgaXQgdmVyeSBtdWNoLiBJ
IGFtIGN1cnJlbnRseSB3b3JraW5nIG9uIGEgcHJvamVjdCB3aGVyZSBJIGhhdmUgdG8gc2V0dXAg
TGludXggY29tcHV0ZXJzIGZvciBzZXZlcmFsIHNpZ2h0ZWQgcGVvcGxlIGFuZCBJIGFtIHVzaW5n
IE1pbnQgYXMgdGhlIGRpc3RybyB0aGF0IEkgYW0gZGVwbG95aW5nLiBJIGFtIGhhcHB5IHRvIHNh
eSB0aGF0IEkgcHV0IHRoZSBmaXJzdCBvZiB0aGVzZSBjb21wdXRlcnMgaW50byBwcm9kdWN0aW9u
IHRoaXMgd2Vlay4KPiBTbyBmYXIsIHNvIGdvb2QuIFRoZXJlIGFyZSBhIGZldyBtaW5vciB0aGlu
Z3MgdGhhdCBJIHdvdWxkIGxpa2UgdG8gbGVhcm4gdG8gdHdlYWsgb24gdGhhdCBzeXN0ZW0sIGJ1
dCBJIGFtIGNvbmZpZGVudCB0aGF0IGtub3dsZWRnZSB3aWxsIGNvbWUgdG8gbWUgb3ZlciB0aW1l
Lgo+IAo+IFRoZSBhY2Nlc3NpYmlsaXR5IGV4cGVyaWVuY2Ugd2l0aCBMaW51eCBNaW50IE1hdGUg
aGFzIGJlZW4gdmVyeSBwb3NpdGl2ZS4gQWZ0ZXIgZG93bmxvYWRpbmcgdGhlIGxpdmUgSVNPIGZy
b20gbGludXhtaW50LmNvbSwgSSB1c2VkIFJ1ZnVzIHJ1bm5pbmcgb24gbXkgV2luZG93cyA3IGNv
bXB1dGVyIHRvIGNyZWF0ZSBhIGJvb3RhYmxlICAgICBVU0IgZmxhc2ggZHJpdmUuIChodHRwczov
L3J1ZnVzLmllL2VuLykgSSB1c2VkIGEgMTAgeWVhciBvbGQgTGVub3ZvIFRoaW5rcGFkIFgyMjAg
Zm9yIGFsbCBvZiB0aGUgdGVzdGluZywgZmlyc3QganVzdCBydW5uaW5nIGZyb20gdGhlIGZsYXNo
IGRyaXZlIGFuZCBsYXRlciwgaW5zdGFsbGluZyBvbiBhIGZyZXNoIFNhbXN1bmcgRVZPIFNTRCBp
biB0aGUgWDIyMC4gUGVyZm9ybWFuY2Ugb24gdGhpcyAxMCB5ZWFyIG9sZCBjb21wdXRlciB3YXMg
ZXhjZWxsZW50LiBJIGFjdHVhbGx5IGRpZCBhbGwgb2YgdGhlIGNvbmZpZ3VyYXRpb24sIHR3ZWFr
aW5nIGFuZCB1c2VyIHRlc3Rpbmcgb24gdGhlIFgyMjAuIE9uY2UgdGhlIHNldHVwIHdhcyByZWFk
eSB0byB0dXJuIG92ZXIgdG8gdGhlIHVzZXIsIEkgbWFkZSBhbiBpbWFnZSBvZiB0aGUgU1NEIGFu
ZCB0aGVuIGp1c3Qgc3dhcHBlZCB0aGUgU1NEIGludG8gdGhlIGNvbXB1dGVyIGZvciB0aGUgdXNl
ci4gSGVyIGNvbXB1dGVyIGlzIGFsc28gYSBMZW5vdm8uIE1pbnQgYm9vdGVkIG9uIGhlciBjb21w
dXRlciBhbmQgc2hlIHdhcyBvZmYgYW5kIHJ1bm5pbmcuIEkgYW0gaW1wcmVzc2VkIHRoYXQgSSB3
YXMgYWJsZSB0byBjb21wbGV0ZSB0aGUgc2V0dXAgb2YgdGhlIGNvbXB1dGVyIHdpdGggcmVsYXRp
dmVseSBmZXcgcm9hZGJsb2Nrcy4gSSBhbSBhbHNvIGltcHJlc3NlZCB3aXRoIHRoZSBwZXJmb3Jt
YW5jZSBhbmQgc3RhYmlsaXR5IG9mIExpbnV4IE1pbnQgTWF0ZS4gVGhlIG5leHQgc3lzdGVtIHRo
YXQgSSB3aWxsIGJlIGNvbmZpZ3VyaW5nIGlzIHNvbWV3aGF0IG1vcmUgZGVtYW5kaW5nLCBidXQg
SSBhbSBjb25maWRlbnQgdGhhdCBJIHdpbGwgZ2V0IHRocm91Z2ggaXQuIEFzIHdpdGggdGhlIGZp
cnN0IHN5c3RlbSwgSSB3aWxsIGJlIGRvaW5nIGFsbCBvZiB0aGUgdGVzdGluZyBhbmQgY29uZmln
dXJhdGlvbiBvbiBteSB0cnVzdHkgb2xkIFgyMjAgd2l0aCBhIGZyZXNoIFNhbXN1bmcgRVZPIFNT
RC4KPiBTbywgaWYgeW91IGRvIG5vdCBoYXZlIGEgb2xkIFBDIGdhdGhlcmluZyBkdXN0IGluIGEg
Y2xvc2V0LCB5b3UgY2FuIGNyZWF0ZSBhIGJvb3RhYmxlIFVTQiBjb250YWluaW5nIExpbnV4IE1p
bnQgTWF0ZSBhbmQgdGhlbiBib290IGZyb20gdGhlIFVTQiBzdGljayBvbiB5b3VyIGV4aXN0aW5n
IFdpbmRvd3MgY29tcHV0ZXIuIFdoZW4geW91IGFyZSBkb25lIHBsYXlpbmcgd2l0aCBMaW51eCwg
anVzdCByZW1vdmUgdGhlIFVTQiBzdGljayBhbmQgcmVib290IGJhY2sgaW50byBXaW5kb3dzLiBJ
IGJlbGlldmUgdGhhdCBpbiB0aGUgTWludCBpbnN0YWxsIHByb2dyYW0sIHdoaWNoIGlzIGZ1bGx5
IHNjcmVlbiByZWFkZXIgYWNjZXNzaWJsZSwgdGhlcmUgbWlnaHQgYmUgYW4gb3B0aW9uIHdoZXJl
IHlvdSBjYW4gaW5zdGFsbCBMaW51eCBNaW50IGFsb25nc2lkZSB5b3VyIGV4aXN0aW5nIFdpbmRv
d3MgaW5zdGFsbC4gVGhlbiBhdCBib290IHRpbWUsIHlvdSBjYW4gY2hvb3NlIHdoaWNoIHN5c3Rl
bSB0byBib290IGluIHRvLiBJIGRpZCBub3QgZG8gdGhpcywgc28gSSBjYW4gbm90IGNvbW1lbnQg
b24gaG93IHdlbGwgdGhpcyB3b3Jrcy4KPiAKPiBPbmUgbW9yZSB0aGluZy4uLldoZW4geW91IGJv
b3QgaW50byB0aGUgVVNCIHN0aWNrLCB5b3Ugd2lsbCBoYXZlIHRvIHByZXNzIGNvbnRyb2wrQWx0
K1N1cGVyICh0aGlzIGlzIHdoYXQgbGludXggY2FsbHMgdGhlIFdpbmRvd3Mga2V5KSBpbiBvcmRl
ciB0byBzdGFydCB0aGUgT3JjYSBzY3JlZW4gcmVhZGVyLiBUaGUgIk9yY2EiIGtleSBpcyB0aGUg
aW5zZXJ0IGtleSwganVzdCBsaWtlIEphd3Mgb3IgTlZEQS4gRG8gYSB3ZWIgc2VhcmNoIGZvciAi
b3JjYSBzY3JlZW4gcmVhZGVyIiBhbmQgeW91IHdpbGwgZmluZCBwbGVudHkgb2YgaW5mb3JtYXRp
b24gdG8gaGVscCBnZXQgeW91IHVwIHRvIHNwZWVkIHdpdGggdGhpcyBzY3JlZW4gcmVhZGVyLiBJ
IGFtIGhhdmluZyBubyBwcm9ibGVtIGp1bXBpbmcgYmV0d2VlbiBpdCBhbmQgSmF3cy9OVkRBLgo+
IAo+IFRoaXMgZXhwZXJpZW5jZSBoYXMgYmVlbiBlbmpveWFibGUgZm9yIG1lIGFuZCBJIGhvcGUg
dGhhdCBpdCB3aWxsIGJlIGZvciB5b3UgYWxzby4gRG8gbm90IGhlc2l0YXRlIHRvIHJlYWNoIG91
dCBhcyBvdGhlciBxdWVzdGlvbnMgYXJpc2UuIEkgY2FuIHRlbGwgeW91IHRoYXQgZHVyaW5nIHRo
ZSBwYXN0IG1vbnRoLCBJIGhhdmUgc3BlbnQgbWFueSBob3VycyBzZWFyY2hpbmcgdGhlIHdlYiBm
b3IgYW5zd2VycyB0byB0aGUgbWFueSwgbWFueSBxdWVzdGlvbnMgdGhhdCBjYW1lIHVwIGZvciBt
ZS4gQW5kIHRoZXJlIGlzIGp1c3Qgc28gbXVjaCBpbmZvIGluIHRoZSB3ZWIgcmVsYXRlZCB0byB1
c2luZyBMaW51eC4KPiAKPiBCZXN0LAo+IEpvaG4KPiAKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

