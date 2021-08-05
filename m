Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A03153E1652
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 16:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628172307;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ExrUR5/IZ1/WQI9cOIGLp7xAKp716t9zpy7/eVPNgLM=;
	b=V/UUBrG9lGGFvS9MFkUwdhzTxfHWElfYOqDLNjaqbimO566jPZ05WR36wTmw6ETWlRioE7
	BbOCzL41NCxbICHP/09NjFBwyeHn9QWtlGYsFQVCT0H3U8rbDCRCzw3pazW0mDL1F6U2sA
	pZwYJ4jnL6mZe7PLx+9GNmy7x+3iDgY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-457-Vs2ydyNXPYeCkOOZiJ6uYg-1; Thu, 05 Aug 2021 10:05:06 -0400
X-MC-Unique: Vs2ydyNXPYeCkOOZiJ6uYg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C0746760C1;
	Thu,  5 Aug 2021 14:05:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 528954A66;
	Thu,  5 Aug 2021 14:05:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C6FEB180B7A2;
	Thu,  5 Aug 2021 14:04:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175DvfhO014764 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 09:57:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B686F21F1B08; Thu,  5 Aug 2021 13:57:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B269D21F1AF7
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 13:57:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D3388B58FC
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 13:57:38 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-284-UtW6Lnk5NTKkZUNvVB4gNA-1; Thu, 05 Aug 2021 09:57:36 -0400
X-MC-Unique: UtW6Lnk5NTKkZUNvVB4gNA-1
Received: by mail-wr1-f48.google.com with SMTP id c16so6654777wrp.13
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 06:57:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=pmRyWVY0N3Wm9D936TGa4Kp/R1b1O3yZtZj8J2b4oI0=;
	b=Y1MaLB3+w5LCiZRfmHXFPAfRWaJhBW8MNtEC4U53kh6B3dwqL5SsCmUExq/cbkgPHC
	S9umL/XzJYtdjCywYly6UNRYDWA0nzlKb7SssLIIhpU8FeK18Q9ulaOGT1YBcY1SdnsA
	t4+uDU3w3HM8al9AXHGS4fDiDMySYNq/wDnqd4YCdz95BisdOwIY7j9riLaCvUAZfdH6
	wzAbU0pCAKVwpF5gkVupqkwb4KGOlQsTbl+PrTa1FsUYk8ipALE50GeEx9s2v48LoPSE
	kvO9huLxu/LWOGdC2aVRp6LO5O1qj3ruFKsvR5IASCC2FlbXNzNLVpMqMojW4y7kQlrj
	HcXw==
X-Gm-Message-State: AOAM532vrULleWwHtg2US9abAn0I6Tu9XdXSnzlU1uRVPjRQZ35IuzPA
	DP0cFhPFtDn8gAFRkhfeTgvn4C06U0M7tw==
X-Google-Smtp-Source: ABdhPJwBjjQqhmQzPbBIkvknr9PTrgWIZZtkn7VH3aTv2z/9a3d4zIskodcQMRjBgGdkrtoUuiRB5Q==
X-Received: by 2002:adf:fb44:: with SMTP id c4mr5241587wrs.179.1628171854591; 
	Thu, 05 Aug 2021 06:57:34 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.109.16])
	by smtp.gmail.com with ESMTPSA id
	o28sm6533011wra.71.2021.08.05.06.57.33 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Aug 2021 06:57:34 -0700 (PDT)
Subject: Re: Looking for help with switching on the bare metal.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <fe4bdfcc-061c-5e11-a3b6-1453ba0d9cf1@slint.fr>
	<42D652DC-E852-45BE-8168-A0512A95C855@gmail.com>
	<1e7a3286-1ba6-de7d-0c8c-9a845f9572b5@slint.fr>
