Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B82E54566DF
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 01:19:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637281139;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pMsFfCGejw9XqHVfoQPAio2+zNMC+7dkvvbrr3ZmaHQ=;
	b=dUwYLLxa/nPj2A/OVAKYSAnnkd6QSuurV1l8majBBCabkRn+DORVm2TPoRNAo4nrtp13bk
	sB3ZeyLGHgXLClV3KXjG3oez370lwHWj0I5zbDs4ZV7ArbBTgJd6Wcs5V8mOlScFfJTvOy
	+oQX6DOfLn21H3Y+uzYxFtu6L/7rvsw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-436-s8k6SuSDOZ-F94qQdJ-HXA-1; Thu, 18 Nov 2021 19:18:56 -0500
X-MC-Unique: s8k6SuSDOZ-F94qQdJ-HXA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12C1F9F92A;
	Fri, 19 Nov 2021 00:18:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC23A5F4ED;
	Fri, 19 Nov 2021 00:18:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4589F4E9E2;
	Fri, 19 Nov 2021 00:18:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJ0G67p010687 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 19:16:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C014240CFD11; Fri, 19 Nov 2021 00:16:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B863340CFD12
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 00:16:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 99650185A79C
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 00:16:06 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-353-Mw1smbrfOKGQ3VbWgdCK4w-1; Thu, 18 Nov 2021 19:16:05 -0500
X-MC-Unique: Mw1smbrfOKGQ3VbWgdCK4w-1
Received: by mail-qt1-f178.google.com with SMTP id n15so8004848qta.0
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 16:16:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=va2CFcZ14OO4mfAByPn4tqCJB161HMhcr6yzmGwwj28=;
	b=gKp4xZXTKeBtTotV7EU1HiE/vcKk6fq/BREwbBnGIcHU1X3o9dYjaWmbTRVqx9DzId
	/e52312BboK0tcqoTKbSplJ3c5Dhjy7sJFRzPfc8ciKoTFGXHtXHYTG9NkelsSQjcea+
	sU8YX2HzUiVEehgKYoiAv3Uxh/f2KwGkIU6ZDywGG3jfTbIJVf34NdEPbMEYc1pN/Mgq
	g+XEVBCJKQqvhqTjyD5ANQbnAgb3K8lzOWOonwArn0g/tzFva5rcG+zW4aE3URfQ8BXq
	24frwwpZgLjjrElpit6SvZ+I+I8KU/RbDzMuK395//fCR7w95/SkxeAjn4aAI5VlDlls
	cjzA==
X-Gm-Message-State: AOAM531D3kGXZqV6hCMmcUV3u/c+dbB03AgfhXLw4T8X44wUpFiAE3F5
	7jQq4khXRsrSJ25w9g9sUX0rrAGy3kOyo3yM9VpDNKoD
X-Google-Smtp-Source: ABdhPJzocTFnS61Mr+llcqEDUikARvhOGYw8pL9RUGo8o4l3E3+VDT1UlgnnnBAEGRT6U489f4p0D27xuvHOvUsT06k=
X-Received: by 2002:ac8:5fc2:: with SMTP id k2mr1762009qta.310.1637280964449; 
	Thu, 18 Nov 2021 16:16:04 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Thu, 18 Nov 2021 16:16:04
	-0800 (PST)
In-Reply-To: <6F669B1C-20B6-45D4-A0E1-AB6A7D3C76B7@gmail.com>
References: <C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<6F669B1C-20B6-45D4-A0E1-AB6A7D3C76B7@gmail.com>
Date: Fri, 19 Nov 2021 00:16:04 +0000
Message-ID: <CAO2sX33pXmk+BUEoRWaOHMzv_4Hkh=hzwYa_SetrS2Wz4Kt2OA@mail.gmail.com>
Subject: Re: looking for Lennix distribution?
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AJ0G67p010687
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hpbGUgaXQncyB0cnVlIGVub3VnaCB0aGF0IERlYmlhbiBTdGFibGUgY2FuIGhhdmUgdmVyeSBv
dXRkYXRlZApwYWNrYWdlcywgZXNwZWNpYWxseSB3aGVuIHRoZSBuZXh0IHJlbGVhc2UgaXMgcmln
aHQgYXJvdW5kIHRoZSBjb3JuZXIsCkkgZmluZCB0aGF0IHN3aXRjaGluZyB0byB0aGUgVGVzdGlu
ZyBicmFuY2ggb2YgRGViaWFuIGFsbGV2aWF0ZXMgdGhlCm91dGRhdGVkbmVzcyB3aXRoIHZlcnkg
bGl0dGxlIGxvc3Mgb2Ygc3RhYmlsaXR5LCBhbmQgYXQgdGhlIG1vbWVudCwKSSd2ZSBiZWVuIHNv
dXJjaW5nIGFib3V0IDkwJSBvZiBteSBwYWNrYWdlcyBmcm9tIERlYmlhbiBVbnN0YWJsZSBhbmQK
YW5vdGhlciA5JSBmcm9tIERlYmlhbiBFeHBlcmltZW50YWwgZm9yIHNldmVyYWwgbW9udGhzIG5v
dyB3aXRob3V0CnN1ZmZlcmluZyBhbnkgYnJlYWthZ2VzIHRoYXQgd291bGQgaGF2ZSBtZSBzd2l0
Y2hpbmcgYmFjayB0byBUZXN0aW5nCnVudGlsIHRoZSBpc3N1ZSBpcyByZXNvbHZlZCBhbmQgcHVt
b3VudCB3YXMgdGhlIG9ubHkgcGFja2FnZSBJIHJlY2FsbApkb3duZ3JhZGluZyB0byB1bnN0YWJs
ZSBhZnRlciB0cnlpbmcgdGhlIGV4cGVyaW1lbnRhbCB2ZXJzaW9uLgoKVGhhdCBzYWlkLCBJJ20g
bm90IHN1cmUgSSBjYW4gcmVjb21tZW5kIERlYmlhbiB0byBhIExpbnV4IGJlZ2lubmVyLAptdWNo
IGxlc3MgYSBibGluZCBsaW51eCBiZWdpbm5lciwgYnV0IHRoZW4gYWdhaW4sIEknbSBub3Qgc3Vy
ZSB3aGF0IHRvCnJlY29tbWVuZCB0byBhIGJlZ2lubmVyIHBlcmlvZCBhcyBJJ3ZlIGJlZW4gdXNp
bmcgTGludXggYXMgbXkgbWFpbiBPUwpmb3IgbW9yZSB0aGFuIDE1IHllYXJzLCBYUCB3YXMgdGhl
IGxhc3QgdmVyc2lvbiBvZiBXaW5kb3dzIEkgdXNlZCB3aXRoCmFueSByZWd1bGFyaXR5IGFuZCBz
byBJIGZlZWwgbGlrZSBJJ20gdG9vIGRlZXAgaW4gdGhlIG1ldGFwaG9yaWNhbApLb29sLUFpZCB0
byBqdWRnZSBhbnkgTGludXggZGlzdHJvIGZyb20gYSBiZWdpbm5lcidzIHBlcnNwZWN0aXZlIGFu
ZAp0b28gb3V0IG9mIHRvdWNoIHdpdGggdGhlIHdvcmxkIHRoZSBtYWpvcml0eSBvZiBMaW51eCBi
ZWdpbm5lcnMgYXJlCmNvbWluZyBmcm9tLi4uIEl0J3Mga2luZCBvZiBsaWtlIHNvbWVvbmUgd2hv
J3MgYmVlbiBzcGVha2luZyBKYXBhbmVzZQpkYWlseSBmb3IgMTUgeWVhcnMgdHJ5aW5nIHRvIHRl
YWNoIEphcGFuZXNlIHRvIGEgbW9kZXJuIGRheSBhbWVyaWNhbgp3aGVuIHRoZXkga25vdyBub3Ro
aW5nIG9mIGxhbmd1YWdlIHRlYWNoaW5nIGFuZCB0aGUgb25seSBFbmdsaXNoIHRoZXkKa25vdyBp
cyB0aGF0IHVzZWQgYnkgU2hha2VzcGVhcmUuCgpPbiAxMS8xOC8yMSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gSSBs
aWtlZCBtaW50LiBJIHdpc2ggdGhleSBtYWtlIGl0IHBvc3NpYmxlIHRvIGluc3RhbGwgb24gYW4g
ZXh0ZXJuYWwgbWVkaWEKPiBsaWtlIGEgVVNCIGRpc2sgb3IgYW4gU0QgY2FyZC4KPiBDaGVlcnMs
Cj4gSWJyYWhpbQo+Cj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Cj4+IE9uIE5vdiAxOCwgMjAyMSwg
YXQgNDo1MCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+PiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IO+7v0hpLAo+PiBXaGF0IGRvIHlvdSB0aGlu
ayBvZiBMaW51eCBNaW50IDIwLjI/Cj4+IElzIGl0IGJldHRlciB0aGVuIENvY29udXQ/Cj4+IEkg
ZG93bmxvYWRlZCB0aGUgTWF0ZSBJU08gZnJvbQo+PiBodHRwczovL2xpbnV4bWludC5jb20KPj4g
SSBpbnN0YWxsZWQgaXQgaW4gYSBWTSwgQnV0Cj4+IEkgaGF2ZSBub3QgaGFkIHRpbWUgdG8gcmVh
bGx5IGNoZWNrIGl0IG91dC4KPj4gVGhhbmtzLAo+PiBSb2IKPj4KPj4KPj4+IE9uIE5vdiAxNiwg
MjAyMSwgYXQgMTE6NTcgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPj4+
IDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Cj4+PiBoZWxsbyBJIGhhdmUgb25l
IG1vcmUgcXVlc3Rpb24sIEkgdGhpbmsuIFdoZXJlIGRvIEkgZG93bmxvYWQgdGhpcwo+Pj4gZGlz
dHJpYnV0aW9uIGZyb20/IEFuZCBpbiBnZW5lcmFsIGFib3V0IGhvdyBtdWNoIGRpc2sgc3BhY2Ug
ZG9lcyBpdCB0YWtlPwo+Pj4gSXMgaXQgc29tZXRoaW5nIHRoYXQgY2FuIGJlIGluc3RhbGxlZCBh
bmQgd2lsbCB2aXJ0dWFsIG1hY2hpbmUgb3IgaXMgaXQgYQo+Pj4gbGl2ZSBkaXN0cmlidXRpb24u
IEkgY2FuIHByb2JhYmx5IHZpbnlsIHRoaXMgb3V0IGJ5IGdvaW5nIHRvIHRoZSBVUkwgaWYKPj4+
IHNvbWVvbmUgd291bGQgbGlrZSB0byBzaGFyZSB0aGF0IGxpbms/IFRoYW5rcyBpbiBhZHZhbmNl
Lgo+Pj4KPj4+Cj4+PiBEaXNjbGFpbWVyIHRpbWUsIGp1c3QgYmUgYXdhcmUgdGhhdCB0aGUgYWJv
dmUgaGFzIGJlZW4gZGljdGF0ZWQgdG8gdGhlCj4+PiBtYWNoaW5lIGJ5IG1lYW5zIG9mIFdpbmRv
d3MtYmFzZWQgZGljdGF0aW9uIHNvZnR3YXJlLiBJZiB0aGVyZSdzCj4+PiBzb21ldGhpbmcgdGhh
dCB5b3UgZG9uJ3QgdW5kZXJzdGFuZCB0aGF0IGhhcyBiZWVuIHdyaXR0ZW4gYWJvdmUsIHBsZWFz
ZQo+Pj4gcmVhY2ggb3V0IHRvIG1lIGFuZCBhc2tlZCBtZSB3aGF0IG15IG9yaWdpbmFsIGludGVu
dCBtYXkgaGF2ZSBiZWVuLiBUaGFuawo+Pj4geW91IHZlcnkgbXVjaCBmb3IgcmVhZGluZyB0aGlz
Lgo+Pj4KPj4+PiBPbiAxMS8xNi8yMDIxIDU6NTEgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gSGksCj4+Pj4KPj4+PiBJIGhhdmUgYmVlbiB1c2luZyBB
Y2Nlc3NpYmxlIENvY29udXQgZm9yIGFib3V0IGEgbW9udGguCj4+Pj4KPj4+PiBPcmNhIGNhbiBz
dGFydCBhdCBib290Lgo+Pj4+Cj4+Pj4gVGhhbmtzLAo+Pj4+Cj4+Pj4gUm9iCj4+Pj4KPj4+Pgo+
Pj4+IE9uIDExLzE2LzIxIDg6NDYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+Pj4+ICAgIEdvb2QgYWZ0ZXJub29uIG9yIGdvb2QgZXZlbmluZyBvciB3aGF0
ZXZlciB0aW1lIGl0IGlzIHdoZXJldmVyIHlvdQo+Pj4+PiBhcmUgcmVhZGluZyB0aGlzLiBNeSBz
dWJqZWN0IGxpbmUgcHJldHR5IG11Y2ggc2F5cyBldmVyeXRoaW5nIHRoZXJlIGlzCj4+Pj4+IHRv
IHRoaXMgbWVzc2FnZS4gSSBhbSBsb29raW5nIGZvciBpbmFwcHJvcHJpYXRlIExlbm5peCBkaXN0
cmlidXRpb24gdG8KPj4+Pj4gcnVuIGluIGEgdmlydHVhbCBlbnZpcm9ubWVudC4gRnJvbSBldmVy
eXRoaW5nIEkgdGhpbmsgSSBrbm93LCBJJ20KPj4+Pj4gdGhpbmtpbmcgdGhlIGJlc3Qgc29sdXRp
b24gaXMgc29tZXRoaW5nIHRoYXQgY2FuIGJlIGluc3RhbGxlZCBlYXNpbHksCj4+Pj4+IGFuZCBh
bGxvdyBtZSB0byBpbnN0YWxsIG9yY2EgcmVhbGx5IHF1aWNrbHkgaWYgbm90IGRvIGl0IGluIHRo
ZSBzYW1lCj4+Pj4+IGluc3RhbGwuIEFueSBnb29kIHN1Z2dlc3Rpb25zPyBJIGRvIGhhdmUgYWNj
ZXNzIHRvIGEgRmVkb3JhIGNvcmUgSVNPCj4+Pj4+IGltYWdlIGJ1dCBJJ20ganVzdCB3b25kZXJp
bmcgaWYgdGhlcmUncyBzb21ldGhpbmcgYmV0dGVyIG9yIHdpbGwgdGhpcwo+Pj4+PiBiZSBzdWZm
aWNpZW50PyBMb29raW5nIGZvcndhcmQgdG8gcmVhZGlnIHJlc3BvbnNlIHdha2UgdXAgdG8gbXkK
Pj4+Pj4gcXVlc3Rpb24uCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFBsZWFzZSBiZSBhd2FyZSB0aGF0IEkg
YW0gZGljdGF0aW5nIHRoaXMgdG8gdGhlIGNvbXB1dGVyIGFuZCBXaW5kb3dzLiBJCj4+Pj4+IGFt
IHVzaW5nIGRpY3RhdGlvbiBzb2Z0d2FyZSBiZWNhdXNlIG9mIGFuIGFkZGl0aW9uYWwgZGlzYWJp
bGl0eS4gSWYKPj4+Pj4gdGhlcmUncyBzb21ldGhpbmcgdGhhdCBJJ3ZlIHdyaXR0ZW4gYWJvdXQg
dGhhdCB5b3UgdHJ1bHkgZG8gbm90Cj4+Pj4+IHVuZGVyc3RhbmQsIHBsZWFzZSB3cml0ZSBtZSBh
bmQgYXNrZWQgbWUgd2hhdCBJIG1heSBoYXZlIG1lYW50LiBJIHRoYW5rCj4+Pj4+IHlvdSBraW5k
bHkgaW4gYWR2YW5jZSBmb3IgcmVhZGluZyB0aGlzLgo+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBP
biAxMS8xNi8yMDIxIDM6MDYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+Pj4+PiBUaGFuayB5b3UgRGlkaWVyLWFuZC1LeWxlLiBJIHdpbGwgY2VydGFpbmx5
IHJ1biB5b3VyIGNvbW1hbmQsIGJ1dCBkbyBJCj4+Pj4+PiBuZWVkIHRvIHVuIG1vdW50IGFueXRo
aW5nPyBJIHdvdWxkIGFsc28gZmlndXJlIEkgd291bGQgYmUgc2l0dGluZwo+Pj4+Pj4gb3V0c2lk
ZSBvZiB0aGF0IG1kZWlhIGRpcmVjdG9yeT8gTy1hbmQteWVzLCBEaWRpZXIsIGl0IGlzIHZmYXQu
Cj4+Pj4+PiBDaGltZQo+Pj4+Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4+
Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Pgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