Message-ID: <09a632cb-e413-09cb-d6fc-aef8412f32dd@gmail.com>
Date: Thu, 5 Aug 2021 15:57:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <1e7a3286-1ba6-de7d-0c8c-9a845f9572b5@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRGlkaWVyLAoKClRoYW5rcyBmb3IgdGhhdC4gSSBhbSBjdXJyZW50bHkgcHJlcGFyaW5nIGZv
ciB0aGUgc3dpdGNoLiBGbGFzaGVkIHRoZSAKU2xpbnQgSVNPIHRvIGEgVVNCIGRyaXZlLCBhbmQg
YW0gbm93IGNvcHlpbmcgYWxsIHRoZSBzdHVmZiBJIHdhbnQgdG8gCmtlZXAgdG8gYW4gZXh0ZXJu
YWwgSEQuCgoKV2FybSByZWdhcmRzLAoKQnJhbmR0IFN0ZWVua2FtcAoKU2VudCB1c2luZyBUaHVu
ZGVyYmlyZCBmcm9tIFNsaW50CgpPbiA4LzUvMjEgMzo0OCBQTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSBCcmFuZHQsCj4KPiBCYXNpY2FsbHkgYWZ0ZXIg
U2xpbnQgaW5zdGFsbGF0aW9uLCBwbHVnLWluIHRoZSBVU0IgZHJpdmUsIHdhaXQgYSBmZXcgCj4g
c2Vjb25kcywKPiB0aGVuIHVzZSB0aGlzIGxzYmxrIGNvbW1hbmQgdG8ga25vdyBob3cgdGhlIGV4
dGVybmFsIGRyaXZlIGFuZCBpdHMgCj4gcGFydGl0aW9ucwo+IHdpbGwgYmUgbmFtZWQ6Cj4gbHNi
bGsgLWxwbyBuYW1lLHNpemUsdHlwZSxmc3R5cGUsbW91bnRwb2ludAo+IHRoZW4sIG1vdW50IHRo
ZSBwYXJ0aXRpb24gd2hlcmUgdGhlIHN0dWZmIGlzIHN0b3JlZCBhcyByb290LCBsaWtlIGZvciAK
PiBpbnN0YW5jZToKPiBtb3VudCAvZGV2L3NkYjEgL21udAo+Cj4gYWZ0ZXIgdGhhdCBjb3B5IHlv
dXIgZmlsZXMgc3RvcmVkIGluIC9tbnQgdG8gYW5vdGhlciBkaXJlY3RvcnkgaW4gCj4gU2xpbnQu
IHVzaW5nCj4gdGhlIGNwIGNvbW1hbmQuCj4KPiBDaGVlcnMsCj4gRGlkaWVyCj4KPiBMZSAwNS8w
OC8yMDIxIMOgIDE0OjQ4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6lj
cml0wqA6Cj4+IEhpIERpZGllciwKPj4KPj4gSSBhbSBub3QgZ29pbmcgdG8gZHVhbCBib290IG15
IHN5c3RlbS4gSSBhbSBmZWQgdXAgd2l0aCB3aW5kb3dzLiBJZiBJIAo+PiBuZWVkIGEgbW9yZSBj
b252ZW50aW9uYWwgT1MsIEkgaGF2ZSBteSBNYWNCb29rLiBJIHdpbGwgcHJvYmFibHkgCj4+IGlu
c3RhbGwgV2luZG93cyBpbiBhIHZpcnR1YWwgbWFjaGluZSBhbnl3YXksIHNpbXBseSBiZWNhdXNl
IEkgbmVlZCBpdCAKPj4gZm9yIG15IHdvcmsuCj4+IEkgd291bGQgYXBwcmVjaWF0ZSB0aGUgaGVs
cCB3aXRoIGNvcHlpbmcgYWxsIG15IHN0dWZmIGZyb20gYW4gCj4+IGV4dGVybmFsIGRyaXZlIHRv
IG15IFNsaW50IGluc3RhbGxhdGlvbi4KPj4KPj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Pgo+Pj4g
T24gMDUgQXVnIDIwMjEsIGF0IDEzOjUzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIAo+Pj4gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4KPj4+IO+7v0hpIEJy
YW5kdCwKPj4+Cj4+PiBTbGludCBjYW4ndCBiZSBpbnN0YWxsZWQgaW4gYW4gTlRGUyBwYXJ0aXRp
b24gYnV0IGNhbiByZWFkIGFuZCB3cml0ZSAKPj4+IHRoZSBmaWxlcwo+Pj4gaW4gaXQsIG5vIGFk
ZC1vbiBuZWVkZWQuIFdlIGNhbiBoZWxwIHlvdSBkb2luZyB0aGUgbmVlZGVkIHNldHRpbmdzIAo+
Pj4gYWZ0ZXIKPj4+IGluc3RhbGxhdGlvbi4KPj4+Cj4+PiBNYXliZSB5b3Ugd291bGQgY29uc2lk
ZXIgYSBkdWFsIGJvb3QgaW5zdGFsbGF0aW9uPwo+Pj4KPj4+IElmIHllcyBidXQgeW91IGhhdmUg
b25seSBvbmUgZHJpdmUsIHJlYWQgaG93LXRvIHByZXBhcmUgdGhlIGRyaXZlIGluOgo+Pj4gaHR0
cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbCNtYWtlX3Jvb21fZm9yX1NsaW50Cj4+Pgo+
Pj4gQ2hlZXJzLAo+Pj4gRGlkaWVyCj4+PiAtLSAKPj4+IERpZGllciBTcGFpZXIKPj4+IFNsaW50
IG1haW50YWluZXIKPj4+Cj4+Pj4gTGUgMDUvMDgvMjAyMSDDoCAxMzozNCwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+Pj4gVGhhbmtzIGZvciB0aGF0LiBJ
IGFtIHZlcnkgc3Ryb25nbHkgY29uc2lkZXJpbmcgaW5zdGFsbGluZyBTbGludCwgCj4+Pj4gYnV0
IGJlZm9yZSBJIGRvLCBJIG5lZWQgdG8gcHVsbCBteSBzdHVmZiBvZmYgb2YgbXkgd2luZG93cyAK
Pj4+PiBpbnN0YWxsYXRpb24uIFdpbGwgU2xpbnQgYnkgZGVmYXVsdCBkZWFsIHdpdGggTlRGUywg
b3IgZG8gSSBuZWVkIHRvIAo+Pj4+IGluc3RhbGwgYSB1dGlsaXR5IHRvIGRvIHNvPwo+Pj4KPj4+
Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

